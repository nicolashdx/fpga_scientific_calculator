library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity FPU_tb is
end FPU_tb;

architecture behavior of FPU_tb is
    -- Signals for testing
    constant float_1 : float := (	-- (+1.1e+11)2 = 1.5*2^3 = 12
        Sign_bit => '0',
        Exponent => "10000010",
        Mantissa => "10000000000000000000000"
    );
	 
	 constant float_2 : float := (	-- -1.01e-10
        Sign_bit => '1',
        Exponent => std_logic_vector(to_unsigned(Bias - 2, E)),
        Mantissa => ('0', '1', others => '0')
    );
	 
	 constant float_3 : float := (	-- 1.10e+1
        Sign_bit => '0',
        Exponent => std_logic_vector(to_unsigned(Bias + 1, E)),
        Mantissa => ('1', '0', others => '0')
    );
	 
	 constant float_4 : float := (	-- -1.10e+1
        Sign_bit => '1',
        Exponent => std_logic_vector(to_unsigned(Bias + 1, E)),
        Mantissa => ('1', '0', others => '0')
    );
	 
    
	component FPU is
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
	end component;
	
	signal fio_clk, fio_reset, fio_init : std_logic := '0';
	signal fio_op : Operation := Sum;
	signal fio_a, fio_b : float := float_zero;
	signal fio_c : float;
	signal fio_finished : std_logic;
	signal fio_result : string_bin;
	
	constant CLOCK_PERID : time := 20 ns; 
begin
	FPU_inst : FPU port map (
		clock => fio_clk, 
		reset => fio_reset, 
		init => fio_init,
		op => fio_op,
		a => fio_a, 
		b => fio_b,
		result => fio_c,
		finished => fio_finished
	);
	
	process 
	begin
		fio_clk <= '0';
		wait for CLOCK_PERID/2;
		fio_clk <= '1';
		wait for CLOCK_PERID/2;
	end process;
	
	process
	begin
		wait for CLOCK_PERID/2;
		fio_reset <= '0';
		fio_init <= '0';
		wait for CLOCK_PERID;
		fio_reset <= '1';
		fio_init <= '0';
		wait for CLOCK_PERID;
		fio_result <= float_to_str_bin(fio_c); -- 0
		fio_a <= float_1; -- 12 = (+1.100e+11)
		fio_b <= float_1; -- 12 = (+1.100e+11)
		fio_init <= '1';
		fio_op <= sum;
		wait for CLOCK_PERID;
		wait until fio_finished = '1';
		fio_result <= float_to_str_bin(fio_c); -- 24 = (+1.100e+100)
		fio_a <= float_1; -- 12 = (+1.100e+11)
		fio_b <= float_1; -- 12 = (+1.100e+11)
		fio_init <= '1';
		fio_op <= mul;
		wait for CLOCK_PERID;
		wait until fio_finished = '1';
		fio_result <= float_to_str_bin(fio_c); -- 144 = (+1.001e+111)
		fio_a <= float_1; -- 12 = (+1.100e+11)
		fio_b <= float_1; -- 12 = (+1.100e+11)
		fio_init <= '1';
		fio_op <= sub;
		wait for CLOCK_PERID;
		wait until fio_finished = '1';
		fio_result <= float_to_str_bin(fio_c); -- 0 = (+0.0e+0)
		wait for CLOCK_PERID;
		wait;
	end process;
end behavior;
