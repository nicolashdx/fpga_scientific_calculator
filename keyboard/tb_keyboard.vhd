LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb_keyboard IS
END tb_keyboard;

ARCHITECTURE behavior OF tb_keyboard IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT keyboard
        PORT(
            col     : OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
            row     : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
            data    : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
            nreset  : IN STD_LOGIC;
            clk     : IN STD_LOGIC;
            keyP    : OUT STD_LOGIC
        );
    END COMPONENT;

    -- Signals
    SIGNAL clk    : std_logic := '0';
    SIGNAL nreset : std_logic := '1';
    SIGNAL row    : std_logic_vector(3 DOWNTO 0) := "1111";
    SIGNAL col    : std_logic_vector(3 DOWNTO 0);
    SIGNAL data   : std_logic_vector(3 DOWNTO 0);
    SIGNAL keyP   : std_logic;

    -- Clock period
    CONSTANT clk_period : TIME := 1 ns;
	 CONSTANT press_period : TIME := clk_period*10;

BEGIN
    
    uut: keyboard PORT MAP (
        col     => col,
        row     => row,
        data    => data,
        nreset  => nreset,
        clk     => clk,
        keyP    => keyP
    );

    
    clk_process : PROCESS
    BEGIN
        WHILE TRUE LOOP
            clk <= '0';
            WAIT FOR clk_period / 2;
            clk <= '1';
            WAIT FOR clk_period / 2;
        END LOOP;
    END PROCESS;

    
    stim_proc: PROCESS
    BEGIN
        
        
		  nreset <= '0';
        WAIT FOR 20 ns;
        nreset <= '1';
		  WAIT FOR 20 ns;
		  nreset <= '0';
		  
        WAIT FOR press_period;

        
        row <= "1110"; 
        WAIT FOR press_period*10;
        
		  row <= "1111";  
        WAIT FOR press_period;
	  
        
        WAIT;
    END PROCESS;

END behavior;

