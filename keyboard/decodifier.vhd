library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top_level is
    Port (
        clk : in std_logic;
        row : in std_logic_vector(3 downto 0);
        col : out std_logic_vector(2 downto 0);
        decoded_key : out std_logic_vector(3 downto 0)
    );
end top_level;

architecture Behavioral of top_level is
    signal key_pressed : std_logic_vector(15 downto 0);
    signal debounced_key : std_logic_vector(15 downto 0);
begin
    keyboard_inst : entity work.keyboard
        Port map (
            clk => clk,
            row => row,
            col => col,
            key_pressed => key_pressed
        );

    debounce_inst : entity work.debounce
        Port map (
            clk => clk,
            keypad_debounce => key_pressed,
            keypad_decode => debounced_key
        );

    decoder_inst : entity work.decoder
        Port map (
            keypad_input => debounced_key,
            decoded_key => decoded_key
        );
end Behavioral;
