library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity Float_and_str_tb is
end Float_and_str_tb;

architecture behavior of Float_and_str_tb is
   signal fio_x : float;
	signal fio_y : string_dec;
	 
begin
   process 
	begin
		fio_x <= str_to_float("+00000.00000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("+00001.75000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("+00000.75000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("+00000.68000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("+00020.00000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("+00010.68000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("-00128.50000");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		
		fio_x <= str_to_float("-00006.14159");
		wait for 10 ns;
		fio_y <= float_to_str(fio_x);
		wait for 10 ns;
		wait;
	end process;
end behavior;
