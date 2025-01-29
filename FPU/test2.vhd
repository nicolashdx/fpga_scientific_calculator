library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

Entity test2 is
	port(
		s : in string_dec;
		x : out float
	);
end test2;


architecture rtl of test2 is
begin
	x <= str_to_float(s);
end rtl;