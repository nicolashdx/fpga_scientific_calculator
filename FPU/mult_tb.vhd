library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;

entity mult_tb is
end mult_tb;

architecture behavior of mult_tb is
    signal a_tb : float := float_zero;
    signal b_tb : float := float_zero;
    signal c_tb : float := float_zero;

begin
    process
    begin
        -- Test Case 1: a = -2.5 = (-10.1)2, b = 3.0 = (11.0)2
        a_tb <= ('1', std_logic_vector(to_unsigned(Bias + 1, E)), ('0', '1', others => '0'));
        b_tb <= ('0', std_logic_vector(to_unsigned(Bias + 1, E)), ('1', '0', others => '0'));
		  c_tb <= float_product(a_tb, b_tb); -- c = -7.5
		  wait for 20 ns;
		  wait;
    end process;

end behavior;
