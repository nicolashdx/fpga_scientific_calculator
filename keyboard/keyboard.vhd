library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity keyboard is
    Port (
			clk, reset : in std_logic;
			row : in std_logic_vector(3 downto 0);
			col : out std_logic_vector(2 downto 0);
			key_pressed : out std_logic_vector(3 downto 0);
			pressing : out std_logic
    );
end keyboard;

architecture Behavioral of keyboard is
    type detector_state is (col1, col2, col3);
	 signal state, next_state: detector_state;
begin
	 process(reset, clk)
    begin
        if reset='1' then
            state <= col1;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    process(state, row)
    begin
        case state is
            when col1 =>
                col <= "110";
                pressing <= '0';
                if row = "1110" then
                    key_pressed <= "0001"; -- 1
                    pressing <= '1';
                elsif row = "1101" then
                    key_pressed <= "0100"; -- 4
                    pressing <= '1';
                elsif row = "1011" then
                    key_pressed <= "0111"; -- 7
                    pressing <= '1';
					 elsif row = "0111" then
                    key_pressed <= "1010"; -- *
                    pressing <= '1';
                else
                    key_pressed <= "0000";
                end if;
                next_state <= col2;
            when col2 =>
                col <= "101";
                pressing <= '0';
                if row = "1110" then
                    key_pressed <= "0010"; -- 2
                    pressing <= '1';
                elsif row = "1101" then
                    key_pressed <= "0101"; -- 5
                    pressing <= '1';
                elsif row = "1011" then
                    key_pressed <= "1000"; -- 8
                    pressing <= '1';
					 elsif row = "0111" then
                    key_pressed <= "1011"; -- 0
                    pressing <= '1';
                else
                    key_pressed <= "0000";
                end if;
                next_state <= col3;
            when col3 =>
                col <= "011";
                pressing <= '0';
                if row = "1110" then
                    key_pressed <= "0011"; -- 3
                    pressing <= '1';
                elsif row = "1101" then
                    key_pressed <= "0110"; -- 6
                    pressing <= '1';
                elsif row = "1011" then
                    key_pressed <= "1001"; -- 9
                    pressing <= '1';
					 elsif row = "0111" then
                    key_pressed <= "1001"; -- #
                    pressing <= '1';
                else
                    key_pressed <= "0000";
                end if;
                next_state <= col1;
            when others =>
                    next_state <= col1;
            end case;
    end process;
end Behavioral;