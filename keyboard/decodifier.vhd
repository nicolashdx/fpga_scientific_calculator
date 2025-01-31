library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity decodifier is
    Port (
		switches : in std_logic_vector(11 downto 0);
		op : out Operation
    );
end decodifier;

architecture Behavioral of decodifier is
begin
    process(switches)
    begin
        if switches(9) = '0' then
            case switches(3 downto 0) is
                when "0001" => op <= Sum;
                when "0010" => op <= Sub;
                when "0100" => op <= Mul;
                when "1000" => op <= Div;
                when others => op <= Zero;
            end case;
        else
            case switches(3 downto 0) is
                when "0001" => op <= Cos;
                when "0010" => op <= Sin;
                when "0100" => op <= sqrt;
                when "1000" => op <= log;
                when others => op <= Zero;
            end case;
        end if;
	end process;
end Behavioral;
