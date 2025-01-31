library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard is
    Port ( col : out  STD_LOGIC_VECTOR (3 downto 0);
           row : in  STD_LOGIC_VECTOR (3 downto 0);
			  data : out STD_LOGIC_VECTOR (3 downto 0);
			  nreset	:	in STD_lOGIC;
			  clk	: in STD_LOGIC;
			  keyP : out STD_LOGIC);
			  
end keyboard;

architecture FSM of keyboard is
	TYPE detector_state IS (col1set, col2set, col3set, col4set);
	signal state, next_state: detector_state;
begin
process (clk, nReset)
begin
if (nReset = '1') then
	state <= col1set;
elsif (rising_edge(clk)) then
	state <= next_state;
end if;
end process;

process (state)
begin
	case state is
			when col1set =>
				col <= "1110";
				keyP <= '0';
						if row = "1110" then
							data <= "0001"; -- 1
							keyP <= '1'; -- 
						elsif row = "1101" then
							data <= "0010"; -- 2
							keyP <= '1';
						elsif row = "1011" then
							data <= "0011"; -- 3
							keyP <= '1';
						elsif row = "0111" then
							data <= "0100"; -- 4
							keyP <= '1';
						else
							data <= "0000";
							next_state <= col2set;
						end if;

			when col2set =>
				col <= "1101";
				keyP <= '0';
						if row = "1110" then
							data <= "0101"; -- 5
							keyP <= '1';
						elsif row = "1101" then
							data <= "0110"; -- 6
							keyP <= '1';
						elsif row = "1011" then
							data <= "0111"; -- 7
							keyP <= '1';
						elsif row = "0111" then
							data <= "1000"; -- 8
							keyP <= '1';
						else
							data <= "0000";
							next_state <= col3set;
						end if;
			when col3set =>
				col <= "1011";
				keyP <= '0';
						if row = "1110" then
							data <= "1001"; -- 9
							keyP <= '1';
						elsif row = "1101" then
							data <= "1010"; -- 10
							keyP <= '1';
						elsif row = "1011" then
							data <= "1011"; -- 11
							keyP <= '1';
						elsif row = "0111" then
							data <= "1100"; -- 12
							keyP <= '1';
						else
							data <= "0000";
							next_state <= col2set;
						end if;
			when col4set =>
				col <= "0111";
				keyP <= '0';
						if row = "1110" then
							data <= "1101"; -- 13
							keyP <= '1';
						elsif row = "1101" then
							data <= "1110"; -- 14
							keyP <= '1';
						elsif row = "1011" then
							data <= "1111"; -- 15
							keyP <= '1';
						elsif row = "0111" then
							data <= "0000"; -- 16
							keyP <= '1';
						else
							data <= "0000";
							next_state <= col4set;
						end if;
				end case;
		
	case state is
		when col1set => 
			next_state <= col2set;
		when col2set =>
			next_state <= col3set;
		when col3set => 
			next_state <= col4set;
		when col4set =>
			next_state <= col1set;
		when others =>
			next_state <= col1set;
	end case;
		
	
	end process;
end FSM;