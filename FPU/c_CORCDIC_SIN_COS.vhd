library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity c_CORCDIC_SIN_COS is 
	port(
		x_0 : in float;
		y_0 : in float; 
		z_0 : in float;
		j : in integer range 0 to max_interacao-1;
		sigma_0 : in std_logic;

		x : out float;
		y : out float; 
		z : out float;
		sigma : out std_logic
	);
end entity;

architecture behavior of c_CORCDIC_SIN_COS is
begin
	process(x_0, y_0, z_0, j, sigma_0)
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
	end process;
end behavior;