library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity FPU_tb is
end FPU_tb;

architecture behavior of FPU_tb is
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
	signal fio_a, fio_b, fio_c : float;
	signal fio_finished : std_logic;
	signal str_a, str_b, str_result : string_dec;
	signal complete : std_logic := '0';
	
	constant CLOCK_PERID : time := 20 ns;
	constant tam_data : integer := 5;
	
	type numbers_array is array(tam_data-1 downto 0) of string_dec;
	signal table_a : numbers_array := (
		"+00001.75000", "+00001.68000", "+00001.75000", "+00007.00000", "+00001.75000"
	);
	signal table_b : numbers_array := (
		"+00000.75000", "+00000.68000", "+00005.00000", "+00001.68000", "+00000.50000"
	);
	
	type operation_array is array(tam_data-1 downto 0) of Operation;
	signal table_op : operation_array := (
		Sum, Sub, Mul, sum, Mul
	);
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
		while complete = '0' loop
			fio_clk <= '0';
			wait for CLOCK_PERID/2;
			fio_clk <= '1';
			wait for CLOCK_PERID/2;
		end loop;
		
		wait;
	end process;
	
	process
	begin
		wait for CLOCK_PERID/2;
		fio_reset <= '0';
		fio_init <= '0';
		wait for CLOCK_PERID;
		fio_reset <= '1';
		
		for i in tam_data-1 downto 0 loop
			wait for CLOCK_PERID;
			str_a <= table_a(i);
			str_b <= table_b(i);
			str_result <= float_to_str(fio_c);
			fio_op <= table_op(i);
			
			wait for CLOCK_PERID;
			fio_init <= '1';
			
			fio_a <= str_to_float(str_a); 
			fio_b <= str_to_float(str_b);
			
			wait until fio_finished = '1';
			fio_init <= '0';
		end loop;
		
		
		str_result <= float_to_str(fio_c);
		complete <= '1'; 
		wait for 3*CLOCK_PERID;
		wait;
	end process;
end behavior;
