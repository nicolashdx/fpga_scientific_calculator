library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity FPU is
	port(
		clock : in std_logic;
		reset : in std_logic;
		init : in std_logic;
		op : in Operation;
		a : in float;
		b : in float;
		
		result : out float;
		finished : out std_logic
	);
end FPU;

architecture behavior of FPU is
	component c_CORCDIC_SIN_COS is
	port(
		x_0, y_0, z_0 : in float;
		j : in integer range 0 to max_interacao-1;
		sigma_0 : in std_logic;
		
		x, y, z : out float;
		sigma : out std_logic
	);
	end component;
	
	
	type estados is (waiting, execution, finishing);
	signal estado_atual, estado_proxi : estados := waiting;
	
	signal count : integer := 0;
begin
	process(clock, reset)
	begin
		if reset = '0' then
			estado_atual <= waiting;
		elsif rising_edge(clock) then
			estado_atual <= estado_proxi;
		end if;
	end process;
	
	process(estado_atual, estado_proxi, op, init, a, b)
	begin
		case estado_atual is
			When execution =>
				finished <= '0';

				if op = Sum then
					result <= float_sum(a, b);
					estado_proxi <= finishing;
				elsif op = Sub then
					result <= float_sub(a, b);
					estado_proxi <= finishing;
				elsif op = Mul then
					result <= float_product(a, b);
					estado_proxi <= finishing;
				elsif op = cos or op = sin then
					if count = 0 then
						count <= count + 1;
					elsif count = max_interacao-1 then
						count <= 0;
						estado_proxi <= finishing;
					else
						count <= count + 1;
					end if;
					
--					aux_x <= float_K;
--					aux_y <= float_zero;
--					aux_z <= str_to_float("+00011.75000");
--					aux_sigma <= '0';
--					wait for 10 ns;
--					
--					fio_j <= count;
--					fio_x_0 <= aux_x;
--					fio_y_0 <= aux_y;
--					fio_z_0 <= aux_z;
--					fio_sigma_0 <= aux_sigma;
--					wait for 10 ns;
--					
--					aux_x <= fio_x;
--					aux_y <= fio_y;
--					aux_z <= fio_z;
--					aux_sigma <= fio_z.Sign_bit;
--					wait for 10 ns;
--					wait for 10 ns;
--					wait;																								
				else
					result <= float_zero;
					estado_proxi <= finishing;
				end if;
			When finishing =>
				finished <= '1';
				estado_proxi <= waiting;

			When others => -- Waiting
				finished <= '0';

				if init = '1' then
					estado_proxi <= execution;
				else
					estado_proxi <= waiting;
				end if;

		end case;
	 end process;
end behavior;
