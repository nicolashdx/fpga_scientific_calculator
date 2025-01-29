LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package FloatPoint_package is
	constant E : integer := 8;		-- Exponent Bits 
	constant Bias : integer := 127;	--	Exponent Bias
	constant M : integer := 23;		-- Significand bits
	
	type Operation is (Sum, Sub, Mul, Div, Cos, Sin, Sqrt, Log, Zero);
	
	type float is record
		Sign_bit : std_logic;
		Exponent : std_logic_vector(E-1 downto 0);
		Mantissa : std_logic_vector(M-1 downto 0);
	end record float; 

	function float_product (
		a : in float; 
		b : in float)
		return float;
		
	function float_sum (
		a : in float; 
		b : in float)
		return float;
	
	function float_sub (
		a : in float; 
		b : in float)
		return float;
	
	function float_srl (
		a : in float; 
		n : in integer)
		return float;
	
	constant float_ones : float := ('0', "01111111", (others => '0'));
	constant float_zero : float := ('0', (others => '0'), (others => '0'));
	
	constant max_interacao : integer := 40;
	type float_table is array(0 to max_interacao-1) of std_logic_vector(E + M downto 0);
	
	constant float_K : float := ('0', "01111110", "00110110111010011101101");
	
	constant atan_table : float_table := (
		"01000010001101000000000000000000",
		"01000001110101001000010100111001",
		"01000001011000001001010001110100",
		"01000000111001000000000000100010",
		"01000000011001001110001010101001",
		"00111111111001010001101111001010",
		"00111111011001010010101000011010",
		"00111110111001010010110110101111",
		"00111110011001010010111010010100",
		"00111101111001010010111011001101",
		"00111101011001010010111011011100",
		"00111100111001010010111011011111",
		"00111100011001010010111011100000",
		"00111011111001010010111011100000",
		"00111011011001010010111011100000",
		"00111010111001010010111011100000",
		"00111010011001010010111011100000",
		"00111001111001010010111011100000",
		"00111001011001010010111011100000",
		"00111000111001010010111011100000",
		"00111000011001010010111011100000",
		"00110111111001010010111011100000",
		"00110111011001010010111011100000",
		"00110110111001010010111011100000",
		"00110110011001010010111011100000",
		"00110101111001010010111011100000",
		"00110101011001010010111011100000",
		"00110100111001010010111011100000",
		"00110100011001010010111011100000",
		"00110011111001010010111011100000",
		"00110011011001010010111011100000",
		"00110010111001010010111011100000",
		"00110010011001010010111011100000",
		"00110001111001010010111011100000",
		"00110001011001010010111011100000",
		"00110000111001010010111011100000",
		"00110000011001010010111011100000",
		"00101111111001010010111011100000",
		"00101111011001010010111011100000",
		"00101110111001010010111011100000"
	);
	
	procedure p_CORCDIC_SIN_COS (
		signal x_0 : in float;
		signal y_0 : in float; 
		signal z_0 : in float;
		signal j : in integer range 0 to max_interacao-1;
		signal sigma_0 : in std_logic;
		
		signal x : out float;
		signal y : out float; 
		signal z : out float;
		signal sigma : out std_logic
	);
	
end package FloatPoint_package;

package body FloatPoint_package is
	function float_product (
		a : in float; b : in float
		)
		return float is
		
		variable Result_mantissa : std_logic_vector(M+1 downto 0);
		variable intermediate_result : std_logic_vector(2*M+1 downto 0);
		variable c : float;
	begin
 
		c.Sign_bit := (a.Sign_bit) xor (b.Sign_bit);
		
		intermediate_result := std_logic_vector((unsigned('1' & a.Mantissa)) * (unsigned('1' & b.Mantissa)));

		Result_mantissa := intermediate_result(2*M+1 downto M);
		
		if Result_mantissa(M + 1) = '1' then
        c.Mantissa := Result_mantissa(M downto 1);
        c.Exponent := std_logic_vector(unsigned(a.Exponent) + unsigned(b.Exponent) - Bias - 1);
		else
        c.Mantissa := Result_mantissa(M-1 downto 0);
        c.Exponent := std_logic_vector(unsigned(a.Exponent) + unsigned(b.Exponent) - Bias);
    end if;
		
		return c;
	end;
	
	function float_sum (
		a : in float; b : in float
		)
		return float is
	
		variable c : float;
		variable aligned_mantissa_a, aligned_mantissa_b : std_logic_vector(M+1 downto 0);
		variable aux : std_logic_vector(M+1 downto 0);
		variable result_mantissa : std_logic_vector(M+1 downto 0);
		variable pos_one : integer := M + 2;
		variable exp_diff : integer;
	begin
		-- Align exponents by shifting mantissas
		if unsigned(a.Exponent) > unsigned(b.Exponent) then
			exp_diff := to_integer(unsigned(a.Exponent)) - to_integer(unsigned(b.Exponent));
			aux := '0' & '1' & b.Mantissa;
			aligned_mantissa_a := '0' & '1' & a.Mantissa;
			aligned_mantissa_b := std_logic_vector(unsigned(aux) srl exp_diff);
			c.Exponent := a.Exponent;
		else
			exp_diff := to_integer(unsigned(b.Exponent)) - to_integer(unsigned(a.Exponent));
			aux := '0' & '1' & a.Mantissa;
			aligned_mantissa_a := std_logic_vector(unsigned(aux) srl exp_diff);
			aligned_mantissa_b := '0' & '1' & b.Mantissa;
			c.Exponent := b.Exponent;
		end if;

		-- Add or subtract mantissas based on signs
		if a.Sign_bit = b.Sign_bit then
			result_mantissa := std_logic_vector(unsigned(aligned_mantissa_a) + unsigned(aligned_mantissa_b));
			c.Sign_bit := a.Sign_bit;
		else
			if unsigned(aligned_mantissa_a) > unsigned(aligned_mantissa_b) then
				result_mantissa := std_logic_vector(unsigned(aligned_mantissa_a) - unsigned(aligned_mantissa_b));
				c.Sign_bit := a.Sign_bit;
			else
				result_mantissa := std_logic_vector(unsigned(aligned_mantissa_b) - unsigned(aligned_mantissa_a));
				c.Sign_bit := b.Sign_bit;
			end if;
		end if;

		-- Normalize result mantissa
		for i in M+1 downto 0 loop
			if result_mantissa(i) = '1' then
				pos_one := i;
				exit;
			end if;
		end loop;

		if pos_one = (M + 2) then	--Result equals zero
			c.Mantissa := (others => '0');
			c.Exponent := (others => '0');
		elsif pos_one = (M + 1) then -- bigger than a and b
			c.Mantissa(M-1 downto 0) := result_mantissa(M downto 1);
			c.Exponent := std_logic_vector(to_unsigned(to_integer(unsigned(c.Exponent)) + 1, E));
		elsif pos_one = 0 then		--Mantissa zero
			c.Mantissa := (others => '0');
			c.Exponent := std_logic_vector(unsigned(c.Exponent) - M);
		else
			c.Mantissa := (others => '0');
			c.Mantissa(M-1 downto (M-pos_one)) := result_mantissa(pos_one-1 downto 0);
			c.Exponent := std_logic_vector(to_unsigned(to_integer(unsigned(c.Exponent)) + pos_one - M, E));
		end if;
		
		return c;
	end;
	
	function float_sub (
		a : in float; 
		b : in float)
		return float is
		
		variable aux : float;
	begin
		aux.Sign_bit := not b.Sign_bit;
		aux.Exponent := b.Exponent;
		aux.Mantissa := b.Mantissa;
		
		return float_sum(a, aux);
	end;
	
	function float_srl (
		a : in float; 
		n : in integer)
		return float is
		
		variable result : float := float_zero;
	begin
		result.Sign_bit := a.Sign_bit;
		
		if to_integer(unsigned(a.Exponent)) + n < 0 then
			result.Exponent := (others => '0');
			result.Mantissa := (others => '0');
		elsif to_integer(unsigned(a.Exponent)) + n > 2*(Bias + 1) then
			result.Exponent := (others => '1');
			result.Mantissa := (others => '1');
		else
			result.Exponent := std_logic_vector(to_unsigned(to_integer(unsigned(a.Exponent)) + n, E));
			result.Mantissa := a.Mantissa;
		end if;
		
		return result;
	end;
	
	procedure p_CORCDIC_SIN_COS (
		signal x_0 : in float; 
		signal y_0 : in float; 
		signal z_0 : in float;
		signal j : in integer range 0 to max_interacao-1;
		signal sigma_0 : in std_logic;
		
		signal x : out float;
		signal y : out float; 
		signal z : out float;
		signal sigma : out std_logic
		) is
		
		variable atan_bin : std_logic_vector(E+M downto 0);
		variable atan_value : float;
		variable z_out : float;
	begin
		atan_bin := atan_table(j);
			
		atan_value.Sign_bit := atan_bin(E+M);
		atan_value.Exponent := atan_bin(E+M-1 downto M);
		atan_value.Mantissa := atan_bin(M-1 downto 0);
	
		if sigma_0 = '0' then
			x <= float_sub(x_0, float_srl(y_0, -j));
			y <= float_sum(y_0, float_srl(x_0, -j));
			z_out := float_sub(z_0, atan_value);
		else
			x <= float_sum(x_0, float_srl(y_0, -j));
			y <= float_sub(y_0, float_srl(x_0, -j));
			z_out := float_sum(z_0, atan_value);
		end if;
		
		sigma <= z_out.Sign_bit;
		z <= z_out;
	end procedure p_CORCDIC_SIN_COS;
end package body FloatPoint_package;
