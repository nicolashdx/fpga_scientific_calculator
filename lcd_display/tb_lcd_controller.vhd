LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_lcd_controller IS
END tb_lcd_controller;

ARCHITECTURE TB OF tb_lcd_controller IS
    COMPONENT lcd_controller
        PORT (
				-- ENTRADAS
            DATA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				Clk50Mhz, reset, write_en: IN STD_LOGIC;
				-- SAÍDAS
				LCD_DATA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
				LCD_RW, LCD_EN, LCD_RS: OUT STD_LOGIC;
				LCD_ON, LCD_BLON: OUT STD_LOGIC;
				state_out: out STD_LOGIC_VECTOR(4 DOWNTO 0)
        );
    END COMPONENT;
	 
	 SIGNAL DATA_wire: STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Clk50Mhz_wire, reset_wire, write_en_wire: STD_LOGIC := '0';
    SIGNAL LCD_DATA_wire: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL LCD_RW_wire, LCD_EN_wire, LCD_RS_wire: STD_LOGIC;
    SIGNAL LCD_ON_wire, LCD_BLON_wire: STD_LOGIC;
	 SIGNAL STATE_OUT_wire: STD_LOGIC_VECTOR(4 DOWNTO 0);
    
    CONSTANT CLK_PERIOD : TIME := 20 ns;
    
BEGIN
    -- Instancia o DUT (Device Under Test)
    uut: lcd_controller PORT MAP (
        DATA => DATA_wire,
        Clk50Mhz => Clk50Mhz_wire,
        reset => reset_wire,
        write_en => write_en_wire,
        LCD_DATA => LCD_DATA_wire,
        LCD_RW => LCD_RW_wire,
        LCD_EN => LCD_EN_wire,
        LCD_RS => LCD_RS_wire,
        LCD_ON => LCD_ON_wire,
        LCD_BLON => LCD_BLON_wire,
		  state_out => STATE_OUT_wire
    );
    
    -- Processo de geração de clock
    clk_process: PROCESS
    BEGIN
        WHILE TRUE LOOP
            Clk50Mhz_wire <= '0';
            WAIT FOR CLK_PERIOD / 2;
            Clk50Mhz_wire <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;
    
    -- Processo de estímulo
    stimulus: PROCESS
    BEGIN
        -- Inicializa o sistema
        reset_wire <= '0', '1' after CLK_PERIOD, '0' after 5*CLK_PERIOD;
        
        -- Envia caracteres de forma serial
--        write_en <= '1';
--        
--        DATA <= x"48"; -- H
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"65"; -- e
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"6C"; -- l
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"6C"; -- l
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"6F"; -- o
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"20"; -- (espaço)
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"57"; -- W
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"6F"; -- o
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"72"; -- r
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"6C"; -- l
--        WAIT FOR CLK_PERIOD;
--        DATA <= x"64"; -- d
--        WAIT FOR CLK_PERIOD;
--		  DATA <= x"20"; -- (espaço)
--        WAIT FOR CLK_PERIOD;
--        
--        write_en <= '0';
			 wait;
    END PROCESS;
    
END TB;
