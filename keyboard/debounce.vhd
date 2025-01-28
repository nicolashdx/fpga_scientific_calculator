library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity debounce is
    Port (
        clk : in std_logic;
        keypad_debounce : in std_logic_vector(11 downto 0);
        keypad_decode : out std_logic_vector(11 downto 0)
    );
end debounce;

architecture Behavioral of debounce is
    signal input_test : std_logic_vector(11 downto 0) := (others => '0');
    signal counter : integer := 0;
    signal debounce_state : std_logic_vector(1 downto 0) := "00";
    constant countupto : integer := 1000;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            case debounce_state is
                when "00" =>
                    if keypad_debounce = (others => '0') then
                        debounce_state <= "00";
                    else
                        input_test <= keypad_debounce;
                        debounce_state <= "01";
                        counter <= 0;
                        keypad_decode <= (others => '0');
                    end if;

                when "01" =>
                    if input_test /= keypad_debounce then
                        debounce_state <= "00";
                    else
                        counter <= counter + 1;
                        if counter > countupto then
                            debounce_state <= "10";
                        end if;
                    end if;

                when "10" =>
                    debounce_state <= "11";
                    counter <= 0;

                when "11" =>
                    if keypad_debounce = (others => '0') then
                        counter <= counter + 1;
                        if counter > countupto then
                            keypad_decode <= input_test;
                            input_test <= (others => '0');
                            debounce_state <= "00";
                            counter <= 0;
                        end if;
                    else
                        counter <= 0;
                    end if;

                when others =>
                    debounce_state <= "00";
            end case;
        end if;
    end process;

end Behavioral;
