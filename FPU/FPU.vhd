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
	type estados is (waiting, execution, finishing);
	
	signal estado_atual : estados := waiting;
	signal estado_proxi : estados := waiting;
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
		variable count : integer range 0 to max_interacao-1 := 0;
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
				elsif op = Cos or op = Sin then
					if count = 0 then
						
					elsif count = max_interacao-1 then
					else
					end if;
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
