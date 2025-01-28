library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity keyboard is
    Port (
        clk : in std_logic;
        row : in std_logic_vector(3 downto 0);
        column : out std_logic_vector(2 downto 0);
        switches : in std_logic_vector(9 downto 0);
        decode : out std_logic_vector(11 downto 0);
        operation : out std_logic_vector(3 downto 0)
    );
end keyboard;

architecture Behavioral of keyboard is
    signal column_int : std_logic_vector(2 downto 0) := "111";
    signal key_pressed : std_logic_vector(11 downto 0) := (others => '0');
    signal key_stored : std_logic_vector(11 downto 0) := (others => '0');
    signal clock_count : integer := 0;
    signal rows_int : std_logic_vector(3 downto 0);
    signal op_selected : std_logic_vector(3 downto 0);
begin

    process(clk)
    begin
        if rising_edge(clk) then
            rows_int <= row;
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if clock_count < 50 then
                clock_count <= clock_count + 1;
            else
                clock_count <= 0;

                case column_int is
                    when "111" =>
                        key_stored <= key_pressed;
                        key_pressed <= (others => '0');
                        column_int <= "011";

                    when "011" =>
                        key_pressed(0) <= not rows_int(0);
                        key_pressed(3) <= not rows_int(1);
                        key_pressed(6) <= not rows_int(2);
                        key_pressed(9) <= not rows_int(3);
                        column_int <= "101";

                    when "101" =>
                        key_pressed(1) <= not rows_int(0);
                        key_pressed(4) <= not rows_int(1);
                        key_pressed(7) <= not rows_int(2);
                        key_pressed(10) <= not rows_int(3);
                        column_int <= "110";

                    when "110" =>
                        key_pressed(2) <= not rows_int(0);
                        key_pressed(5) <= not rows_int(1);
                        key_pressed(8) <= not rows_int(2);
                        key_pressed(11) <= not rows_int(3);
                        column_int <= "111";

                    when others =>
                        column_int <= "111";
                end case;
            end if;
        end if;
    end process;

    column <= column_int;
    decode <= key_stored;

    process(switches)
    begin
        if switches(9) = '0' then
            case switches(3 downto 0) is
                when "0001" => op_selected <= "0001";
                when "0010" => op_selected <= "0010";
                when "0100" => op_selected <= "0011";
                when "1000" => op_selected <= "0100";
                when others => op_selected <= "0000";
            end case;
        else
            case switches(3 downto 0) is
                when "0001" => op_selected <= "0101";
                when "0010" => op_selected <= "0110";
                when "0100" => op_selected <= "0111";
                when "1000" => op_selected <= "1000";
                when others => op_selected <= "0000";
            end case;
        end if;
    end process;

    operation <= op_selected;

end Behavioral;
