library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

Entity test2 is
	port(
		s : out string_dec;
		x : in float
	);
end test2;


architecture rtl of test2 is
begin
	s <= float_to_str(x);
end rtl;