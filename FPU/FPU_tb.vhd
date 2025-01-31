library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity FPU_tb is
end FPU_tb;

architecture behavior of FPU_tb is
   
	
	signal fio_clk, fio_reset, fio_init : std_logic := '0';
	signal fio_op : Operation := Sum;
	signal fio_a, fio_b : float := float_zero;
	signal fio_c : float;
	signal fio_finished : std_logic;
	
	signal fio_value_a : string_dec;
	signal fio_value_b : string_dec;
	signal fio_result : string_dec;
	
	constant PERIOD :  := 20;
	signal complete : std_logic := '0';
begin
	
	
	process 
	begin
		while complete = '0' loop
			fio_clk <= '0';
			wait for CLOCK_PERIOD/2;
			fio_clk <= '1';
			wait for CLOCK_PERIOD/2;
		end loop;
		
		wait;
	end process;
	
	
	process    -- clock process for clock
   begin
		wait for offset;
		
		clock_loop : loop
			clk <= '0';
			wait for (PERIOD - (PERIOD * DUTY_CYCLE));
			clk <= '1';
			wait for (PERIOD * DUTY_CYCLE);
		end loop CLOCK_LOOP;
	end process;
	
	process
	begin
		-- iniciacao do modulo
		wait for CLOCK_PERIOD/2;
		fio_reset <= '0';
		fio_init <= '0';
		
		wait for CLOCK_PERIOD;
		fio_reset <= '1';
		fio_init <= '0';
		
		fio_value_a <= "+00004.00000";
		fio_value_b <= "+00000.75000";
		
		-- atribuicao dos valores para FPU
		wait for CLOCK_PERIOD;
		fio_result <= float_to_str(fio_c); -- 0
		
		fio_init <= '1';
		fio_a <= str_to_float(fio_value_a);
		fio_b <= str_to_float(fio_value_b);
		
		fio_op <= mul;
		
		wait until fio_finished = '1';
		fio_result <= float_to_str(fio_c); -- 1.75
		
		wait for CLOCK_PERIOD;
		
		complete <= '1';
		wait;
	end process;
end behavior;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;
use ieee.numeric_std.all;
 
ENTITY FPU_tb IS
END FPU_tb;
 
ARCHITECTURE behavior OF FPU_tb IS 
	-- Component Declaration for the Unit Under Test (UUT)
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
    
	signal clk              : std_logic;
	signal rst              : std_logic;
	signal data_in          : std_logic;
	signal data_output      : std_logic;
	constant max_value      : natural := 4;
	constant mim_value		: natural := 1;


	signal read_data_in    : std_logic:='0';
	signal flag_write      : std_logic:='0';   


	file   inputs_data_in  : text open read_mode  is "data_in.txt";
	file   outputs         : text open write_mode is "outputs.txt";


	-- Clock period definitions
	constant PERIOD     : time := 20 ns;
	constant DUTY_CYCLE : real := 0.5;
   constant OFFSET     : time := 5 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
	DUT : FPU port map (
		clock => fio_clk, 
		reset => fio_reset, 
		init => fio_init,
		op => fio_op,
		a => fio_a, 
		b => fio_b,
		result => fio_c,
		finished => fio_finished
	);

------------------------------------------------------------------------------------
----------------- processo para gerar o estimulo de reset
------------------------------------------------------------------------------------		
	sreset: process
	begin
		rst <= '1';
		for i in 1 to 4 loop
			wait until rising_edge(clk);
		end loop;
		rst <= '0'; 
		wait;	
	end process sreset;
	
	
------------------------------------------------------------------------------------
----------------- processo para leer os dados do arquivo data_in.txt
------------------------------------------------------------------------------------
read_inputs_data_in:process
		variable linea : line;
		variable input : std_logic;
	begin
	    wait until falling_edge(clk);
		while not endfile(inputs_data_in) loop
		      if read_data_in = '1' then
			     readline(inputs_data_in,linea);
				 read(linea,input);
				 data_in <= input;
			  end if;
			  wait for PERIOD;
		end loop;
		wait;
	end process read_inputs_data_in;	
	
------------------------------------------------------------------------------------
----------------- processo para gerar os estimulos de entrada
------------------------------------------------------------------------------------
	
   tb_stimulus : PROCESS
   BEGIN
        WAIT FOR (OFFSET + 3*PERIOD);
            read_data_in <= '1';		
			for i in mim_value to max_value loop
		        wait for PERIOD;
		    end loop;
            read_data_in <= '0';		
		WAIT;
   END PROCESS tb_stimulus;	
   
------------------------------------------------------------------------------------
------ processo para gerar os estimulos de escrita do arquivo de saida
------------------------------------------------------------------------------------   
   
   -- escreve_outputs : PROCESS
   -- BEGIN
        -- WAIT FOR (OFFSET + 4*PERIOD);
            -- flag_write <= '1';
			-- for i in mim_value to max_value loop
		        -- wait for PERIOD;
		    -- end loop;
            -- flag_write <= '0';			
		-- WAIT;
   -- END PROCESS escreve_outputs;   
   
-- ------------------------------------------------------------------------------------
-- ------ processo para escriber os dados de saida no arquivo .txt
-- ------------------------------------------------------------------------------------   
   
	-- write_outputs:process
		-- variable linea  : line;
		-- variable output : std_logic_vector (31 downto 0);
	-- begin
	    -- wait until clk ='0';
		-- while true loop
			-- if (flag_write ='1')then
				-- output := q_ortonorma;
				-- write(linea,output);
				-- writeline(outputs,linea);
			-- end if;
			-- wait for PERIOD;
		-- end loop; 
	-- end process write_outputs;   	
END;

