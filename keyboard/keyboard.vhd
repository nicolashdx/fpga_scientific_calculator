library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity keyboard is
    Port (
        clk : in std_logic;
        row : in std_logic_vector(3 downto 0);
        column : in std_logic_vector(2 downto 0);
		  key_pressed : out std_logic_vector(11 downto 0)
    );
end keyboard;

architecture Behavioral of keyboard is
    signal column_int : std_logic_vector(2 downto 0) := "111";
    signal rows_int : std_logic_vector(3 downto 0);
	 signal clock_count : integer := 0;
    
begin
	 process(clk)
    begin
        if rising_edge(clk) then
            rows_int <= row;
				column_int <= column;
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
                    when "100" =>
								key_pressed <= (others => '0');
								
                        key_pressed(0) <= not rows_int(0);
                        key_pressed(1) <= not rows_int(1);
                        key_pressed(2) <= not rows_int(2);
                        key_pressed(3) <= not rows_int(3);

                    when "010" =>
								key_pressed <= (others => '0');
								
                        key_pressed(4) <= not rows_int(0);
                        key_pressed(5) <= not rows_int(1);
                        key_pressed(6) <= not rows_int(2);
                        key_pressed(7) <= not rows_int(3);

                    when "001" =>
								key_pressed <= (others => '0');
								
                        key_pressed(8) <= not rows_int(0);
                        key_pressed(9) <= not rows_int(1);
                        key_pressed(10) <= not rows_int(2);
                        key_pressed(11) <= not rows_int(3);

                    when others =>
                        key_pressed <=(others => '0');
                end case;
            end if;
        end if;
    end process;
end Behavioral;
