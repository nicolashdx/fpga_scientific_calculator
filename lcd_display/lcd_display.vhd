LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY lcd_controller IS
PORT (
Clk50Mhz, reset: IN STD_LOGIC;
LCD_DATA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
LCD_RW, LCD_EN, LCD_RS: OUT STD_LOGIC;
LCD_ON, LCD_BLON: OUT STD_LOGIC);
END lcd_controller;

ARCHITECTURE FSMD OF lcd_controller IS
TYPE state_type IS (s1,s2,s3,s4,s10,s11,s12,s13,s20,s21,s22,s23,s24);
SIGNAL state: state_type;
CONSTANT max: INTEGER := 50000;
CONSTANT half: INTEGER := max/2;

SIGNAL clockticks: INTEGER RANGE 0 TO max;
SIGNAL clock: STD_LOGIC;
SUBTYPE ascii IS STD_LOGIC_VECTOR(7 DOWNTO 0);

TYPE charArray IS array(1 to 16) OF ascii;
TYPE initArray IS array(1 to 7) OF ascii;

-- LCD initialization sequence codes
-- 0x38 init four times
-- 0x06 Entry mode set: Increment One; No Shift
-- 0x0F Display control: Display ON; Cursor ON; Blink ON
-- 0x01 Display clear
CONSTANT initcode: initArray := (x"38",x"38",x"38",x"38",x"06",x"0F",x"01");

-- Welcome 
CONSTANT line1: charArray := 
(x"20",x"20",x"20",x"20",x"57",x"65",x"6C",x"63",x"6F",x"6D",x"65",x"20",x"20",x"20",x"20",x"20");

-- To ESDL Lab
CONSTANT line2: charArray := 
(x"20",x"20",x"54",x"6F",x"20",x"45",x"53",x"44",x"4C",x"20",x"4C",x"61",x"62",x"20",x"20",x"20");

SIGNAL count: integer;

BEGIN
    LCD_ON <= '1';
    LCD_BLON <= '1';
    lcd_control: PROCESS(clock, reset)
        BEGIN
            IF(Reset = '1') THEN
                count <= 1;
                state <= s1;
            ELSIF(clock'EVENT AND clock = '1') THEN
                CASE state IS
                -- LCD initialization sequence
                   -- The LCD_DATA is written to the LCD at the falling edge of the E line
                   -- therefore we need to toggle the E line for each data write
                    WHEN s1 =>
                        LCD_DATA <= initcode(count);
                        LCD_EN <= '1'; -- EN=1;
                        LCD_RS <= '0'; -- RS=0; an instruction
                        LCD_RW <= '0'; -- R/W'=0; write
                        state <= s2;
                    WHEN s2 =>
                        LCD_EN <= '0'; -- set EN=0;
                        count <= count + 1;
                        IF count + 1 <= 7 THEN
                            state <= s1;
                        ELSE
                            state <= s10;
                        END IF;
                        -- move cursor to first line of display 
                    WHEN s10 =>
                        LCD_DATA <= x"80"; -- x80 is address of 1st position on first line
                        LCD_EN <= '1'; -- EN=1;
                        LCD_RS <= '0'; -- RS=0; an instruction
                        LCD_RW <= '0'; -- R/W'=0; write
                        state <= s11;
                    WHEN s11 =>
                        LCD_EN <= '0'; -- EN=0; toggle EN
                        count <= 1;
                        state <= s12;
                    -- write 1st line text
                    WHEN s12 =>
                        LCD_DATA <= line1(count);
                        LCD_EN <= '1'; -- EN=1;
                        LCD_RS <= '1'; -- RS=1; data
                        LCD_RW <= '0'; -- R/W'=0; write
                        state <= s13;
                    WHEN s13 =>
                        LCD_EN <= '0'; -- EN=0; toggle EN
                        count <= count + 1;
                        IF count + 1 <= 16 THEN
                            state <= s12;
                        ELSE
                            state <= s20;
                        END IF;
                        -- move cursor to second line of display
                    WHEN s20 =>
                        LCD_DATA <= x"BF"; --xBF is address of 1st position on second line
                        LCD_EN <= '1'; -- EN=1;
                        LCD_RS <= '0'; -- RS=0; an instruction
                        LCD_RW <= '0'; -- R/W'=0; write
                        state <= s21;
                    WHEN s21 =>
                        LCD_EN <= '0'; -- EN=0; toggle EN
                        count <= 1;
                        state <= s22;
                        -- write 2nd line text
                    WHEN s22 =>
                        LCD_DATA <= line2(count);
                        LCD_EN <= '1'; -- EN=1;
                        LCD_RS <= '1'; -- RS=1; data
                        LCD_RW <= '0'; -- R/W'=0; write
                        state <= s23;
                    WHEN s23 =>
                        LCD_EN <= '0'; -- set EN=0;
                        count <= count + 1;
                        IF count + 1 <= 16 THEN
                            state <= s22;
                        ELSE
                            state <= s24;
                        END IF;
                    WHEN s24 =>
                            state <= s24;
                    WHEN OTHERS =>
                            state <= s24;
                END CASE;
            END IF;
        END PROCESS;
        ClockDivide: PROCESS
            BEGIN
            WAIT UNTIL Clk50Mhz'EVENT and Clk50Mhz = '1';
            IF clockticks < max THEN
                clockticks <= clockticks + 1;
            ELSE
                clockticks <= 0;
            END IF;
            IF clockticks < half THEN
                clock <= '0';
            ELSE
                clock <= '1';
            END IF;
        END PROCESS;
END FSMD;