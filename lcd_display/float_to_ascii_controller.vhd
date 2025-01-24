LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY float_to_ascii_controller IS
PORT (
    float_number : IN REAL; -- Número float de entrada
    clk          : IN STD_LOGIC; -- Clock
    reset        : IN STD_LOGIC; -- Reset
    write_en     : OUT STD_LOGIC; -- Sinal de escrita para a controladora LCD
    data_out     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- Dados ASCII para enviar à controladora LCD
);
END float_to_ascii_controller;

ARCHITECTURE Behavioral OF float_to_ascii_controller IS

TYPE state_type IS (idle, convert_integer, convert_decimal, send_data, wait_lcd);
SIGNAL state        : state_type := idle;
SIGNAL integer_part : INTEGER;
SIGNAL decimal_part : INTEGER;
SIGNAL ascii_buffer : STD_LOGIC_VECTOR(7 DOWNTO 0); -- Buffer para caracteres ASCII
SIGNAL char_index   : INTEGER RANGE 1 TO 32 := 1; -- Índice do caractere enviado
SIGNAL temp_number  : REAL := 0.0; -- Número intermediário para cálculos

CONSTANT ASCII_ZERO : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00110000"; -- Código ASCII para '0'

BEGIN

PROCESS(clk, reset)
BEGIN
    IF reset = '1' THEN
        state        <= idle;
        integer_part <= 0;
        decimal_part <= 0;
        char_index   <= 1;
        data_out     <= (OTHERS => '0');
        write_en     <= '0';
    ELSIF rising_edge(clk) THEN
        CASE state IS
            WHEN idle =>
                write_en <= '0';
                IF float_number /= 0.0 THEN
                    temp_number <= float_number;
                    state <= convert_integer;
                END IF;

            WHEN convert_integer =>
                -- Extrai a parte inteira
                integer_part <= INTEGER(temp_number);
                temp_number  <= (temp_number - INTEGER(temp_number)) * 100.0; -- Ajusta para obter os dois primeiros dígitos decimais
                state <= convert_decimal;

            WHEN convert_decimal =>
                -- Extrai os primeiros dois dígitos da parte decimal
                decimal_part <= INTEGER(temp_number);
                state <= send_data;

            WHEN send_data =>
                CASE char_index IS
                    -- Parte inteira
                    WHEN 1 =>
                        ascii_buffer <= STD_LOGIC_VECTOR(to_unsigned(integer_part / 10, 8)) + ASCII_ZERO;
                        data_out <= ascii_buffer;
                        write_en <= '1';
                    WHEN 2 =>
                        ascii_buffer <= STD_LOGIC_VECTOR(to_unsigned(integer_part MOD 10, 8)) + ASCII_ZERO;
                        data_out <= ascii_buffer;
                        write_en <= '1';

                    -- Ponto decimal
                    WHEN 3 =>
                        data_out <= "00101110"; -- ASCII para '.'
                        write_en <= '1';

                    -- Parte decimal
                    WHEN 4 =>
                        ascii_buffer <= STD_LOGIC_VECTOR(to_unsigned(decimal_part / 10, 8)) + ASCII_ZERO;
                        data_out <= ascii_buffer;
                        write_en <= '1';
                    WHEN 5 =>
                        ascii_buffer <= STD_LOGIC_VECTOR(to_unsigned(decimal_part MOD 10, 8)) + ASCII_ZERO;
                        data_out <= ascii_buffer;
                        write_en <= '1';
                    WHEN OTHERS =>
                        write_en <= '0';
                        state <= wait_lcd;
                END CASE;

                char_index <= char_index + 1;

            WHEN wait_lcd =>
                IF char_index > 5 THEN
                    char_index <= 1;
                    state <= idle; -- Retorna ao estado inicial
                ELSE
                    state <= send_data; -- Continua enviando
                END IF;

            WHEN OTHERS =>
                state <= idle;
        END CASE;
    END IF;
END PROCESS;

END Behavioral;
