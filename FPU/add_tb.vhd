library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity add_tb is
end add_tb;

architecture behavior of add_tb is
	signal a_tb : float := ('0', (others => '0'), (others => '0'));
	signal b_tb : float := ('0', (others => '0'), (others => '0'));
	signal c_tb : float;

	signal result : string_bin;
begin
   process
   begin
		-- Test Case 1: a = -2.5 = (-10.1)2, b = 3.0 = (11.0)2
		-- c = 0.5 = (0.1)2
      a_tb <= ('1', std_logic_vector(to_unsigned(Bias + 1, E)), ('0', '1', others => '0'));
      b_tb <= ('0', std_logic_vector(to_unsigned(Bias + 1, E)), ('1', '0', others => '0'));
		wait for 10 ns;
		c_tb <= float_sum(a_tb, b_tb);
		wait for 10 ns;
		result <= float_to_str_bin(c_tb);
		wait for 20 ns;
		-- Test Case 2: a = -1.0 = (-1)2, b = 1.0 = (1.0)2
		-- c = 0.0
		a_tb <= ('1', std_logic_vector(to_unsigned(Bias + 1, E)), (others => '0'));
		b_tb <= ('0', std_logic_vector(to_unsigned(Bias + 1, E)), (others => '0'));
		wait for 10 ns;
		c_tb <= float_sum(a_tb, b_tb);
		wait for 10 ns;
		result <= float_to_str_bin(c_tb);
		wait for 20 ns;
		-- Test Case 3: a = 12 = (1100.0)2, b = 12 = (1100.0)2
		-- c = 0.5 = (0.1)2
		a_tb <= str_bin_to_float("+1.10000000000000000000000e+00000011");
		wait for 10 ns;
		b_tb <= a_tb;
		wait for 10 ns;
		c_tb <= float_sum(a_tb, b_tb);
		wait for 10 ns;
		result <= float_to_str_bin(c_tb);
		-- Test Case 4:
		a_tb <= str_bin_to_float("+1.00000000000000000000001e+00000011");
		wait for 10 ns;
		b_tb <= str_bin_to_float("-1.00000000000000000000000e+00000011");
		wait for 10 ns;
		c_tb <= float_sum(a_tb, b_tb);	-- 1.00000000000000000000001e+00000011
		wait for 10 ns;
		result <= float_to_str_bin(c_tb);
		wait for 20 ns;
		wait;
    end process;
end behavior;
