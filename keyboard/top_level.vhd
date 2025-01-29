library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.FloatPoint_package.all;
use work.FP_convert_pkg.all;

entity top_level is
    Port (
        clk : in std_logic;
        row : in std_logic_vector(3 downto 0);
        col : in std_logic_vector(2 downto 0);
		  switches : in std_logic_vector(11 downto 0);
		  op : out Operation;
        decoded_key : out std_logic_vector(3 downto 0)
    );
end top_level;

architecture Behavioral of top_level is
	 component keyboard is
    Port (
        clk : in std_logic;
        row : in std_logic_vector(3 downto 0);
        column : in std_logic_vector(2 downto 0);
		  key_pressed : out std_logic_vector(11 downto 0)
    );
	 end component;
	 
	 component decodifier is
    Port (
		switches : in std_logic_vector(11 downto 0);
		op : out Operation
    );
	 end component;
	 
	 component debounce is
    Port (
        clk : in std_logic;
        keypad_pressed : in std_logic_vector(11 downto 0);
        keypad_debounce : out std_logic_vector(11 downto 0)
    );
	 end component;

    signal key_pressed : std_logic_vector(11 downto 0);
    signal debounced_key : std_logic_vector(11 downto 0);
begin
    keyboard_inst : keyboard
        Port map (
			  clk => clk,
			  row => row,
           column => col,
           key_pressed => key_pressed
        );

    debounce_inst : debounce
        Port map (
            clk => clk,
            keypad_pressed => key_pressed,
            keypad_debounce => debounced_key
        );

    decodifier_inst : decodifier
        Port map (
			  switches => switches,
			  op => op
        );
end Behavioral;
