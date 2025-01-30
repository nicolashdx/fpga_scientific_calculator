library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity sin_cos_tb is
end sin_cos_tb;

architecture behavior of sin_cos_tb is
	component test is
	port(
		x_0, y_0, z_0 : in float;
		j : in integer range 1 to max_interacao;
		sigma_0 : in std_logic;
		
		x, y, z : out float;
		sigma : out std_logic
	);
	end component;
	
	signal fio_x_0, fio_y_0, fio_z_0 : float;
	signal fio_x, fio_y, fio_z : float := float_zero;
	signal fio_j : integer range 0 to max_interacao-1;
	signal fio_sigma_0 : std_logic;
	signal fio_sigma : std_logic;
	
	signal aux_x, aux_y, aux_z : float;
	signal aux_sigma : std_logic;
begin
	utt : test port map(
		x_0 => fio_x_0, 
		y_0 => fio_y_0, 
		z_0 => fio_z_0,
		j => fio_j,
		sigma_0 => fio_sigma_0,
		x => fio_x, 
		y => fio_y, 
		z => fio_z,
		sigma => fio_sigma
	);
	
	process
	begin
		aux_x <= float_K;
		aux_y <= float_zero;
		aux_z <= str_to_float("+00011.75000");
		aux_sigma <= '0';
		wait for 10 ns;
		
		for i in 0 to max_interacao-1 loop
			fio_j <= i;
			fio_x_0 <= aux_x;
			fio_y_0 <= aux_y;
			fio_z_0 <= aux_z;
			fio_sigma_0 <= aux_sigma;
			wait for 10 ns;
			
			aux_x <= fio_x;
			aux_y <= fio_y;
			aux_z <= fio_z;
			aux_sigma <= fio_z.Sign_bit;
			wait for 10 ns;
		end loop;
		wait for 10 ns;
		wait;
	end process;

end behavior;
