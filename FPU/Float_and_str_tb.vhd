library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity Float_and_str_tb is
end Float_and_str_tb;

architecture behavior of Float_and_str_tb is
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
	 
	 component test2 is
		port(
			s : in string_dec;
			x : out float
		);
	 end component;
	 
	 signal fio_s : string_dec;
	 signal fio_x : float;
	 
begin
	utt : test2 port map(
		s => fio_s,
		x => fio_x
	);
	
   fio_s <= "+0.75000e+00";

end behavior;
