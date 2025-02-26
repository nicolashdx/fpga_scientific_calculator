library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity FloatConvert_tb is
end FloatConvert_tb;

architecture behavior of FloatConvert_tb is
    -- Signals for testing
    constant test_float_1 : float := (	-- +1.1e+11
        Sign_bit => '0',
        Exponent => "10000010",
        Mantissa => "10000000000000000000000"
    );
	 
	 constant test_float_2 : float := (	-- -1.01e-10
        Sign_bit => '1',
        Exponent => std_logic_vector(to_unsigned(Bias - 2, E)),
        Mantissa => ('0', '1', others => '0')
    );
	 
	 constant test_float_3 : float := (	-- 1.10e+1
        Sign_bit => '0',
        Exponent => std_logic_vector(to_unsigned(Bias + 1, E)),
        Mantissa => ('1', '0', others => '0')
    );
	 
	 constant test_float_4 : float := (	-- -1.10e+1
        Sign_bit => '1',
        Exponent => std_logic_vector(to_unsigned(Bias + 1, E)),
        Mantissa => ('1', '0', others => '0')
    );
	 

begin
    process
    begin
--        test_string <= float_to_str_bin(test_float_1);
--		  wait for 30 ns;
--		  converted_float <= str_bin_to_float(test_string);
--		  wait for 30 ns;
--		  test_string_2 <= float_to_str_bin(converted_float);
--		  wait for 30 ns;
--		  test_string <= float_to_str_bin(test_float_2);
--		  wait for 30 ns;
--		  converted_float <= str_bin_to_float(test_string);
--		  wait for 30 ns;
--		  test_string_2 <= float_to_str_bin(converted_float);
--		  wait for 30 ns;
--		  test_string <= float_to_str_bin(test_float_3);
--		  wait for 30 ns;
--		  converted_float <= str_bin_to_float(test_string);
--		  wait for 30 ns;
--		  test_string_2 <= float_to_str_bin(converted_float);
--		  wait for 30 ns;
--		  test_string <= float_to_str_bin(test_float_4);
--		  wait for 30 ns;
--		  converted_float <= str_bin_to_float(test_string);
--		  wait for 30 ns;
--		  test_string_2 <= float_to_str_bin(converted_float);
--		  wait for 30 ns;
--        wait;
    end process;

end behavior;
