LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

library work;
use work.FloatPoint_package.all;

package FP_convert_pkg is
	constant len_bin : integer := 5 + E + M;       -- String Size
	subtype string_bin is string(1 to len_bin);
	
	-- Parte inteira: 1, parte fracionaria: 5, parte exponencial: 2
	constant len_dec : integer := 12;       -- String Size
	subtype string_dec is string(1 to len_bin);
	
	-- Converte um float para uma string(Sinal & '1.' & Mantissae & Expoente)
	function float_to_str_bin (
		a : in float)
		return string_bin;
		
	-- Converte uma string(Sinal & '1.' & Mantissae & Expoente) para um float
	function str_bin_to_float (
		a : in string_bin)
		return float;
	
	function str_to_float(
		a :in string_dec)
		return float;
end package FP_convert_pkg;

package body FP_convert_pkg is
	function float_to_str_bin (
		a : in float)
		return string_bin is
		
		variable result : string_bin := (others => ' ');
		variable sign : string(1 to 1);
		variable exponent : string(1 to E);
		variable mantissa : string(1 to M);
		
		variable sign_exp : string(1 to 1);
		variable value_exp : integer;
		variable vector_exp : std_logic_vector(E-1 downto 0); 
	begin
		-- Convert the sign bit to string
		if a.Sign_bit = '1' then
			sign := "-";
		else
			sign := "+";
		end if;
		
		-- Convert the mantissa to string (binary representation)
		for i in 1 to M loop
			if a.Mantissa(M - i) = '0' then
				mantissa(i) := '0';
			else
				mantissa(i) := '1';
			end if;
		end loop;
		
		-- Converte a exponente para string (binary representation)
		value_exp := to_integer(unsigned(a.Exponent)) - 127;
		
		if value_exp > 127 then
			sign_exp := "+";
			value_exp := value_exp;
		else
			sign_exp := "-";
			value_exp := -value_exp;
		end if;
		
		vector_exp := std_logic_vector(to_unsigned(value_exp, E));
		
		for i in 1 to E loop
			if vector_exp(E - i) = '0' then
				exponent(i) := '0';
			else
				exponent(i) := '1';
			end if;
		end loop;
		
		-- Concatenate sign, exponent, and mantissa
		result := sign & "1." & mantissa & "e" & sign_exp & exponent;
		return result;
	end;

	function str_bin_to_float (
		a : in string_bin)
		return float is
		
		variable result : float;
		variable exponent_value : std_logic_vector(E-1 downto 0);
		variable exponent_result : integer;
		variable mantissa_bin : std_logic_vector(M-1 downto 0);
		variable exponent_str : string(1 to E); 
		variable mantissa_str : string(1 to M);
		variable aux : integer;
		
		constant e_pos : integer := 4 + M; 
		constant dot_pos : integer := 3;
	begin
		-- Extract and convert the sign of float
		if a(1) = '-' then
			result.Sign_bit := '1';
		else
			result.Sign_bit := '0';
		end if;

		-- Extract and convert the exponent
		exponent_str := a(e_pos+2 to len_bin);
		
		for i in E downto 1 loop
			if exponent_str(i) = '1' then
				exponent_value(E - i) := '1';
			else
				exponent_value(E - i) := '0';
			end if;
		end loop;
		
		if a(e_pos + 1) = '-' then
			exponent_result := Bias - to_integer(unsigned(exponent_value));
		else
			exponent_result := Bias + to_integer(unsigned(exponent_value));
		end if;
		
		result.Exponent := std_logic_vector(to_unsigned(exponent_result, E));

		-- Extract and convert the mantissa
		mantissa_str := a(dot_pos + 1 to e_pos - 1);

		for i in M downto 1 loop
			if mantissa_str(i) = '1' then
				mantissa_bin(M - i) := '1';
			else
				mantissa_bin(M - i) := '0';
			end if;
		end loop;
		
		result.Mantissa := mantissa_bin;

		return result;
	end;
	
	function str_to_float(
		a : in string_dec)
		return float is

		variable result : float := float_zero;
		
		variable parte_int : std_logic_vector(3 downto 0) := (others => '0');
		variable parte_frac : std_logic_vector(M-4 downto 0) := (others => '0');
		
		constant max_frac : integer := 100000;
		variable parte_frac_dec : integer := 0;
	begin
		-- Bit de sinal
		if a(1) = '+' then
			result.Sign_bit := '0';
		else
			result.Sign_bit := '1';
		end if;
		
		-- Calculo da parte inteira
		parte_int := std_logic_vector(to_unsigned(character'pos(a(2)), 4));

		-- Calculo da parte fracionaria
		for i in 4 to 8 loop
			parte_frac_dec := parte_frac_dec + character'pos(a(i));
			parte_frac_dec := parte_frac_dec*10;
		end loop;

		for i in M-4 downto 0 loop
			parte_frac_dec := parte_frac_dec * 2;

			if parte_frac_dec < max_frac then 
				parte_frac(i) := '0';
			else 
				parte_frac(i) := '1';
				parte_frac_dec := parte_frac_dec - max_frac;
			end if;
		end loop;
		
		result.Exponent(3 downto 0) := parte_int;
		result.Mantissa(M-4 downto 0) := parte_frac;
		
		return result;
	end;
end package body FP_convert_pkg;