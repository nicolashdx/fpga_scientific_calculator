LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY tb_lcd_controller IS
END tb_lcd_controller;

ARCHITECTURE TB OF tb_lcd_controller IS
    SIGNAL DATA: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL Clk50Mhz, reset, write_en: STD_LOGIC := '0';
    SIGNAL LCD_DATA: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL LCD_RW, LCD_EN, LCD_RS: STD_LOGIC;
    SIGNAL LCD_ON, LCD_BLON: STD_LOGIC;
    
    CONSTANT CLK_PERIOD : TIME := 20 ns;
    
    COMPONENT lcd_controller
        PORT (
            DATA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            Clk50Mhz, reset, write_en: IN STD_LOGIC;
            LCD_DATA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            LCD_RW, LCD_EN, LCD_RS: OUT STD_LOGIC;
            LCD_ON, LCD_BLON: OUT STD_LOGIC
        );
    END COMPONENT;
    
BEGIN
    -- Instancia o DUT (Device Under Test)
    uut: lcd_controller PORT MAP (
        DATA => DATA,
        Clk50Mhz => Clk50Mhz,
        reset => reset,
        write_en => write_en,
        LCD_DATA => LCD_DATA,
        LCD_RW => LCD_RW,
        LCD_EN => LCD_EN,
        LCD_RS => LCD_RS,
        LCD_ON => LCD_ON,
        LCD_BLON => LCD_BLON
    );
    
    -- Processo de geração de clock
    clk_process: PROCESS
    BEGIN
        WHILE TRUE LOOP
            Clk50Mhz <= '0';
            WAIT FOR CLK_PERIOD / 2;
            Clk50Mhz <= '1';
            WAIT FOR CLK_PERIOD / 2;
        END LOOP;
    END PROCESS;
    
    -- Processo de estímulo
    stimulus: PROCESS
    BEGIN
        -- Inicializa o sistema
        reset <= '1';
        WAIT FOR 50 ns;
        reset <= '0';
        
        -- Envia caracteres de forma serial
        write_en <= '1';
        
        DATA <= x"48"; -- H
        WAIT FOR CLK_PERIOD;
        DATA <= x"65"; -- e
        WAIT FOR CLK_PERIOD;
        DATA <= x"6C"; -- l
        WAIT FOR CLK_PERIOD;
        DATA <= x"6C"; -- l
        WAIT FOR CLK_PERIOD;
        DATA <= x"6F"; -- o
        WAIT FOR CLK_PERIOD;
        DATA <= x"20"; -- (espaço)
        WAIT FOR CLK_PERIOD;
        DATA <= x"57"; -- W
        WAIT FOR CLK_PERIOD;
        DATA <= x"6F"; -- o
        WAIT FOR CLK_PERIOD;
        DATA <= x"72"; -- r
        WAIT FOR CLK_PERIOD;
        DATA <= x"6C"; -- l
        WAIT FOR CLK_PERIOD;
        DATA <= x"64"; -- d
        WAIT FOR CLK_PERIOD;
        
        write_en <= '0';
        
        -- Aguarda para ver o resultado
        WAIT FOR 1000 ns;
        
        -- Finaliza a simulação
        WAIT;
    END PROCESS;
    
END TB;
