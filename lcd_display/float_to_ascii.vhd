library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.FloatPoint_package.all;

entity float_to_ASCII is
    Port (
        ieee754_in  : in  float;  -- Entrada IEEE 754 (32 bits)
        clk         : in  std_logic;
        write_en    : out std_logic;
        ascii_out   : out std_logic_vector(7 downto 0)   -- Saída de caracteres ASCII
    );
end float_to_ASCII;

architecture Behavioral of float_to_ASCII is
    constant bias : integer := 127;
    type ascii_array is array (0 to 9) of STD_LOGIC_VECTOR(7 downto 0);
    signal ascii_result : ascii_array := (others => x"00");
    signal count : integer := 0;
    signal ready : std_logic := '1';

begin
    process (ieee754_in)
        variable sign_bit   : std_logic;
        variable exponent   : integer;
        variable mantissa   : unsigned(23 downto 0);
        variable int_value  : integer;
        variable frac_value : integer;
        variable power_of_2 : unsigned(31 downto 0); -- Modificação aqui
        variable int_part   : integer;
        variable frac_part  : integer;
        variable frac_temp  : integer;
        variable i, pos     : integer;
        variable temp_str   : string(1 to 10) := "          ";
        variable temp_mantiss : std_logic_vector(23 downto 0);
    begin
        ready <= '0';

        -- Extrai os componentes IEEE 754
        sign_bit := ieee754_in.Sign_bit;
        exponent := to_integer(unsigned(ieee754_in.Exponent)) - bias;
        temp_mantiss := "1" & ieee754_in.Mantissa;
        mantissa := unsigned(temp_mantiss);  -- Adiciona bit implícito

        -- Calcula potência de 2 usando shift
        if exponent >= 0 then
            power_of_2 := shift_left(to_unsigned(1, 32), exponent);
        else
            power_of_2 := shift_right(to_unsigned(1, 32), abs(exponent));
        end if;

        -- Calcula valor inteiro (ponto fixo)
        int_value := to_integer(mantissa) / (2**23) * to_integer(power_of_2);

        -- Separa parte inteira e fracionária
        int_part := int_value;
        frac_part := (to_integer(mantissa) mod (2**23)) * to_integer(power_of_2);  
        frac_value := 0;

        -- Converte parte fracionária (até 4 casas decimais)
        for i in 1 to 4 loop
            frac_part := frac_part * 10;
            frac_temp := frac_part / (2**23);
            frac_value := frac_value * 10 + frac_temp;
            frac_part := frac_part - (frac_temp * (2**23));
        end loop;

        -- Converte parte inteira para string ASCII
        pos := 1;
        while int_part /= 0 AND pos < 11 loop
            temp_str(pos) := character'val((int_part mod 10) + character'pos('0'));
            int_part := int_part / 10;
            pos := pos + 1;
        end loop;

        -- Adiciona ponto decimal
        temp_str(pos) := '.';
        pos := pos + 1;

        -- Converte parte fracionária para string ASCII
        for i in 1 to 4 loop
            temp_str(pos) := character'val((frac_value mod 10) + character'pos('0'));
            frac_value := frac_value / 10;
            pos := pos + 1;
        end loop;

        -- Copia string para array ASCII
        for i in 1 to 10 loop
            ascii_result(i-1) <= std_logic_vector(to_unsigned(character'pos(temp_str(i)), 8));
        end loop;

        ready <= '1';
    end process;

    process(clk)
    begin
        if rising_edge(clk) AND ready = '1' then
            write_en <= '1';
            ascii_out <= ascii_result(count);
            count <= count + 1;

            if count = 10 then
                write_en <= '0';
            end if;
        end if;
    end process;
end Behavioral;
