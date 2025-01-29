library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity debounce is
    Port (
        clk : in std_logic;
        keypad_pressed : in std_logic_vector(11 downto 0);
        keypad_debounce : out std_logic_vector(11 downto 0)
    );
end debounce;

architecture Behavioral of debounce is
    signal input_test : std_logic_vector(11 downto 0) := (others => '0');
	 signal keypad_debounce_aux : std_logic_vector(11 downto 0);
    signal counter : integer := 0;
    signal debounce_state : std_logic_vector(1 downto 0) := "00";
	 
    constant countupto : integer := 1000;
	 constant data_zeros : std_logic_vector(11 downto 0) := (others => '0');
begin
	 keypad_debounce <= keypad_debounce_aux;

    process(clk)
    begin
        if rising_edge(clk) then
            case debounce_state is
                when "00" =>
                    if keypad_pressed = data_zeros then
                        debounce_state <= "00";
								keypad_debounce_aux <= data_zeros;
                    else
                        input_test <= keypad_pressed;
                        debounce_state <= "01";
                        counter <= 0;
                    end if;

                when "01" =>
                    if input_test /= keypad_pressed then
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
                    if keypad_debounce_aux = data_zeros then
                        counter <= counter + 1;
                        if counter > countupto then
                            keypad_debounce_aux <= input_test;
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
