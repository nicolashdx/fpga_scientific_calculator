LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;

package FP_convert_pkg is
	-- Parte inteira: 1, parte fracionaria: 5, parte exponencial: 2
	constant len_dec : integer := 12;       -- String Size
	subtype string_dec is string(1 to len_dec);
	
	function str_to_float(
		a :in string_dec)
		return float;
	
	function float_to_str(
		a :in float)
		return string_dec;
end package FP_convert_pkg;

package body FP_convert_pkg is
	function str_to_float(
		a : in string_dec)
		return float is

		variable result : float := float_zero;
		
		variable parte_int : std_logic_vector(16 downto 0) := (others => '0');
		variable parte_frac : std_logic_vector(M-1 downto 0) := (others => '0');
		variable parte_significante : std_logic_vector(M+16 downto 0) := (others => '0');
		variable decimal_place : integer := M+17;
		
		constant max_frac : integer := 100000;
		variable parte_frac_dec : integer := 0;
		variable parte_int_dec : integer := 0;
	begin
		-- Bit de sinal
		if a(1) = '+' then
			result.Sign_bit := '0';
		else
			result.Sign_bit := '1';
		end if;
		
		-- Calculo da parte inteira
		for i in 2 to 6 loop
			parte_int_dec := parte_int_dec * 10;
			parte_int_dec := parte_int_dec + to_integer(to_unsigned(character'pos(a(i)) - character'pos('0'), 4));
		end loop;
		
		parte_int := std_logic_vector(to_unsigned(parte_int_dec, 17));
		
		-- Calculo da parte fracionaria
		for i in 8 to 12 loop
			parte_frac_dec := parte_frac_dec * 10;
			parte_frac_dec := parte_frac_dec + to_integer(to_unsigned(character'pos(a(i)) - character'pos('0'), 4));
		end loop;

		for i in M-1 downto 0 loop
			parte_frac_dec := parte_frac_dec * 2;

			if parte_frac_dec < max_frac then 
				parte_frac(i) := '0';
			else 
				parte_frac(i) := '1';
				parte_frac_dec := parte_frac_dec - max_frac;
			end if;
		end loop;
		
		parte_significante := parte_int & parte_frac;
		
		for i in M+16 downto 0 loop
			if parte_significante(i) = '1' then
				decimal_place := i;
				exit;
			end if;
		end loop;
		
		if decimal_place = 0 then
			result.Mantissa := (others => '0');
			result.Exponent := std_logic_vector(to_unsigned(Bias - M, E));
		elsif decimal_place = M + 17 then
			result.Mantissa := (others => '0');
			result.Exponent := (others => '0');
		else
			result.Mantissa := (others => '0');
			
			for j in 0 to M+16 loop
				if (M+j > decimal_place-1) and  (j < decimal_place) then
					result.Mantissa(M - decimal_place + j) := parte_significante(j);
				end if;
			end loop;
			
			result.Exponent := std_logic_vector(to_unsigned(decimal_place - M + BIas, E));
		end if;
		
		return result;
	end;
	
	function float_to_str(
		a : in float)
		return string_dec is

		variable result : string_dec := (others => 'x');
		
		variable parte_significante : std_logic_vector(M downto 0) := (others => '0');
		variable parte_Expoente : integer := 0;
		
		variable parte_I : std_logic_vector(M-1 downto 0) := (others => '0');
		variable parte_F : std_logic_vector(M-1 downto 0) := (others => '0');
		
		variable temp_vector : std_logic_vector(M downto 0) := (others => '0');
		variable number_frac : integer range 0 to 100000;
		variable temp : integer := 0;
		
	begin
		-- Bit de sinal
		if a.Sign_bit = '0' then
			result(1) := '+';
		else
			result(1) := '-';
		end if;
		
		-- Parte Significativa
		parte_significante := '1' & a.Mantissa;
		parte_Expoente := to_integer(unsigned(a.Exponent)) - Bias;
		
		
		temp_vector := std_logic_vector(shift_left(unsigned(parte_significante), parte_Expoente));
		parte_F := temp_vector(M-1 downto 0);
		
		temp_vector := std_logic_vector(shift_right(unsigned(parte_significante), M-parte_Expoente));
		parte_I := temp_vector(M-1 downto 0);
		
		-- Convertendo a parte inteira para string
		temp := to_integer(unsigned(parte_I));
		
		for i in 6 downto 2 loop
			result(i) := character'val((temp mod 10) + 48);
			temp := temp/10;
		end loop;
		
		-- Convertendo a parte fracionaria para string
		result(7) := '.';
		
		number_frac := 100000;
		temp := 0;
		
		for i in M-1 downto 0 loop
			number_frac := to_integer(shift_right(to_unsigned(number_frac, 17), 1));
		
			if parte_F(i) = '1' then
				temp := temp + number_frac;
			end if;
		end loop;
		
		for i in 12 downto 8 loop
			result(i) := character'val((temp mod 10) + 48);
			temp := temp/10;
		end loop;
		
		return result;
	end;
end package body FP_convert_pkg;