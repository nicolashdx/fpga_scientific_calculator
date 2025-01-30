LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY lcd_controller IS
PORT (
	DATA: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Clk50Mhz, reset, write_en: IN STD_LOGIC;
	LCD_DATA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LCD_RW, LCD_EN, LCD_RS: OUT STD_LOGIC;
	LCD_ON, LCD_BLON: OUT STD_LOGIC;
	state_out: OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
);
END lcd_controller;

ARCHITECTURE FSMD OF lcd_controller IS
	TYPE state_type IS (s0, s1,s2,s3,s4,s10,s11,s12,s13,s20,s21,s22,s23,s24, w1, w2, w3, w4);
	SIGNAL state, next_state: state_type := s0;

	CONSTANT max: INTEGER := 5; --50000;
	CONSTANT half: INTEGER := max/2;

	SIGNAL clockticks: INTEGER RANGE 0 TO max;
	SIGNAL clock: STD_LOGIC := '0';
	
	SUBTYPE ascii IS STD_LOGIC_VECTOR(7 DOWNTO 0);

	TYPE charArray IS array(1 to 16) OF ascii;
	TYPE initArray IS array(1 to 7) OF ascii;
	TYPE buffArray IS array(1 to 32) OF ascii;
	
	-- LCD initialization sequence codes
	-- 0x38 init four times
	-- 0x06 Entry mode set: Increment One; No Shift
	-- 0x0F Display control: Display ON; Cursor ON; Blink ON
	-- 0x01 Display clear
	CONSTANT initcode: initArray := (x"38",x"38",x"38",x"38",x"06",x"0F",x"01");
	
	SIGNAL line1: charArray := (OTHERS => x"4E");
	SIGNAL line2: charArray := (OTHERS => x"4E");
	SIGNAL buffer_temp: buffArray := (OTHERS => x"20");
	
	SIGNAL count : INTEGER := 1;
	SIGNAL temp : INTEGER := 1;

	CONSTANT timeout_value: INTEGER := 5000;

	SIGNAL idle_counter: INTEGER RANGE 0 TO timeout_value;
	
	BEGIN
		 state_machine: PROCESS(clock, reset)
			 BEGIN	 
			 IF(Reset = '1') THEN
				state <= s0;		
			 ELSIF(rising_edge(clock)) THEN
				state <= next_state;
			 END IF;
		 END PROCESS;
		 
		 lcd_control: PROCESS(clock, state)
			BEGIN
			IF (rising_edge(clock)) THEN
				LCD_ON <= '1';
				LCD_BLON <= '1';
				
				state_out <= std_logic_vector(to_unsigned(state_type'POS(state), 5));
				
				CASE state IS
					WHEN w1 => -- ESTADO QUE RECEBE OS CARACTERES PELO BARRAMENTO DATA E GUARDA EM UM BUFFER
						IF(count < 32) THEN
							buffer_temp(count) <= DATA;
							count <= count + 1;
							next_state <= w1;
						ELSE
							count <= 1;
							temp <= 1;
							next_state <= w2;
						END IF;

					WHEN w2 => -- ESTADO QUE ARMAZENA OS CARACTERES DO BUFFER NO VETOR DA LINHA 1
						IF(buffer_temp(count) /= x"20" AND count < 16) THEN
							line1(count) <= buffer_temp(count);
							next_state <= w2;
						ELSE
							next_state <= w3;
						END IF;
						count <= count+1;

					WHEN w3 => -- ESTADO QUE ARMAZENA OS CARACTERES DO BUFFER NO VETOR DA LINHA 2
						IF(buffer_temp(count) /= x"20" AND count < 32) THEN
							line2(count) <= buffer_temp(count);
							next_state <= w3;
						ELSE
							buffer_temp <= (OTHERS => x"20");
							next_state <= s0;
						END IF;
						count <= count+1;

					-- LCD initialization sequence
					-- The LCD_DATA is written to t'he LCD at the falling edge of the E line
					-- therefore we need to toggle the E line for each data write
					WHEN s0 =>
						count <= 1;
						temp <= 1;
						next_state <= s1;
					WHEN s1 =>
						LCD_DATA <= initcode(count);
						LCD_EN <= '1'; -- EN=1;
						LCD_RS <= '0'; -- RS=0; an instruction
						LCD_RW <= '0'; -- R/W'=0; write
						next_state <= s2;
					WHEN s2 =>
						LCD_EN <= '0'; -- set EN=0;
						count <= count + 1;
						IF count < 7 THEN
							next_state <= s1;
						ELSE
							next_state <= s10;
						END IF;
					-- move cursor to first line of display 
					WHEN s10 =>
						LCD_DATA <= x"80"; -- x80 is address of 1st position on first line
						LCD_EN <= '1'; -- EN=1;
						LCD_RS <= '0'; -- RS=0; an instruction
						LCD_RW <= '0'; -- R/W'=0; write
						next_state <= s11;
					WHEN s11 =>
						LCD_EN <= '0'; -- EN=0; toggle EN
						count <= 1;
						next_state <= s12;
					-- write 1st line text
					WHEN s12 =>
						LCD_DATA <= line1(count);
						LCD_EN <= '1'; -- EN=1;
						LCD_RS <= '1'; -- RS=1; data
						LCD_RW <= '0'; -- R/W'=0; write
						next_state <= s13;
					WHEN s13 =>
						LCD_EN <= '0'; -- EN=0; toggle EN
						count <= count + 1;
						IF count < 16 THEN
							next_state <= s12;
						ELSE
							next_state <= s20;
						END IF;
					-- move cursor to second line of display
					WHEN s20 =>
						LCD_DATA <= x"BF"; --xBF is address of 1st position on second line
						LCD_EN <= '1'; -- EN=1;
						LCD_RS <= '0'; -- RS=0; an instruction
						LCD_RW <= '0'; -- R/W'=0; write
						next_state <= s21;
					WHEN s21 =>
						LCD_EN <= '0'; -- EN=0; toggle EN
						count <= 1;
						next_state <= s22;
					-- write 2nd line text
					WHEN s22 =>
						LCD_DATA <= line2(count);
						LCD_EN <= '1'; -- EN=1;
						LCD_RS <= '1'; -- RS=1; data
						LCD_RW <= '0'; -- R/W'=0; write
						next_state <= s23;
					WHEN s23 =>
						LCD_EN <= '0'; -- set EN=0;
						count <= count + 1;
						IF count < 16 THEN
							next_state <= s22;
						ELSE
							next_state <= s24;
						END IF;
					WHEN s24 =>
					IF (write_en = '1') THEN
						buffer_temp <= (OTHERS => x"20");
						line1 <= (OTHERS => x"20");
						line2 <= (OTHERS => x"20");
						count <= 1;
						next_state <= w1;
					ELSE
						idle_counter <= idle_counter + 1;
						IF idle_counter = timeout_value THEN
							next_state <= s0; -- Reinicializa caso timeout ocorra
						END IF;
					END IF;
					WHEN OTHERS =>
						next_state <= s24;
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