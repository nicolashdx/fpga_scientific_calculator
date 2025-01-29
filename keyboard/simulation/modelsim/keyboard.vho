-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/29/2025 17:14:03"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	row : IN std_logic_vector(3 DOWNTO 0);
	col : IN std_logic_vector(2 DOWNTO 0);
	switches : IN std_logic_vector(11 DOWNTO 0);
	\op.Sum\ : OUT std_logic;
	\op.Sub\ : OUT std_logic;
	\op.Mul\ : OUT std_logic;
	\op.Div\ : OUT std_logic;
	\op.Cos\ : OUT std_logic;
	\op.Sin\ : OUT std_logic;
	\op.Sqrt\ : OUT std_logic;
	\op.Log\ : OUT std_logic;
	\op.Zero\ : OUT std_logic;
	decoded_key : OUT std_logic_vector(3 DOWNTO 0);
	\VCC\ : OUT std_logic;
	GROUND : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- switches[4]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[8]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[10]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[11]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op.Sum	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Sub	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Mul	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Div	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Cos	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Sin	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Sqrt	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Log	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- op.Zero	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- decoded_key[0]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- decoded_key[1]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- decoded_key[2]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- decoded_key[3]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VCC	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GROUND	=>  Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- switches[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switches[9]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[0]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[2]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[0]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[1]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[1]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[2]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[3]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_switches : std_logic_vector(11 DOWNTO 0);
SIGNAL \ww_op.Sum\ : std_logic;
SIGNAL \ww_op.Sub\ : std_logic;
SIGNAL \ww_op.Mul\ : std_logic;
SIGNAL \ww_op.Div\ : std_logic;
SIGNAL \ww_op.Cos\ : std_logic;
SIGNAL \ww_op.Sin\ : std_logic;
SIGNAL \ww_op.Sqrt\ : std_logic;
SIGNAL \ww_op.Log\ : std_logic;
SIGNAL \ww_op.Zero\ : std_logic;
SIGNAL ww_decoded_key : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_VCC\ : std_logic;
SIGNAL ww_GROUND : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debounce_inst|counter[6]~45_combout\ : std_logic;
SIGNAL \debounce_inst|counter[10]~53_combout\ : std_logic;
SIGNAL \debounce_inst|counter[22]~77_combout\ : std_logic;
SIGNAL \debounce_inst|counter[24]~81_combout\ : std_logic;
SIGNAL \debounce_inst|counter[26]~85_combout\ : std_logic;
SIGNAL \debounce_inst|counter[30]~94\ : std_logic;
SIGNAL \debounce_inst|counter[31]~95_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[6]~44_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[8]~48_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[10]~52_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[21]~74_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[22]~76_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[26]~84_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[28]~88_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[30]~93\ : std_logic;
SIGNAL \keyboard_inst|clock_count[31]~94_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[3]~2_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[3]~6_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[0]~7_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[2]~12_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \debounce_inst|Mux5~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~2_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~5_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux3~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux17~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux16~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux21~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux24~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \decodifier_inst|op.Sum~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Sum~1_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Sub~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Sub~1_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Mul~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Mul~1_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Div~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Div~1_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Cos~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Sin~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Sqrt~0_combout\ : std_logic;
SIGNAL \decodifier_inst|op.Log~0_combout\ : std_logic;
SIGNAL \decodifier_inst|Mux4~0_combout\ : std_logic;
SIGNAL \debounce_inst|counter[0]~33_combout\ : std_logic;
SIGNAL \keyboard_inst|column_int[1]~2_combout\ : std_logic;
SIGNAL \keyboard_inst|rows_int[2]~feeder_combout\ : std_logic;
SIGNAL \keyboard_inst|column_int[0]~1_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux9~0_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[0]~32_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[0]~33\ : std_logic;
SIGNAL \keyboard_inst|clock_count[1]~34_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[1]~35\ : std_logic;
SIGNAL \keyboard_inst|clock_count[2]~36_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[2]~37\ : std_logic;
SIGNAL \keyboard_inst|clock_count[3]~39\ : std_logic;
SIGNAL \keyboard_inst|clock_count[4]~40_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[4]~41\ : std_logic;
SIGNAL \keyboard_inst|clock_count[5]~43\ : std_logic;
SIGNAL \keyboard_inst|clock_count[6]~45\ : std_logic;
SIGNAL \keyboard_inst|clock_count[7]~46_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[7]~47\ : std_logic;
SIGNAL \keyboard_inst|clock_count[8]~49\ : std_logic;
SIGNAL \keyboard_inst|clock_count[9]~50_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[9]~51\ : std_logic;
SIGNAL \keyboard_inst|clock_count[10]~53\ : std_logic;
SIGNAL \keyboard_inst|clock_count[11]~54_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[11]~55\ : std_logic;
SIGNAL \keyboard_inst|clock_count[12]~57\ : std_logic;
SIGNAL \keyboard_inst|clock_count[13]~58_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[13]~59\ : std_logic;
SIGNAL \keyboard_inst|clock_count[14]~60_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[14]~61\ : std_logic;
SIGNAL \keyboard_inst|clock_count[15]~62_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[15]~63\ : std_logic;
SIGNAL \keyboard_inst|clock_count[16]~64_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[16]~65\ : std_logic;
SIGNAL \keyboard_inst|clock_count[17]~66_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[17]~67\ : std_logic;
SIGNAL \keyboard_inst|clock_count[18]~68_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[18]~69\ : std_logic;
SIGNAL \keyboard_inst|clock_count[19]~71\ : std_logic;
SIGNAL \keyboard_inst|clock_count[20]~72_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[20]~73\ : std_logic;
SIGNAL \keyboard_inst|clock_count[21]~75\ : std_logic;
SIGNAL \keyboard_inst|clock_count[22]~77\ : std_logic;
SIGNAL \keyboard_inst|clock_count[23]~78_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[23]~79\ : std_logic;
SIGNAL \keyboard_inst|clock_count[24]~81\ : std_logic;
SIGNAL \keyboard_inst|clock_count[25]~82_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[25]~83\ : std_logic;
SIGNAL \keyboard_inst|clock_count[26]~85\ : std_logic;
SIGNAL \keyboard_inst|clock_count[27]~86_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[27]~87\ : std_logic;
SIGNAL \keyboard_inst|clock_count[28]~89\ : std_logic;
SIGNAL \keyboard_inst|clock_count[29]~90_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[29]~91\ : std_logic;
SIGNAL \keyboard_inst|clock_count[30]~92_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[24]~80_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[19]~70_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[5]~42_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[3]~38_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \keyboard_inst|clock_count[12]~56_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \keyboard_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \debounce_inst|Mux23~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux0~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux14~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux2~0_combout\ : std_logic;
SIGNAL \keyboard_inst|rows_int[1]~feeder_combout\ : std_logic;
SIGNAL \keyboard_inst|column_int[2]~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux2~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux1~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal0~2_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux11~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux8~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal0~0_combout\ : std_logic;
SIGNAL \debounce_inst|keypad_debounce_aux[8]~0_combout\ : std_logic;
SIGNAL \debounce_inst|keypad_debounce_aux[8]~1_combout\ : std_logic;
SIGNAL \debounce_inst|input_test[11]~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux4~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux5~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux7~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal0~1_combout\ : std_logic;
SIGNAL \debounce_inst|input_test[11]~1_combout\ : std_logic;
SIGNAL \debounce_inst|input_test[11]~2_combout\ : std_logic;
SIGNAL \debounce_inst|Mux11~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux12~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux22~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux10~0_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux6~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux20~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux8~0_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[2]~4_combout\ : std_logic;
SIGNAL \debounce_inst|Mux19~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux7~0_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[0]~3_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[3]~5_combout\ : std_logic;
SIGNAL \debounce_inst|keypad_debounce_aux[8]~2_combout\ : std_logic;
SIGNAL \debounce_inst|Mux1~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux1~1_combout\ : std_logic;
SIGNAL \debounce_inst|counter[19]~32_combout\ : std_logic;
SIGNAL \debounce_inst|counter[19]~97_combout\ : std_logic;
SIGNAL \debounce_inst|Mux15~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~6_combout\ : std_logic;
SIGNAL \keyboard_inst|Mux10~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux25~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~1_combout\ : std_logic;
SIGNAL \debounce_inst|Mux18~0_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~3_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~4_combout\ : std_logic;
SIGNAL \debounce_inst|Equal1~7_combout\ : std_logic;
SIGNAL \debounce_inst|counter[19]~98_combout\ : std_logic;
SIGNAL \debounce_inst|counter[0]~34\ : std_logic;
SIGNAL \debounce_inst|counter[1]~35_combout\ : std_logic;
SIGNAL \debounce_inst|counter[1]~36\ : std_logic;
SIGNAL \debounce_inst|counter[2]~37_combout\ : std_logic;
SIGNAL \debounce_inst|counter[2]~38\ : std_logic;
SIGNAL \debounce_inst|counter[3]~40\ : std_logic;
SIGNAL \debounce_inst|counter[4]~41_combout\ : std_logic;
SIGNAL \debounce_inst|counter[4]~42\ : std_logic;
SIGNAL \debounce_inst|counter[5]~44\ : std_logic;
SIGNAL \debounce_inst|counter[6]~46\ : std_logic;
SIGNAL \debounce_inst|counter[7]~47_combout\ : std_logic;
SIGNAL \debounce_inst|counter[7]~48\ : std_logic;
SIGNAL \debounce_inst|counter[8]~50\ : std_logic;
SIGNAL \debounce_inst|counter[9]~51_combout\ : std_logic;
SIGNAL \debounce_inst|counter[9]~52\ : std_logic;
SIGNAL \debounce_inst|counter[10]~54\ : std_logic;
SIGNAL \debounce_inst|counter[11]~55_combout\ : std_logic;
SIGNAL \debounce_inst|counter[11]~56\ : std_logic;
SIGNAL \debounce_inst|counter[12]~58\ : std_logic;
SIGNAL \debounce_inst|counter[13]~59_combout\ : std_logic;
SIGNAL \debounce_inst|counter[13]~60\ : std_logic;
SIGNAL \debounce_inst|counter[14]~61_combout\ : std_logic;
SIGNAL \debounce_inst|counter[14]~62\ : std_logic;
SIGNAL \debounce_inst|counter[15]~63_combout\ : std_logic;
SIGNAL \debounce_inst|counter[15]~64\ : std_logic;
SIGNAL \debounce_inst|counter[16]~65_combout\ : std_logic;
SIGNAL \debounce_inst|counter[16]~66\ : std_logic;
SIGNAL \debounce_inst|counter[17]~67_combout\ : std_logic;
SIGNAL \debounce_inst|counter[17]~68\ : std_logic;
SIGNAL \debounce_inst|counter[18]~69_combout\ : std_logic;
SIGNAL \debounce_inst|counter[18]~70\ : std_logic;
SIGNAL \debounce_inst|counter[19]~72\ : std_logic;
SIGNAL \debounce_inst|counter[20]~73_combout\ : std_logic;
SIGNAL \debounce_inst|counter[20]~74\ : std_logic;
SIGNAL \debounce_inst|counter[21]~76\ : std_logic;
SIGNAL \debounce_inst|counter[22]~78\ : std_logic;
SIGNAL \debounce_inst|counter[23]~79_combout\ : std_logic;
SIGNAL \debounce_inst|counter[23]~80\ : std_logic;
SIGNAL \debounce_inst|counter[24]~82\ : std_logic;
SIGNAL \debounce_inst|counter[25]~83_combout\ : std_logic;
SIGNAL \debounce_inst|counter[25]~84\ : std_logic;
SIGNAL \debounce_inst|counter[26]~86\ : std_logic;
SIGNAL \debounce_inst|counter[27]~87_combout\ : std_logic;
SIGNAL \debounce_inst|counter[27]~88\ : std_logic;
SIGNAL \debounce_inst|counter[28]~90\ : std_logic;
SIGNAL \debounce_inst|counter[29]~91_combout\ : std_logic;
SIGNAL \debounce_inst|counter[29]~92\ : std_logic;
SIGNAL \debounce_inst|counter[30]~93_combout\ : std_logic;
SIGNAL \debounce_inst|counter[28]~89_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~8_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~9_combout\ : std_logic;
SIGNAL \debounce_inst|counter[8]~49_combout\ : std_logic;
SIGNAL \debounce_inst|counter[5]~43_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \debounce_inst|counter[3]~39_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \debounce_inst|counter[19]~71_combout\ : std_logic;
SIGNAL \debounce_inst|counter[21]~75_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \debounce_inst|counter[12]~57_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~7_combout\ : std_logic;
SIGNAL \debounce_inst|LessThan0~10_combout\ : std_logic;
SIGNAL \debounce_inst|Mux0~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux0~1_combout\ : std_logic;
SIGNAL \debounce_inst|Mux9~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux6~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux4~0_combout\ : std_logic;
SIGNAL \debounce_inst|Mux3~0_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[0]~8_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[0]~17_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~4_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~5_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[1]~9_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[1]~10_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[1]~11_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~10_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~11_combout\ : std_logic;
SIGNAL \debounce_inst|Mux13~0_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[2]~13_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[2]~14_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~7_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~6_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[3]~15_combout\ : std_logic;
SIGNAL \decodifier_inst|decoded_key[3]~16_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~9_combout\ : std_logic;
SIGNAL \decodifier_inst|comb~8_combout\ : std_logic;
SIGNAL \keyboard_inst|rows_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keyboard_inst|key_pressed\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \keyboard_inst|column_int\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \keyboard_inst|clock_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debounce_inst|keypad_debounce_aux\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \debounce_inst|input_test\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \debounce_inst|debounce_state\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \debounce_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \decodifier_inst|decoded_key\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switches~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \row~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \col~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decodifier_inst|ALT_INV_Mux4~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_row <= row;
ww_col <= col;
ww_switches <= switches;
\op.Sum\ <= \ww_op.Sum\;
\op.Sub\ <= \ww_op.Sub\;
\op.Mul\ <= \ww_op.Mul\;
\op.Div\ <= \ww_op.Div\;
\op.Cos\ <= \ww_op.Cos\;
\op.Sin\ <= \ww_op.Sin\;
\op.Sqrt\ <= \ww_op.Sqrt\;
\op.Log\ <= \ww_op.Log\;
\op.Zero\ <= \ww_op.Zero\;
decoded_key <= ww_decoded_key;
\VCC\ <= \ww_VCC\;
GROUND <= ww_GROUND;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\decodifier_inst|ALT_INV_Mux4~0_combout\ <= NOT \decodifier_inst|Mux4~0_combout\;

-- Location: LCFF_X33_Y12_N31
\debounce_inst|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[31]~95_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(31));

-- Location: LCFF_X33_Y13_N13
\debounce_inst|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[6]~45_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(6));

-- Location: LCFF_X33_Y13_N21
\debounce_inst|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[10]~53_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(10));

-- Location: LCFF_X33_Y12_N13
\debounce_inst|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[22]~77_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(22));

-- Location: LCFF_X33_Y12_N17
\debounce_inst|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[24]~81_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(24));

-- Location: LCFF_X33_Y12_N21
\debounce_inst|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[26]~85_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(26));

-- Location: LCFF_X36_Y9_N31
\keyboard_inst|clock_count[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[31]~94_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(31));

-- Location: LCFF_X36_Y10_N13
\keyboard_inst|clock_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[6]~44_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(6));

-- Location: LCFF_X36_Y10_N17
\keyboard_inst|clock_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[8]~48_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(8));

-- Location: LCFF_X36_Y10_N21
\keyboard_inst|clock_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[10]~52_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(10));

-- Location: LCFF_X36_Y9_N11
\keyboard_inst|clock_count[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[21]~74_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(21));

-- Location: LCFF_X36_Y9_N13
\keyboard_inst|clock_count[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[22]~76_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(22));

-- Location: LCFF_X36_Y9_N21
\keyboard_inst|clock_count[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[26]~84_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(26));

-- Location: LCFF_X36_Y9_N25
\keyboard_inst|clock_count[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[28]~88_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(28));

-- Location: LCCOMB_X33_Y13_N12
\debounce_inst|counter[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[6]~45_combout\ = (\debounce_inst|counter\(6) & (\debounce_inst|counter[5]~44\ $ (GND))) # (!\debounce_inst|counter\(6) & (!\debounce_inst|counter[5]~44\ & VCC))
-- \debounce_inst|counter[6]~46\ = CARRY((\debounce_inst|counter\(6) & !\debounce_inst|counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(6),
	datad => VCC,
	cin => \debounce_inst|counter[5]~44\,
	combout => \debounce_inst|counter[6]~45_combout\,
	cout => \debounce_inst|counter[6]~46\);

-- Location: LCCOMB_X33_Y13_N20
\debounce_inst|counter[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[10]~53_combout\ = (\debounce_inst|counter\(10) & (\debounce_inst|counter[9]~52\ $ (GND))) # (!\debounce_inst|counter\(10) & (!\debounce_inst|counter[9]~52\ & VCC))
-- \debounce_inst|counter[10]~54\ = CARRY((\debounce_inst|counter\(10) & !\debounce_inst|counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(10),
	datad => VCC,
	cin => \debounce_inst|counter[9]~52\,
	combout => \debounce_inst|counter[10]~53_combout\,
	cout => \debounce_inst|counter[10]~54\);

-- Location: LCCOMB_X33_Y12_N12
\debounce_inst|counter[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[22]~77_combout\ = (\debounce_inst|counter\(22) & (\debounce_inst|counter[21]~76\ $ (GND))) # (!\debounce_inst|counter\(22) & (!\debounce_inst|counter[21]~76\ & VCC))
-- \debounce_inst|counter[22]~78\ = CARRY((\debounce_inst|counter\(22) & !\debounce_inst|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(22),
	datad => VCC,
	cin => \debounce_inst|counter[21]~76\,
	combout => \debounce_inst|counter[22]~77_combout\,
	cout => \debounce_inst|counter[22]~78\);

-- Location: LCCOMB_X33_Y12_N16
\debounce_inst|counter[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[24]~81_combout\ = (\debounce_inst|counter\(24) & (\debounce_inst|counter[23]~80\ $ (GND))) # (!\debounce_inst|counter\(24) & (!\debounce_inst|counter[23]~80\ & VCC))
-- \debounce_inst|counter[24]~82\ = CARRY((\debounce_inst|counter\(24) & !\debounce_inst|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(24),
	datad => VCC,
	cin => \debounce_inst|counter[23]~80\,
	combout => \debounce_inst|counter[24]~81_combout\,
	cout => \debounce_inst|counter[24]~82\);

-- Location: LCCOMB_X33_Y12_N20
\debounce_inst|counter[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[26]~85_combout\ = (\debounce_inst|counter\(26) & (\debounce_inst|counter[25]~84\ $ (GND))) # (!\debounce_inst|counter\(26) & (!\debounce_inst|counter[25]~84\ & VCC))
-- \debounce_inst|counter[26]~86\ = CARRY((\debounce_inst|counter\(26) & !\debounce_inst|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(26),
	datad => VCC,
	cin => \debounce_inst|counter[25]~84\,
	combout => \debounce_inst|counter[26]~85_combout\,
	cout => \debounce_inst|counter[26]~86\);

-- Location: LCCOMB_X33_Y12_N28
\debounce_inst|counter[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[30]~93_combout\ = (\debounce_inst|counter\(30) & (\debounce_inst|counter[29]~92\ $ (GND))) # (!\debounce_inst|counter\(30) & (!\debounce_inst|counter[29]~92\ & VCC))
-- \debounce_inst|counter[30]~94\ = CARRY((\debounce_inst|counter\(30) & !\debounce_inst|counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(30),
	datad => VCC,
	cin => \debounce_inst|counter[29]~92\,
	combout => \debounce_inst|counter[30]~93_combout\,
	cout => \debounce_inst|counter[30]~94\);

-- Location: LCCOMB_X33_Y12_N30
\debounce_inst|counter[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[31]~95_combout\ = \debounce_inst|counter[30]~94\ $ (\debounce_inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debounce_inst|counter\(31),
	cin => \debounce_inst|counter[30]~94\,
	combout => \debounce_inst|counter[31]~95_combout\);

-- Location: LCCOMB_X36_Y10_N12
\keyboard_inst|clock_count[6]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[6]~44_combout\ = (\keyboard_inst|clock_count\(6) & (\keyboard_inst|clock_count[5]~43\ $ (GND))) # (!\keyboard_inst|clock_count\(6) & (!\keyboard_inst|clock_count[5]~43\ & VCC))
-- \keyboard_inst|clock_count[6]~45\ = CARRY((\keyboard_inst|clock_count\(6) & !\keyboard_inst|clock_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(6),
	datad => VCC,
	cin => \keyboard_inst|clock_count[5]~43\,
	combout => \keyboard_inst|clock_count[6]~44_combout\,
	cout => \keyboard_inst|clock_count[6]~45\);

-- Location: LCCOMB_X36_Y10_N16
\keyboard_inst|clock_count[8]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[8]~48_combout\ = (\keyboard_inst|clock_count\(8) & (\keyboard_inst|clock_count[7]~47\ $ (GND))) # (!\keyboard_inst|clock_count\(8) & (!\keyboard_inst|clock_count[7]~47\ & VCC))
-- \keyboard_inst|clock_count[8]~49\ = CARRY((\keyboard_inst|clock_count\(8) & !\keyboard_inst|clock_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(8),
	datad => VCC,
	cin => \keyboard_inst|clock_count[7]~47\,
	combout => \keyboard_inst|clock_count[8]~48_combout\,
	cout => \keyboard_inst|clock_count[8]~49\);

-- Location: LCCOMB_X36_Y10_N20
\keyboard_inst|clock_count[10]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[10]~52_combout\ = (\keyboard_inst|clock_count\(10) & (\keyboard_inst|clock_count[9]~51\ $ (GND))) # (!\keyboard_inst|clock_count\(10) & (!\keyboard_inst|clock_count[9]~51\ & VCC))
-- \keyboard_inst|clock_count[10]~53\ = CARRY((\keyboard_inst|clock_count\(10) & !\keyboard_inst|clock_count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(10),
	datad => VCC,
	cin => \keyboard_inst|clock_count[9]~51\,
	combout => \keyboard_inst|clock_count[10]~52_combout\,
	cout => \keyboard_inst|clock_count[10]~53\);

-- Location: LCCOMB_X36_Y9_N10
\keyboard_inst|clock_count[21]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[21]~74_combout\ = (\keyboard_inst|clock_count\(21) & (!\keyboard_inst|clock_count[20]~73\)) # (!\keyboard_inst|clock_count\(21) & ((\keyboard_inst|clock_count[20]~73\) # (GND)))
-- \keyboard_inst|clock_count[21]~75\ = CARRY((!\keyboard_inst|clock_count[20]~73\) # (!\keyboard_inst|clock_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(21),
	datad => VCC,
	cin => \keyboard_inst|clock_count[20]~73\,
	combout => \keyboard_inst|clock_count[21]~74_combout\,
	cout => \keyboard_inst|clock_count[21]~75\);

-- Location: LCCOMB_X36_Y9_N12
\keyboard_inst|clock_count[22]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[22]~76_combout\ = (\keyboard_inst|clock_count\(22) & (\keyboard_inst|clock_count[21]~75\ $ (GND))) # (!\keyboard_inst|clock_count\(22) & (!\keyboard_inst|clock_count[21]~75\ & VCC))
-- \keyboard_inst|clock_count[22]~77\ = CARRY((\keyboard_inst|clock_count\(22) & !\keyboard_inst|clock_count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(22),
	datad => VCC,
	cin => \keyboard_inst|clock_count[21]~75\,
	combout => \keyboard_inst|clock_count[22]~76_combout\,
	cout => \keyboard_inst|clock_count[22]~77\);

-- Location: LCCOMB_X36_Y9_N20
\keyboard_inst|clock_count[26]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[26]~84_combout\ = (\keyboard_inst|clock_count\(26) & (\keyboard_inst|clock_count[25]~83\ $ (GND))) # (!\keyboard_inst|clock_count\(26) & (!\keyboard_inst|clock_count[25]~83\ & VCC))
-- \keyboard_inst|clock_count[26]~85\ = CARRY((\keyboard_inst|clock_count\(26) & !\keyboard_inst|clock_count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(26),
	datad => VCC,
	cin => \keyboard_inst|clock_count[25]~83\,
	combout => \keyboard_inst|clock_count[26]~84_combout\,
	cout => \keyboard_inst|clock_count[26]~85\);

-- Location: LCCOMB_X36_Y9_N24
\keyboard_inst|clock_count[28]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[28]~88_combout\ = (\keyboard_inst|clock_count\(28) & (\keyboard_inst|clock_count[27]~87\ $ (GND))) # (!\keyboard_inst|clock_count\(28) & (!\keyboard_inst|clock_count[27]~87\ & VCC))
-- \keyboard_inst|clock_count[28]~89\ = CARRY((\keyboard_inst|clock_count\(28) & !\keyboard_inst|clock_count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(28),
	datad => VCC,
	cin => \keyboard_inst|clock_count[27]~87\,
	combout => \keyboard_inst|clock_count[28]~88_combout\,
	cout => \keyboard_inst|clock_count[28]~89\);

-- Location: LCCOMB_X36_Y9_N28
\keyboard_inst|clock_count[30]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[30]~92_combout\ = (\keyboard_inst|clock_count\(30) & (\keyboard_inst|clock_count[29]~91\ $ (GND))) # (!\keyboard_inst|clock_count\(30) & (!\keyboard_inst|clock_count[29]~91\ & VCC))
-- \keyboard_inst|clock_count[30]~93\ = CARRY((\keyboard_inst|clock_count\(30) & !\keyboard_inst|clock_count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(30),
	datad => VCC,
	cin => \keyboard_inst|clock_count[29]~91\,
	combout => \keyboard_inst|clock_count[30]~92_combout\,
	cout => \keyboard_inst|clock_count[30]~93\);

-- Location: LCCOMB_X36_Y9_N30
\keyboard_inst|clock_count[31]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[31]~94_combout\ = \keyboard_inst|clock_count[30]~93\ $ (\keyboard_inst|clock_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keyboard_inst|clock_count\(31),
	cin => \keyboard_inst|clock_count[30]~93\,
	combout => \keyboard_inst|clock_count[31]~94_combout\);

-- Location: LCFF_X35_Y12_N21
\debounce_inst|keypad_debounce_aux[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux5~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(8));

-- Location: LCCOMB_X35_Y12_N16
\decodifier_inst|decoded_key[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[3]~2_combout\ = (\debounce_inst|keypad_debounce_aux\(8)) # ((\debounce_inst|keypad_debounce_aux\(7)) # ((\debounce_inst|keypad_debounce_aux\(9)) # (\debounce_inst|keypad_debounce_aux\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(8),
	datab => \debounce_inst|keypad_debounce_aux\(7),
	datac => \debounce_inst|keypad_debounce_aux\(9),
	datad => \debounce_inst|keypad_debounce_aux\(10),
	combout => \decodifier_inst|decoded_key[3]~2_combout\);

-- Location: LCCOMB_X30_Y12_N12
\decodifier_inst|decoded_key[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[3]~6_combout\ = (\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \decodifier_inst|decoded_key[3]~6_combout\);

-- Location: LCCOMB_X31_Y12_N16
\decodifier_inst|decoded_key[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[0]~7_combout\ = (\debounce_inst|keypad_debounce_aux\(0)) # ((\debounce_inst|keypad_debounce_aux\(3)) # ((!\debounce_inst|keypad_debounce_aux\(4) & \debounce_inst|keypad_debounce_aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(4),
	datab => \debounce_inst|keypad_debounce_aux\(5),
	datac => \debounce_inst|keypad_debounce_aux\(0),
	datad => \debounce_inst|keypad_debounce_aux\(3),
	combout => \decodifier_inst|decoded_key[0]~7_combout\);

-- Location: LCCOMB_X31_Y12_N6
\decodifier_inst|decoded_key[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[2]~12_combout\ = (\decodifier_inst|decoded_key[0]~3_combout\ & (\debounce_inst|keypad_debounce_aux\(7) & (\decodifier_inst|decoded_key[2]~4_combout\ & !\debounce_inst|keypad_debounce_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[0]~3_combout\,
	datab => \debounce_inst|keypad_debounce_aux\(7),
	datac => \decodifier_inst|decoded_key[2]~4_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|decoded_key[2]~12_combout\);

-- Location: LCFF_X37_Y12_N21
\keyboard_inst|key_pressed[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux3~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(8));

-- Location: LCCOMB_X34_Y12_N0
\debounce_inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~6_combout\ = (\debounce_inst|counter\(22)) # ((\debounce_inst|counter\(24)) # ((\debounce_inst|counter\(23)) # (\debounce_inst|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(22),
	datab => \debounce_inst|counter\(24),
	datac => \debounce_inst|counter\(23),
	datad => \debounce_inst|counter\(25),
	combout => \debounce_inst|LessThan0~6_combout\);

-- Location: LCFF_X36_Y12_N19
\debounce_inst|input_test[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux17~0_combout\,
	sload => VCC,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(8));

-- Location: LCCOMB_X35_Y12_N20
\debounce_inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux5~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(8),
	combout => \debounce_inst|Mux5~0_combout\);

-- Location: LCFF_X36_Y12_N17
\debounce_inst|input_test[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux16~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(9));

-- Location: LCFF_X36_Y12_N7
\debounce_inst|input_test[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux21~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(4));

-- Location: LCFF_X32_Y12_N7
\debounce_inst|input_test[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux24~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(1));

-- Location: LCCOMB_X36_Y12_N20
\debounce_inst|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~2_combout\ = (\debounce_inst|input_test\(4) & (\keyboard_inst|key_pressed\(4) & (\debounce_inst|input_test\(5) $ (!\keyboard_inst|key_pressed\(5))))) # (!\debounce_inst|input_test\(4) & (!\keyboard_inst|key_pressed\(4) & 
-- (\debounce_inst|input_test\(5) $ (!\keyboard_inst|key_pressed\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(4),
	datab => \debounce_inst|input_test\(5),
	datac => \keyboard_inst|key_pressed\(5),
	datad => \keyboard_inst|key_pressed\(4),
	combout => \debounce_inst|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y12_N18
\debounce_inst|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~5_combout\ = (\debounce_inst|input_test\(9) & (\keyboard_inst|key_pressed\(9) & (\keyboard_inst|key_pressed\(8) $ (!\debounce_inst|input_test\(8))))) # (!\debounce_inst|input_test\(9) & (!\keyboard_inst|key_pressed\(9) & 
-- (\keyboard_inst|key_pressed\(8) $ (!\debounce_inst|input_test\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(9),
	datab => \keyboard_inst|key_pressed\(8),
	datac => \debounce_inst|input_test\(8),
	datad => \keyboard_inst|key_pressed\(9),
	combout => \debounce_inst|Equal1~5_combout\);

-- Location: LCCOMB_X37_Y10_N16
\keyboard_inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~0_combout\ = (!\keyboard_inst|clock_count\(7) & (!\keyboard_inst|clock_count\(8) & (!\keyboard_inst|clock_count\(6) & !\keyboard_inst|clock_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(7),
	datab => \keyboard_inst|clock_count\(8),
	datac => \keyboard_inst|clock_count\(6),
	datad => \keyboard_inst|clock_count\(9),
	combout => \keyboard_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y9_N20
\keyboard_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~7_combout\ = (!\keyboard_inst|clock_count\(26) & (!\keyboard_inst|clock_count\(29) & (!\keyboard_inst|clock_count\(27) & !\keyboard_inst|clock_count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(26),
	datab => \keyboard_inst|clock_count\(29),
	datac => \keyboard_inst|clock_count\(27),
	datad => \keyboard_inst|clock_count\(28),
	combout => \keyboard_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X37_Y12_N20
\keyboard_inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux3~0_combout\ = (!\keyboard_inst|column_int\(0) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(0) & \keyboard_inst|column_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(0),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(0),
	datad => \keyboard_inst|column_int\(2),
	combout => \keyboard_inst|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y12_N12
\debounce_inst|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux17~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(8),
	combout => \debounce_inst|Mux17~0_combout\);

-- Location: LCCOMB_X36_Y12_N16
\debounce_inst|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux16~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(9),
	combout => \debounce_inst|Mux16~0_combout\);

-- Location: LCCOMB_X36_Y12_N6
\debounce_inst|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux21~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(4),
	combout => \debounce_inst|Mux21~0_combout\);

-- Location: LCCOMB_X32_Y12_N6
\debounce_inst|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux24~0_combout\ = (\keyboard_inst|key_pressed\(1) & !\debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|key_pressed\(1),
	datac => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux24~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(3),
	combout => \switches~combout\(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(1),
	combout => \switches~combout\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(2),
	combout => \switches~combout\(2));

-- Location: LCCOMB_X58_Y4_N28
\decodifier_inst|op.Sum~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sum~0_combout\ = (\switches~combout\(0) & (!\switches~combout\(3) & (!\switches~combout\(1) & !\switches~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(0),
	datab => \switches~combout\(3),
	datac => \switches~combout\(1),
	datad => \switches~combout\(2),
	combout => \decodifier_inst|op.Sum~0_combout\);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(9),
	combout => \switches~combout\(9));

-- Location: LCCOMB_X58_Y4_N18
\decodifier_inst|op.Sum~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sum~1_combout\ = (\decodifier_inst|op.Sum~0_combout\ & !\switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|op.Sum~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Sum~1_combout\);

-- Location: LCCOMB_X58_Y4_N16
\decodifier_inst|op.Sub~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sub~0_combout\ = (!\switches~combout\(0) & (!\switches~combout\(3) & (\switches~combout\(1) & !\switches~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(0),
	datab => \switches~combout\(3),
	datac => \switches~combout\(1),
	datad => \switches~combout\(2),
	combout => \decodifier_inst|op.Sub~0_combout\);

-- Location: LCCOMB_X58_Y4_N22
\decodifier_inst|op.Sub~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sub~1_combout\ = (\decodifier_inst|op.Sub~0_combout\ & !\switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Sub~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Sub~1_combout\);

-- Location: LCCOMB_X58_Y4_N4
\decodifier_inst|op.Mul~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Mul~0_combout\ = (!\switches~combout\(0) & (!\switches~combout\(3) & (!\switches~combout\(1) & \switches~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(0),
	datab => \switches~combout\(3),
	datac => \switches~combout\(1),
	datad => \switches~combout\(2),
	combout => \decodifier_inst|op.Mul~0_combout\);

-- Location: LCCOMB_X58_Y4_N30
\decodifier_inst|op.Mul~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Mul~1_combout\ = (\decodifier_inst|op.Mul~0_combout\ & !\switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Mul~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Mul~1_combout\);

-- Location: LCCOMB_X58_Y4_N24
\decodifier_inst|op.Div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Div~0_combout\ = (!\switches~combout\(0) & (\switches~combout\(3) & (!\switches~combout\(1) & !\switches~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(0),
	datab => \switches~combout\(3),
	datac => \switches~combout\(1),
	datad => \switches~combout\(2),
	combout => \decodifier_inst|op.Div~0_combout\);

-- Location: LCCOMB_X58_Y4_N10
\decodifier_inst|op.Div~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Div~1_combout\ = (\decodifier_inst|op.Div~0_combout\ & !\switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Div~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Div~1_combout\);

-- Location: LCCOMB_X58_Y4_N8
\decodifier_inst|op.Cos~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Cos~0_combout\ = (\decodifier_inst|op.Sum~0_combout\ & \switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|op.Sum~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Cos~0_combout\);

-- Location: LCCOMB_X58_Y4_N2
\decodifier_inst|op.Sin~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sin~0_combout\ = (\decodifier_inst|op.Sub~0_combout\ & \switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Sub~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Sin~0_combout\);

-- Location: LCCOMB_X58_Y4_N12
\decodifier_inst|op.Sqrt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Sqrt~0_combout\ = (\decodifier_inst|op.Mul~0_combout\ & \switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Mul~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Sqrt~0_combout\);

-- Location: LCCOMB_X58_Y4_N26
\decodifier_inst|op.Log~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|op.Log~0_combout\ = (\decodifier_inst|op.Div~0_combout\ & \switches~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \decodifier_inst|op.Div~0_combout\,
	datad => \switches~combout\(9),
	combout => \decodifier_inst|op.Log~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(0),
	combout => \switches~combout\(0));

-- Location: LCCOMB_X58_Y4_N0
\decodifier_inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|Mux4~0_combout\ = (\switches~combout\(0) & (!\switches~combout\(3) & (!\switches~combout\(1) & !\switches~combout\(2)))) # (!\switches~combout\(0) & ((\switches~combout\(3) & (!\switches~combout\(1) & !\switches~combout\(2))) # 
-- (!\switches~combout\(3) & (\switches~combout\(1) $ (\switches~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches~combout\(0),
	datab => \switches~combout\(3),
	datac => \switches~combout\(1),
	datad => \switches~combout\(2),
	combout => \decodifier_inst|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y13_N0
\debounce_inst|counter[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[0]~33_combout\ = \debounce_inst|counter\(0) $ (VCC)
-- \debounce_inst|counter[0]~34\ = CARRY(\debounce_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(0),
	datad => VCC,
	combout => \debounce_inst|counter[0]~33_combout\,
	cout => \debounce_inst|counter[0]~34\);

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_col(1),
	combout => \col~combout\(1));

-- Location: LCCOMB_X37_Y12_N18
\keyboard_inst|column_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|column_int[1]~2_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(1),
	combout => \keyboard_inst|column_int[1]~2_combout\);

-- Location: LCFF_X37_Y12_N19
\keyboard_inst|column_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|column_int[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|column_int\(1));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_row(2),
	combout => \row~combout\(2));

-- Location: LCCOMB_X38_Y12_N14
\keyboard_inst|rows_int[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|rows_int[2]~feeder_combout\ = \row~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row~combout\(2),
	combout => \keyboard_inst|rows_int[2]~feeder_combout\);

-- Location: LCFF_X38_Y12_N15
\keyboard_inst|rows_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|rows_int[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|rows_int\(2));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_col(0),
	combout => \col~combout\(0));

-- Location: LCCOMB_X37_Y12_N12
\keyboard_inst|column_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|column_int[0]~1_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \keyboard_inst|column_int[0]~1_combout\);

-- Location: LCFF_X37_Y12_N13
\keyboard_inst|column_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|column_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|column_int\(0));

-- Location: LCCOMB_X37_Y12_N14
\keyboard_inst|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux9~0_combout\ = (!\keyboard_inst|column_int\(2) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(2) & \keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(2),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y10_N0
\keyboard_inst|clock_count[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[0]~32_combout\ = \keyboard_inst|clock_count\(0) $ (VCC)
-- \keyboard_inst|clock_count[0]~33\ = CARRY(\keyboard_inst|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(0),
	datad => VCC,
	combout => \keyboard_inst|clock_count[0]~32_combout\,
	cout => \keyboard_inst|clock_count[0]~33\);

-- Location: LCFF_X36_Y10_N1
\keyboard_inst|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[0]~32_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(0));

-- Location: LCCOMB_X36_Y10_N2
\keyboard_inst|clock_count[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[1]~34_combout\ = (\keyboard_inst|clock_count\(1) & (!\keyboard_inst|clock_count[0]~33\)) # (!\keyboard_inst|clock_count\(1) & ((\keyboard_inst|clock_count[0]~33\) # (GND)))
-- \keyboard_inst|clock_count[1]~35\ = CARRY((!\keyboard_inst|clock_count[0]~33\) # (!\keyboard_inst|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(1),
	datad => VCC,
	cin => \keyboard_inst|clock_count[0]~33\,
	combout => \keyboard_inst|clock_count[1]~34_combout\,
	cout => \keyboard_inst|clock_count[1]~35\);

-- Location: LCFF_X36_Y10_N3
\keyboard_inst|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[1]~34_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(1));

-- Location: LCCOMB_X36_Y10_N4
\keyboard_inst|clock_count[2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[2]~36_combout\ = (\keyboard_inst|clock_count\(2) & (\keyboard_inst|clock_count[1]~35\ $ (GND))) # (!\keyboard_inst|clock_count\(2) & (!\keyboard_inst|clock_count[1]~35\ & VCC))
-- \keyboard_inst|clock_count[2]~37\ = CARRY((\keyboard_inst|clock_count\(2) & !\keyboard_inst|clock_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(2),
	datad => VCC,
	cin => \keyboard_inst|clock_count[1]~35\,
	combout => \keyboard_inst|clock_count[2]~36_combout\,
	cout => \keyboard_inst|clock_count[2]~37\);

-- Location: LCFF_X36_Y10_N5
\keyboard_inst|clock_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[2]~36_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(2));

-- Location: LCCOMB_X36_Y10_N6
\keyboard_inst|clock_count[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[3]~38_combout\ = (\keyboard_inst|clock_count\(3) & (!\keyboard_inst|clock_count[2]~37\)) # (!\keyboard_inst|clock_count\(3) & ((\keyboard_inst|clock_count[2]~37\) # (GND)))
-- \keyboard_inst|clock_count[3]~39\ = CARRY((!\keyboard_inst|clock_count[2]~37\) # (!\keyboard_inst|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(3),
	datad => VCC,
	cin => \keyboard_inst|clock_count[2]~37\,
	combout => \keyboard_inst|clock_count[3]~38_combout\,
	cout => \keyboard_inst|clock_count[3]~39\);

-- Location: LCCOMB_X36_Y10_N8
\keyboard_inst|clock_count[4]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[4]~40_combout\ = (\keyboard_inst|clock_count\(4) & (\keyboard_inst|clock_count[3]~39\ $ (GND))) # (!\keyboard_inst|clock_count\(4) & (!\keyboard_inst|clock_count[3]~39\ & VCC))
-- \keyboard_inst|clock_count[4]~41\ = CARRY((\keyboard_inst|clock_count\(4) & !\keyboard_inst|clock_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(4),
	datad => VCC,
	cin => \keyboard_inst|clock_count[3]~39\,
	combout => \keyboard_inst|clock_count[4]~40_combout\,
	cout => \keyboard_inst|clock_count[4]~41\);

-- Location: LCFF_X36_Y10_N9
\keyboard_inst|clock_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[4]~40_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(4));

-- Location: LCCOMB_X36_Y10_N10
\keyboard_inst|clock_count[5]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[5]~42_combout\ = (\keyboard_inst|clock_count\(5) & (!\keyboard_inst|clock_count[4]~41\)) # (!\keyboard_inst|clock_count\(5) & ((\keyboard_inst|clock_count[4]~41\) # (GND)))
-- \keyboard_inst|clock_count[5]~43\ = CARRY((!\keyboard_inst|clock_count[4]~41\) # (!\keyboard_inst|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(5),
	datad => VCC,
	cin => \keyboard_inst|clock_count[4]~41\,
	combout => \keyboard_inst|clock_count[5]~42_combout\,
	cout => \keyboard_inst|clock_count[5]~43\);

-- Location: LCCOMB_X36_Y10_N14
\keyboard_inst|clock_count[7]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[7]~46_combout\ = (\keyboard_inst|clock_count\(7) & (!\keyboard_inst|clock_count[6]~45\)) # (!\keyboard_inst|clock_count\(7) & ((\keyboard_inst|clock_count[6]~45\) # (GND)))
-- \keyboard_inst|clock_count[7]~47\ = CARRY((!\keyboard_inst|clock_count[6]~45\) # (!\keyboard_inst|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(7),
	datad => VCC,
	cin => \keyboard_inst|clock_count[6]~45\,
	combout => \keyboard_inst|clock_count[7]~46_combout\,
	cout => \keyboard_inst|clock_count[7]~47\);

-- Location: LCFF_X36_Y10_N15
\keyboard_inst|clock_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[7]~46_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(7));

-- Location: LCCOMB_X36_Y10_N18
\keyboard_inst|clock_count[9]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[9]~50_combout\ = (\keyboard_inst|clock_count\(9) & (!\keyboard_inst|clock_count[8]~49\)) # (!\keyboard_inst|clock_count\(9) & ((\keyboard_inst|clock_count[8]~49\) # (GND)))
-- \keyboard_inst|clock_count[9]~51\ = CARRY((!\keyboard_inst|clock_count[8]~49\) # (!\keyboard_inst|clock_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(9),
	datad => VCC,
	cin => \keyboard_inst|clock_count[8]~49\,
	combout => \keyboard_inst|clock_count[9]~50_combout\,
	cout => \keyboard_inst|clock_count[9]~51\);

-- Location: LCFF_X36_Y10_N19
\keyboard_inst|clock_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[9]~50_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(9));

-- Location: LCCOMB_X36_Y10_N22
\keyboard_inst|clock_count[11]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[11]~54_combout\ = (\keyboard_inst|clock_count\(11) & (!\keyboard_inst|clock_count[10]~53\)) # (!\keyboard_inst|clock_count\(11) & ((\keyboard_inst|clock_count[10]~53\) # (GND)))
-- \keyboard_inst|clock_count[11]~55\ = CARRY((!\keyboard_inst|clock_count[10]~53\) # (!\keyboard_inst|clock_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(11),
	datad => VCC,
	cin => \keyboard_inst|clock_count[10]~53\,
	combout => \keyboard_inst|clock_count[11]~54_combout\,
	cout => \keyboard_inst|clock_count[11]~55\);

-- Location: LCFF_X36_Y10_N23
\keyboard_inst|clock_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[11]~54_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(11));

-- Location: LCCOMB_X36_Y10_N24
\keyboard_inst|clock_count[12]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[12]~56_combout\ = (\keyboard_inst|clock_count\(12) & (\keyboard_inst|clock_count[11]~55\ $ (GND))) # (!\keyboard_inst|clock_count\(12) & (!\keyboard_inst|clock_count[11]~55\ & VCC))
-- \keyboard_inst|clock_count[12]~57\ = CARRY((\keyboard_inst|clock_count\(12) & !\keyboard_inst|clock_count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(12),
	datad => VCC,
	cin => \keyboard_inst|clock_count[11]~55\,
	combout => \keyboard_inst|clock_count[12]~56_combout\,
	cout => \keyboard_inst|clock_count[12]~57\);

-- Location: LCCOMB_X36_Y10_N26
\keyboard_inst|clock_count[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[13]~58_combout\ = (\keyboard_inst|clock_count\(13) & (!\keyboard_inst|clock_count[12]~57\)) # (!\keyboard_inst|clock_count\(13) & ((\keyboard_inst|clock_count[12]~57\) # (GND)))
-- \keyboard_inst|clock_count[13]~59\ = CARRY((!\keyboard_inst|clock_count[12]~57\) # (!\keyboard_inst|clock_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(13),
	datad => VCC,
	cin => \keyboard_inst|clock_count[12]~57\,
	combout => \keyboard_inst|clock_count[13]~58_combout\,
	cout => \keyboard_inst|clock_count[13]~59\);

-- Location: LCFF_X37_Y9_N1
\keyboard_inst|clock_count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|clock_count[13]~58_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(13));

-- Location: LCCOMB_X36_Y10_N28
\keyboard_inst|clock_count[14]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[14]~60_combout\ = (\keyboard_inst|clock_count\(14) & (\keyboard_inst|clock_count[13]~59\ $ (GND))) # (!\keyboard_inst|clock_count\(14) & (!\keyboard_inst|clock_count[13]~59\ & VCC))
-- \keyboard_inst|clock_count[14]~61\ = CARRY((\keyboard_inst|clock_count\(14) & !\keyboard_inst|clock_count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(14),
	datad => VCC,
	cin => \keyboard_inst|clock_count[13]~59\,
	combout => \keyboard_inst|clock_count[14]~60_combout\,
	cout => \keyboard_inst|clock_count[14]~61\);

-- Location: LCFF_X36_Y10_N29
\keyboard_inst|clock_count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[14]~60_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(14));

-- Location: LCCOMB_X36_Y10_N30
\keyboard_inst|clock_count[15]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[15]~62_combout\ = (\keyboard_inst|clock_count\(15) & (!\keyboard_inst|clock_count[14]~61\)) # (!\keyboard_inst|clock_count\(15) & ((\keyboard_inst|clock_count[14]~61\) # (GND)))
-- \keyboard_inst|clock_count[15]~63\ = CARRY((!\keyboard_inst|clock_count[14]~61\) # (!\keyboard_inst|clock_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(15),
	datad => VCC,
	cin => \keyboard_inst|clock_count[14]~61\,
	combout => \keyboard_inst|clock_count[15]~62_combout\,
	cout => \keyboard_inst|clock_count[15]~63\);

-- Location: LCFF_X36_Y10_N31
\keyboard_inst|clock_count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[15]~62_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(15));

-- Location: LCCOMB_X36_Y9_N0
\keyboard_inst|clock_count[16]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[16]~64_combout\ = (\keyboard_inst|clock_count\(16) & (\keyboard_inst|clock_count[15]~63\ $ (GND))) # (!\keyboard_inst|clock_count\(16) & (!\keyboard_inst|clock_count[15]~63\ & VCC))
-- \keyboard_inst|clock_count[16]~65\ = CARRY((\keyboard_inst|clock_count\(16) & !\keyboard_inst|clock_count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(16),
	datad => VCC,
	cin => \keyboard_inst|clock_count[15]~63\,
	combout => \keyboard_inst|clock_count[16]~64_combout\,
	cout => \keyboard_inst|clock_count[16]~65\);

-- Location: LCFF_X36_Y9_N1
\keyboard_inst|clock_count[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[16]~64_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(16));

-- Location: LCCOMB_X36_Y9_N2
\keyboard_inst|clock_count[17]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[17]~66_combout\ = (\keyboard_inst|clock_count\(17) & (!\keyboard_inst|clock_count[16]~65\)) # (!\keyboard_inst|clock_count\(17) & ((\keyboard_inst|clock_count[16]~65\) # (GND)))
-- \keyboard_inst|clock_count[17]~67\ = CARRY((!\keyboard_inst|clock_count[16]~65\) # (!\keyboard_inst|clock_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(17),
	datad => VCC,
	cin => \keyboard_inst|clock_count[16]~65\,
	combout => \keyboard_inst|clock_count[17]~66_combout\,
	cout => \keyboard_inst|clock_count[17]~67\);

-- Location: LCFF_X36_Y9_N3
\keyboard_inst|clock_count[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[17]~66_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(17));

-- Location: LCCOMB_X36_Y9_N4
\keyboard_inst|clock_count[18]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[18]~68_combout\ = (\keyboard_inst|clock_count\(18) & (\keyboard_inst|clock_count[17]~67\ $ (GND))) # (!\keyboard_inst|clock_count\(18) & (!\keyboard_inst|clock_count[17]~67\ & VCC))
-- \keyboard_inst|clock_count[18]~69\ = CARRY((\keyboard_inst|clock_count\(18) & !\keyboard_inst|clock_count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(18),
	datad => VCC,
	cin => \keyboard_inst|clock_count[17]~67\,
	combout => \keyboard_inst|clock_count[18]~68_combout\,
	cout => \keyboard_inst|clock_count[18]~69\);

-- Location: LCFF_X36_Y9_N5
\keyboard_inst|clock_count[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[18]~68_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(18));

-- Location: LCCOMB_X36_Y9_N6
\keyboard_inst|clock_count[19]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[19]~70_combout\ = (\keyboard_inst|clock_count\(19) & (!\keyboard_inst|clock_count[18]~69\)) # (!\keyboard_inst|clock_count\(19) & ((\keyboard_inst|clock_count[18]~69\) # (GND)))
-- \keyboard_inst|clock_count[19]~71\ = CARRY((!\keyboard_inst|clock_count[18]~69\) # (!\keyboard_inst|clock_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(19),
	datad => VCC,
	cin => \keyboard_inst|clock_count[18]~69\,
	combout => \keyboard_inst|clock_count[19]~70_combout\,
	cout => \keyboard_inst|clock_count[19]~71\);

-- Location: LCCOMB_X36_Y9_N8
\keyboard_inst|clock_count[20]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[20]~72_combout\ = (\keyboard_inst|clock_count\(20) & (\keyboard_inst|clock_count[19]~71\ $ (GND))) # (!\keyboard_inst|clock_count\(20) & (!\keyboard_inst|clock_count[19]~71\ & VCC))
-- \keyboard_inst|clock_count[20]~73\ = CARRY((\keyboard_inst|clock_count\(20) & !\keyboard_inst|clock_count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(20),
	datad => VCC,
	cin => \keyboard_inst|clock_count[19]~71\,
	combout => \keyboard_inst|clock_count[20]~72_combout\,
	cout => \keyboard_inst|clock_count[20]~73\);

-- Location: LCFF_X36_Y9_N9
\keyboard_inst|clock_count[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[20]~72_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(20));

-- Location: LCCOMB_X36_Y9_N14
\keyboard_inst|clock_count[23]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[23]~78_combout\ = (\keyboard_inst|clock_count\(23) & (!\keyboard_inst|clock_count[22]~77\)) # (!\keyboard_inst|clock_count\(23) & ((\keyboard_inst|clock_count[22]~77\) # (GND)))
-- \keyboard_inst|clock_count[23]~79\ = CARRY((!\keyboard_inst|clock_count[22]~77\) # (!\keyboard_inst|clock_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(23),
	datad => VCC,
	cin => \keyboard_inst|clock_count[22]~77\,
	combout => \keyboard_inst|clock_count[23]~78_combout\,
	cout => \keyboard_inst|clock_count[23]~79\);

-- Location: LCFF_X36_Y9_N15
\keyboard_inst|clock_count[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[23]~78_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(23));

-- Location: LCCOMB_X36_Y9_N16
\keyboard_inst|clock_count[24]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[24]~80_combout\ = (\keyboard_inst|clock_count\(24) & (\keyboard_inst|clock_count[23]~79\ $ (GND))) # (!\keyboard_inst|clock_count\(24) & (!\keyboard_inst|clock_count[23]~79\ & VCC))
-- \keyboard_inst|clock_count[24]~81\ = CARRY((\keyboard_inst|clock_count\(24) & !\keyboard_inst|clock_count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(24),
	datad => VCC,
	cin => \keyboard_inst|clock_count[23]~79\,
	combout => \keyboard_inst|clock_count[24]~80_combout\,
	cout => \keyboard_inst|clock_count[24]~81\);

-- Location: LCCOMB_X36_Y9_N18
\keyboard_inst|clock_count[25]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[25]~82_combout\ = (\keyboard_inst|clock_count\(25) & (!\keyboard_inst|clock_count[24]~81\)) # (!\keyboard_inst|clock_count\(25) & ((\keyboard_inst|clock_count[24]~81\) # (GND)))
-- \keyboard_inst|clock_count[25]~83\ = CARRY((!\keyboard_inst|clock_count[24]~81\) # (!\keyboard_inst|clock_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(25),
	datad => VCC,
	cin => \keyboard_inst|clock_count[24]~81\,
	combout => \keyboard_inst|clock_count[25]~82_combout\,
	cout => \keyboard_inst|clock_count[25]~83\);

-- Location: LCFF_X36_Y9_N19
\keyboard_inst|clock_count[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[25]~82_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(25));

-- Location: LCCOMB_X36_Y9_N22
\keyboard_inst|clock_count[27]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[27]~86_combout\ = (\keyboard_inst|clock_count\(27) & (!\keyboard_inst|clock_count[26]~85\)) # (!\keyboard_inst|clock_count\(27) & ((\keyboard_inst|clock_count[26]~85\) # (GND)))
-- \keyboard_inst|clock_count[27]~87\ = CARRY((!\keyboard_inst|clock_count[26]~85\) # (!\keyboard_inst|clock_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(27),
	datad => VCC,
	cin => \keyboard_inst|clock_count[26]~85\,
	combout => \keyboard_inst|clock_count[27]~86_combout\,
	cout => \keyboard_inst|clock_count[27]~87\);

-- Location: LCFF_X36_Y9_N23
\keyboard_inst|clock_count[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[27]~86_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(27));

-- Location: LCCOMB_X36_Y9_N26
\keyboard_inst|clock_count[29]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|clock_count[29]~90_combout\ = (\keyboard_inst|clock_count\(29) & (!\keyboard_inst|clock_count[28]~89\)) # (!\keyboard_inst|clock_count\(29) & ((\keyboard_inst|clock_count[28]~89\) # (GND)))
-- \keyboard_inst|clock_count[29]~91\ = CARRY((!\keyboard_inst|clock_count[28]~89\) # (!\keyboard_inst|clock_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keyboard_inst|clock_count\(29),
	datad => VCC,
	cin => \keyboard_inst|clock_count[28]~89\,
	combout => \keyboard_inst|clock_count[29]~90_combout\,
	cout => \keyboard_inst|clock_count[29]~91\);

-- Location: LCFF_X36_Y9_N27
\keyboard_inst|clock_count[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[29]~90_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(29));

-- Location: LCFF_X36_Y9_N29
\keyboard_inst|clock_count[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[30]~92_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(30));

-- Location: LCFF_X36_Y9_N17
\keyboard_inst|clock_count[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[24]~80_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(24));

-- Location: LCCOMB_X37_Y9_N2
\keyboard_inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~6_combout\ = (!\keyboard_inst|clock_count\(22) & (!\keyboard_inst|clock_count\(24) & (!\keyboard_inst|clock_count\(25) & !\keyboard_inst|clock_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(22),
	datab => \keyboard_inst|clock_count\(24),
	datac => \keyboard_inst|clock_count\(25),
	datad => \keyboard_inst|clock_count\(23),
	combout => \keyboard_inst|LessThan0~6_combout\);

-- Location: LCFF_X36_Y9_N7
\keyboard_inst|clock_count[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[19]~70_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(19));

-- Location: LCCOMB_X37_Y9_N24
\keyboard_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~5_combout\ = (!\keyboard_inst|clock_count\(21) & (!\keyboard_inst|clock_count\(19) & (!\keyboard_inst|clock_count\(20) & !\keyboard_inst|clock_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(21),
	datab => \keyboard_inst|clock_count\(19),
	datac => \keyboard_inst|clock_count\(20),
	datad => \keyboard_inst|clock_count\(18),
	combout => \keyboard_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y9_N10
\keyboard_inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~4_combout\ = (!\keyboard_inst|clock_count\(17) & (!\keyboard_inst|clock_count\(16) & (!\keyboard_inst|clock_count\(15) & !\keyboard_inst|clock_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(17),
	datab => \keyboard_inst|clock_count\(16),
	datac => \keyboard_inst|clock_count\(15),
	datad => \keyboard_inst|clock_count\(14),
	combout => \keyboard_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y9_N14
\keyboard_inst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~8_combout\ = (\keyboard_inst|LessThan0~7_combout\ & (\keyboard_inst|LessThan0~6_combout\ & (\keyboard_inst|LessThan0~5_combout\ & \keyboard_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|LessThan0~7_combout\,
	datab => \keyboard_inst|LessThan0~6_combout\,
	datac => \keyboard_inst|LessThan0~5_combout\,
	datad => \keyboard_inst|LessThan0~4_combout\,
	combout => \keyboard_inst|LessThan0~8_combout\);

-- Location: LCFF_X36_Y10_N11
\keyboard_inst|clock_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[5]~42_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(5));

-- Location: LCFF_X36_Y10_N7
\keyboard_inst|clock_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[3]~38_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(3));

-- Location: LCCOMB_X37_Y10_N26
\keyboard_inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~2_combout\ = ((!\keyboard_inst|clock_count\(1) & (!\keyboard_inst|clock_count\(2) & !\keyboard_inst|clock_count\(3)))) # (!\keyboard_inst|clock_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(1),
	datab => \keyboard_inst|clock_count\(2),
	datac => \keyboard_inst|clock_count\(3),
	datad => \keyboard_inst|clock_count\(4),
	combout => \keyboard_inst|LessThan0~2_combout\);

-- Location: LCFF_X36_Y10_N25
\keyboard_inst|clock_count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|clock_count[12]~56_combout\,
	sclr => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|clock_count\(12));

-- Location: LCCOMB_X37_Y9_N6
\keyboard_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~1_combout\ = (!\keyboard_inst|clock_count\(10) & (!\keyboard_inst|clock_count\(13) & (!\keyboard_inst|clock_count\(11) & !\keyboard_inst|clock_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(10),
	datab => \keyboard_inst|clock_count\(13),
	datac => \keyboard_inst|clock_count\(11),
	datad => \keyboard_inst|clock_count\(12),
	combout => \keyboard_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y9_N12
\keyboard_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~3_combout\ = (\keyboard_inst|LessThan0~0_combout\ & (\keyboard_inst|LessThan0~1_combout\ & ((\keyboard_inst|LessThan0~2_combout\) # (!\keyboard_inst|clock_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|LessThan0~0_combout\,
	datab => \keyboard_inst|clock_count\(5),
	datac => \keyboard_inst|LessThan0~2_combout\,
	datad => \keyboard_inst|LessThan0~1_combout\,
	combout => \keyboard_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y9_N8
\keyboard_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|LessThan0~9_combout\ = (!\keyboard_inst|clock_count\(31) & ((\keyboard_inst|clock_count\(30)) # ((!\keyboard_inst|LessThan0~3_combout\) # (!\keyboard_inst|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|clock_count\(31),
	datab => \keyboard_inst|clock_count\(30),
	datac => \keyboard_inst|LessThan0~8_combout\,
	datad => \keyboard_inst|LessThan0~3_combout\,
	combout => \keyboard_inst|LessThan0~9_combout\);

-- Location: LCFF_X36_Y12_N31
\keyboard_inst|key_pressed[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux9~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(2));

-- Location: LCCOMB_X32_Y12_N8
\debounce_inst|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux23~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(2),
	combout => \debounce_inst|Mux23~0_combout\);

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_row(3),
	combout => \row~combout\(3));

-- Location: LCFF_X38_Y12_N9
\keyboard_inst|rows_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \row~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|rows_int\(3));

-- Location: LCCOMB_X37_Y12_N2
\keyboard_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux0~0_combout\ = (\keyboard_inst|column_int\(2) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(3) & !\keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(3),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux0~0_combout\);

-- Location: LCFF_X37_Y12_N3
\keyboard_inst|key_pressed[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux0~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(11));

-- Location: LCCOMB_X36_Y12_N8
\debounce_inst|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux14~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(11),
	combout => \debounce_inst|Mux14~0_combout\);

-- Location: LCFF_X36_Y12_N5
\debounce_inst|input_test[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux14~0_combout\,
	sload => VCC,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(11));

-- Location: LCCOMB_X35_Y12_N8
\debounce_inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux2~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(11),
	combout => \debounce_inst|Mux2~0_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_row(1),
	combout => \row~combout\(1));

-- Location: LCCOMB_X38_Y12_N0
\keyboard_inst|rows_int[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|rows_int[1]~feeder_combout\ = \row~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row~combout\(1),
	combout => \keyboard_inst|rows_int[1]~feeder_combout\);

-- Location: LCFF_X38_Y12_N1
\keyboard_inst|rows_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|rows_int[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|rows_int\(1));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_col(2),
	combout => \col~combout\(2));

-- Location: LCCOMB_X37_Y12_N6
\keyboard_inst|column_int[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|column_int[2]~0_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \keyboard_inst|column_int[2]~0_combout\);

-- Location: LCFF_X37_Y12_N7
\keyboard_inst|column_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|column_int[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|column_int\(2));

-- Location: LCCOMB_X37_Y12_N30
\keyboard_inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux2~0_combout\ = (!\keyboard_inst|column_int\(0) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(1) & \keyboard_inst|column_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(0),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(1),
	datad => \keyboard_inst|column_int\(2),
	combout => \keyboard_inst|Mux2~0_combout\);

-- Location: LCFF_X37_Y12_N31
\keyboard_inst|key_pressed[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux2~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(9));

-- Location: LCCOMB_X37_Y12_N4
\keyboard_inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux1~0_combout\ = (\keyboard_inst|column_int\(2) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(2) & !\keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(2),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux1~0_combout\);

-- Location: LCFF_X37_Y12_N5
\keyboard_inst|key_pressed[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux1~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(10));

-- Location: LCCOMB_X37_Y12_N28
\debounce_inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal0~2_combout\ = (!\keyboard_inst|key_pressed\(8) & (!\keyboard_inst|key_pressed\(9) & (!\keyboard_inst|key_pressed\(10) & !\keyboard_inst|key_pressed\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(8),
	datab => \keyboard_inst|key_pressed\(9),
	datac => \keyboard_inst|key_pressed\(10),
	datad => \keyboard_inst|key_pressed\(11),
	combout => \debounce_inst|Equal0~2_combout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_row(0),
	combout => \row~combout\(0));

-- Location: LCFF_X37_Y12_N25
\keyboard_inst|rows_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \row~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|rows_int\(0));

-- Location: LCCOMB_X36_Y12_N26
\keyboard_inst|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux11~0_combout\ = (!\keyboard_inst|column_int\(2) & (\keyboard_inst|column_int\(1) & (\keyboard_inst|column_int\(0) & !\keyboard_inst|rows_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|column_int\(0),
	datad => \keyboard_inst|rows_int\(0),
	combout => \keyboard_inst|Mux11~0_combout\);

-- Location: LCFF_X36_Y12_N27
\keyboard_inst|key_pressed[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux11~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(0));

-- Location: LCCOMB_X37_Y12_N16
\keyboard_inst|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux8~0_combout\ = (!\keyboard_inst|column_int\(2) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(3) & \keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(3),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux8~0_combout\);

-- Location: LCFF_X36_Y12_N1
\keyboard_inst|key_pressed[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux8~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(3));

-- Location: LCCOMB_X36_Y12_N30
\debounce_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal0~0_combout\ = (!\keyboard_inst|key_pressed\(1) & (!\keyboard_inst|key_pressed\(0) & (!\keyboard_inst|key_pressed\(2) & !\keyboard_inst|key_pressed\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(1),
	datab => \keyboard_inst|key_pressed\(0),
	datac => \keyboard_inst|key_pressed\(2),
	datad => \keyboard_inst|key_pressed\(3),
	combout => \debounce_inst|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y12_N10
\debounce_inst|keypad_debounce_aux[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|keypad_debounce_aux[8]~0_combout\ = (!\debounce_inst|debounce_state\(1) & (((!\debounce_inst|Equal0~0_combout\) # (!\debounce_inst|Equal0~2_combout\)) # (!\debounce_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|Equal0~1_combout\,
	datab => \debounce_inst|Equal0~2_combout\,
	datac => \debounce_inst|Equal0~0_combout\,
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|keypad_debounce_aux[8]~0_combout\);

-- Location: LCCOMB_X35_Y12_N30
\debounce_inst|keypad_debounce_aux[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|keypad_debounce_aux[8]~1_combout\ = (\debounce_inst|input_test[11]~0_combout\ & (!\debounce_inst|keypad_debounce_aux[8]~0_combout\ & ((!\debounce_inst|LessThan0~10_combout\) # (!\debounce_inst|debounce_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datab => \debounce_inst|input_test[11]~0_combout\,
	datac => \debounce_inst|keypad_debounce_aux[8]~0_combout\,
	datad => \debounce_inst|LessThan0~10_combout\,
	combout => \debounce_inst|keypad_debounce_aux[8]~1_combout\);

-- Location: LCFF_X34_Y12_N21
\debounce_inst|keypad_debounce_aux[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux2~0_combout\,
	sload => VCC,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(11));

-- Location: LCCOMB_X34_Y12_N6
\debounce_inst|input_test[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|input_test[11]~0_combout\ = (\debounce_inst|debounce_state\(0) & (\debounce_inst|debounce_state\(1) & (!\debounce_inst|keypad_debounce_aux\(11) & !\decodifier_inst|decoded_key[3]~5_combout\))) # (!\debounce_inst|debounce_state\(0) & 
-- (!\debounce_inst|debounce_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(0),
	datab => \debounce_inst|debounce_state\(1),
	datac => \debounce_inst|keypad_debounce_aux\(11),
	datad => \decodifier_inst|decoded_key[3]~5_combout\,
	combout => \debounce_inst|input_test[11]~0_combout\);

-- Location: LCCOMB_X37_Y12_N26
\keyboard_inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux4~0_combout\ = (\keyboard_inst|column_int\(2) & (!\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(3) & \keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(3),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux4~0_combout\);

-- Location: LCFF_X36_Y12_N9
\keyboard_inst|key_pressed[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux4~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(7));

-- Location: LCCOMB_X37_Y12_N8
\keyboard_inst|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux5~0_combout\ = (\keyboard_inst|column_int\(2) & (!\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(2) & \keyboard_inst|column_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(2),
	datad => \keyboard_inst|column_int\(0),
	combout => \keyboard_inst|Mux5~0_combout\);

-- Location: LCFF_X36_Y12_N11
\keyboard_inst|key_pressed[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux5~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(6));

-- Location: LCCOMB_X36_Y12_N22
\keyboard_inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux7~0_combout\ = (\keyboard_inst|column_int\(2) & (!\keyboard_inst|column_int\(1) & (\keyboard_inst|column_int\(0) & !\keyboard_inst|rows_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(2),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|column_int\(0),
	datad => \keyboard_inst|rows_int\(0),
	combout => \keyboard_inst|Mux7~0_combout\);

-- Location: LCFF_X36_Y12_N23
\keyboard_inst|key_pressed[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \keyboard_inst|Mux7~0_combout\,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(4));

-- Location: LCCOMB_X36_Y12_N10
\debounce_inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal0~1_combout\ = (!\keyboard_inst|key_pressed\(5) & (!\keyboard_inst|key_pressed\(7) & (!\keyboard_inst|key_pressed\(6) & !\keyboard_inst|key_pressed\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(5),
	datab => \keyboard_inst|key_pressed\(7),
	datac => \keyboard_inst|key_pressed\(6),
	datad => \keyboard_inst|key_pressed\(4),
	combout => \debounce_inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\debounce_inst|input_test[11]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|input_test[11]~1_combout\ = (!\debounce_inst|debounce_state\(1) & (\debounce_inst|Equal0~1_combout\ & (\debounce_inst|Equal0~2_combout\ & \debounce_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datab => \debounce_inst|Equal0~1_combout\,
	datac => \debounce_inst|Equal0~2_combout\,
	datad => \debounce_inst|Equal0~0_combout\,
	combout => \debounce_inst|input_test[11]~1_combout\);

-- Location: LCCOMB_X35_Y12_N6
\debounce_inst|input_test[11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|input_test[11]~2_combout\ = (\debounce_inst|input_test[11]~0_combout\ & (!\debounce_inst|input_test[11]~1_combout\ & ((!\debounce_inst|LessThan0~10_combout\) # (!\debounce_inst|debounce_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datab => \debounce_inst|input_test[11]~0_combout\,
	datac => \debounce_inst|input_test[11]~1_combout\,
	datad => \debounce_inst|LessThan0~10_combout\,
	combout => \debounce_inst|input_test[11]~2_combout\);

-- Location: LCFF_X32_Y12_N9
\debounce_inst|input_test[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux23~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(2));

-- Location: LCCOMB_X34_Y12_N2
\debounce_inst|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux11~0_combout\ = (\debounce_inst|input_test\(2) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|input_test\(2),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux11~0_combout\);

-- Location: LCFF_X34_Y12_N3
\debounce_inst|keypad_debounce_aux[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux11~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(2));

-- Location: LCCOMB_X34_Y12_N20
\debounce_inst|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux12~0_combout\ = (\debounce_inst|input_test\(1) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(1),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux12~0_combout\);

-- Location: LCFF_X35_Y12_N9
\debounce_inst|keypad_debounce_aux[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux12~0_combout\,
	sload => VCC,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(1));

-- Location: LCCOMB_X34_Y12_N24
\debounce_inst|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux22~0_combout\ = (\keyboard_inst|key_pressed\(3) & !\debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(3),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux22~0_combout\);

-- Location: LCFF_X34_Y12_N25
\debounce_inst|input_test[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux22~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(3));

-- Location: LCCOMB_X34_Y12_N30
\debounce_inst|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux10~0_combout\ = (\debounce_inst|input_test\(3) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|input_test\(3),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux10~0_combout\);

-- Location: LCFF_X35_Y12_N13
\debounce_inst|keypad_debounce_aux[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux10~0_combout\,
	sload => VCC,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(3));

-- Location: LCCOMB_X37_Y12_N22
\keyboard_inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux6~0_combout\ = (\keyboard_inst|column_int\(0) & (!\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(1) & \keyboard_inst|column_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(0),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(1),
	datad => \keyboard_inst|column_int\(2),
	combout => \keyboard_inst|Mux6~0_combout\);

-- Location: LCFF_X36_Y12_N21
\keyboard_inst|key_pressed[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux6~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(5));

-- Location: LCCOMB_X36_Y12_N2
\debounce_inst|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux20~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datac => \keyboard_inst|key_pressed\(5),
	combout => \debounce_inst|Mux20~0_combout\);

-- Location: LCFF_X36_Y12_N3
\debounce_inst|input_test[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux20~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(5));

-- Location: LCCOMB_X35_Y12_N22
\debounce_inst|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux8~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(5),
	combout => \debounce_inst|Mux8~0_combout\);

-- Location: LCFF_X35_Y12_N23
\debounce_inst|keypad_debounce_aux[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux8~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(5));

-- Location: LCCOMB_X35_Y12_N12
\decodifier_inst|decoded_key[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[2]~4_combout\ = (!\debounce_inst|keypad_debounce_aux\(0) & (!\debounce_inst|keypad_debounce_aux\(1) & (!\debounce_inst|keypad_debounce_aux\(3) & !\debounce_inst|keypad_debounce_aux\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(0),
	datab => \debounce_inst|keypad_debounce_aux\(1),
	datac => \debounce_inst|keypad_debounce_aux\(3),
	datad => \debounce_inst|keypad_debounce_aux\(5),
	combout => \decodifier_inst|decoded_key[2]~4_combout\);

-- Location: LCCOMB_X36_Y12_N24
\debounce_inst|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux19~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \keyboard_inst|key_pressed\(6),
	combout => \debounce_inst|Mux19~0_combout\);

-- Location: LCFF_X36_Y12_N25
\debounce_inst|input_test[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux19~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(6));

-- Location: LCCOMB_X34_Y12_N14
\debounce_inst|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux7~0_combout\ = (\debounce_inst|input_test\(6) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|input_test\(6),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux7~0_combout\);

-- Location: LCFF_X34_Y12_N15
\debounce_inst|keypad_debounce_aux[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux7~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(6));

-- Location: LCCOMB_X34_Y12_N28
\decodifier_inst|decoded_key[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[0]~3_combout\ = (!\debounce_inst|keypad_debounce_aux\(6) & !\debounce_inst|keypad_debounce_aux\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|keypad_debounce_aux\(6),
	datad => \debounce_inst|keypad_debounce_aux\(4),
	combout => \decodifier_inst|decoded_key[0]~3_combout\);

-- Location: LCCOMB_X34_Y12_N26
\decodifier_inst|decoded_key[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[3]~5_combout\ = (\decodifier_inst|decoded_key[3]~2_combout\) # ((\debounce_inst|keypad_debounce_aux\(2)) # ((!\decodifier_inst|decoded_key[0]~3_combout\) # (!\decodifier_inst|decoded_key[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[3]~2_combout\,
	datab => \debounce_inst|keypad_debounce_aux\(2),
	datac => \decodifier_inst|decoded_key[2]~4_combout\,
	datad => \decodifier_inst|decoded_key[0]~3_combout\,
	combout => \decodifier_inst|decoded_key[3]~5_combout\);

-- Location: LCCOMB_X32_Y12_N26
\debounce_inst|keypad_debounce_aux[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|keypad_debounce_aux[8]~2_combout\ = (\debounce_inst|debounce_state\(1) & ((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \debounce_inst|keypad_debounce_aux[8]~2_combout\);

-- Location: LCCOMB_X32_Y12_N28
\debounce_inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux1~0_combout\ = (\debounce_inst|LessThan0~10_combout\ & ((\debounce_inst|debounce_state\(1)) # ((\debounce_inst|Equal1~7_combout\ & \debounce_inst|debounce_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|Equal1~7_combout\,
	datab => \debounce_inst|debounce_state\(0),
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|LessThan0~10_combout\,
	combout => \debounce_inst|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y12_N18
\debounce_inst|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux1~1_combout\ = (\debounce_inst|keypad_debounce_aux[8]~2_combout\) # ((\debounce_inst|Mux1~0_combout\) # ((!\debounce_inst|input_test[11]~1_combout\ & !\debounce_inst|debounce_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test[11]~1_combout\,
	datab => \debounce_inst|keypad_debounce_aux[8]~2_combout\,
	datac => \debounce_inst|debounce_state\(0),
	datad => \debounce_inst|Mux1~0_combout\,
	combout => \debounce_inst|Mux1~1_combout\);

-- Location: LCFF_X32_Y12_N19
\debounce_inst|debounce_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|debounce_state\(0));

-- Location: LCCOMB_X34_Y12_N8
\debounce_inst|counter[19]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[19]~32_combout\ = (\debounce_inst|debounce_state\(0) & (!\debounce_inst|keypad_debounce_aux\(11) & !\decodifier_inst|decoded_key[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|debounce_state\(0),
	datac => \debounce_inst|keypad_debounce_aux\(11),
	datad => \decodifier_inst|decoded_key[3]~5_combout\,
	combout => \debounce_inst|counter[19]~32_combout\);

-- Location: LCCOMB_X34_Y12_N22
\debounce_inst|counter[19]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[19]~97_combout\ = (\debounce_inst|debounce_state\(0) & (\debounce_inst|debounce_state\(1) & ((!\debounce_inst|LessThan0~10_combout\) # (!\debounce_inst|counter[19]~32_combout\)))) # (!\debounce_inst|debounce_state\(0) & 
-- (((!\debounce_inst|LessThan0~10_combout\) # (!\debounce_inst|counter[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(0),
	datab => \debounce_inst|debounce_state\(1),
	datac => \debounce_inst|counter[19]~32_combout\,
	datad => \debounce_inst|LessThan0~10_combout\,
	combout => \debounce_inst|counter[19]~97_combout\);

-- Location: LCCOMB_X36_Y12_N28
\debounce_inst|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux15~0_combout\ = (\keyboard_inst|key_pressed\(10) & !\debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(10),
	datac => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux15~0_combout\);

-- Location: LCFF_X36_Y12_N29
\debounce_inst|input_test[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux15~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(10));

-- Location: LCCOMB_X36_Y12_N4
\debounce_inst|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~6_combout\ = (\keyboard_inst|key_pressed\(11) & (\debounce_inst|input_test\(11) & (\debounce_inst|input_test\(10) $ (!\keyboard_inst|key_pressed\(10))))) # (!\keyboard_inst|key_pressed\(11) & (!\debounce_inst|input_test\(11) & 
-- (\debounce_inst|input_test\(10) $ (!\keyboard_inst|key_pressed\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(11),
	datab => \debounce_inst|input_test\(10),
	datac => \debounce_inst|input_test\(11),
	datad => \keyboard_inst|key_pressed\(10),
	combout => \debounce_inst|Equal1~6_combout\);

-- Location: LCCOMB_X37_Y12_N0
\keyboard_inst|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyboard_inst|Mux10~0_combout\ = (\keyboard_inst|column_int\(0) & (\keyboard_inst|column_int\(1) & (!\keyboard_inst|rows_int\(1) & !\keyboard_inst|column_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|column_int\(0),
	datab => \keyboard_inst|column_int\(1),
	datac => \keyboard_inst|rows_int\(1),
	datad => \keyboard_inst|column_int\(2),
	combout => \keyboard_inst|Mux10~0_combout\);

-- Location: LCFF_X36_Y12_N13
\keyboard_inst|key_pressed[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \keyboard_inst|Mux10~0_combout\,
	sload => VCC,
	ena => \keyboard_inst|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyboard_inst|key_pressed\(1));

-- Location: LCCOMB_X35_Y12_N24
\debounce_inst|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux25~0_combout\ = (\keyboard_inst|key_pressed\(0) & !\debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(0),
	datac => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux25~0_combout\);

-- Location: LCFF_X35_Y12_N25
\debounce_inst|input_test[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux25~0_combout\,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(0));

-- Location: LCCOMB_X32_Y12_N14
\debounce_inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~0_combout\ = (\debounce_inst|input_test\(1) & (\keyboard_inst|key_pressed\(1) & (\keyboard_inst|key_pressed\(0) $ (!\debounce_inst|input_test\(0))))) # (!\debounce_inst|input_test\(1) & (!\keyboard_inst|key_pressed\(1) & 
-- (\keyboard_inst|key_pressed\(0) $ (!\debounce_inst|input_test\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(1),
	datab => \keyboard_inst|key_pressed\(0),
	datac => \keyboard_inst|key_pressed\(1),
	datad => \debounce_inst|input_test\(0),
	combout => \debounce_inst|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y12_N20
\debounce_inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~1_combout\ = (\keyboard_inst|key_pressed\(2) & (\debounce_inst|input_test\(2) & (\debounce_inst|input_test\(3) $ (!\keyboard_inst|key_pressed\(3))))) # (!\keyboard_inst|key_pressed\(2) & (!\debounce_inst|input_test\(2) & 
-- (\debounce_inst|input_test\(3) $ (!\keyboard_inst|key_pressed\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyboard_inst|key_pressed\(2),
	datab => \debounce_inst|input_test\(2),
	datac => \debounce_inst|input_test\(3),
	datad => \keyboard_inst|key_pressed\(3),
	combout => \debounce_inst|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y12_N0
\debounce_inst|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux18~0_combout\ = (!\debounce_inst|debounce_state\(1) & \keyboard_inst|key_pressed\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datab => \keyboard_inst|key_pressed\(7),
	combout => \debounce_inst|Mux18~0_combout\);

-- Location: LCFF_X36_Y12_N15
\debounce_inst|input_test[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \debounce_inst|Mux18~0_combout\,
	sload => VCC,
	ena => \debounce_inst|input_test[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|input_test\(7));

-- Location: LCCOMB_X36_Y12_N14
\debounce_inst|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~3_combout\ = (\debounce_inst|input_test\(6) & (\keyboard_inst|key_pressed\(6) & (\keyboard_inst|key_pressed\(7) $ (!\debounce_inst|input_test\(7))))) # (!\debounce_inst|input_test\(6) & (!\keyboard_inst|key_pressed\(6) & 
-- (\keyboard_inst|key_pressed\(7) $ (!\debounce_inst|input_test\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(6),
	datab => \keyboard_inst|key_pressed\(7),
	datac => \debounce_inst|input_test\(7),
	datad => \keyboard_inst|key_pressed\(6),
	combout => \debounce_inst|Equal1~3_combout\);

-- Location: LCCOMB_X32_Y12_N2
\debounce_inst|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~4_combout\ = (\debounce_inst|Equal1~2_combout\ & (\debounce_inst|Equal1~0_combout\ & (\debounce_inst|Equal1~1_combout\ & \debounce_inst|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|Equal1~2_combout\,
	datab => \debounce_inst|Equal1~0_combout\,
	datac => \debounce_inst|Equal1~1_combout\,
	datad => \debounce_inst|Equal1~3_combout\,
	combout => \debounce_inst|Equal1~4_combout\);

-- Location: LCCOMB_X32_Y12_N12
\debounce_inst|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Equal1~7_combout\ = (\debounce_inst|Equal1~5_combout\ & (\debounce_inst|Equal1~6_combout\ & \debounce_inst|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|Equal1~5_combout\,
	datac => \debounce_inst|Equal1~6_combout\,
	datad => \debounce_inst|Equal1~4_combout\,
	combout => \debounce_inst|Equal1~7_combout\);

-- Location: LCCOMB_X32_Y12_N0
\debounce_inst|counter[19]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[19]~98_combout\ = (\debounce_inst|debounce_state\(0) & ((\debounce_inst|debounce_state\(1)) # ((\debounce_inst|Equal1~7_combout\)))) # (!\debounce_inst|debounce_state\(0) & (((!\debounce_inst|input_test[11]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datab => \debounce_inst|debounce_state\(0),
	datac => \debounce_inst|input_test[11]~1_combout\,
	datad => \debounce_inst|Equal1~7_combout\,
	combout => \debounce_inst|counter[19]~98_combout\);

-- Location: LCFF_X33_Y13_N1
\debounce_inst|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[0]~33_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(0));

-- Location: LCCOMB_X33_Y13_N2
\debounce_inst|counter[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[1]~35_combout\ = (\debounce_inst|counter\(1) & (!\debounce_inst|counter[0]~34\)) # (!\debounce_inst|counter\(1) & ((\debounce_inst|counter[0]~34\) # (GND)))
-- \debounce_inst|counter[1]~36\ = CARRY((!\debounce_inst|counter[0]~34\) # (!\debounce_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(1),
	datad => VCC,
	cin => \debounce_inst|counter[0]~34\,
	combout => \debounce_inst|counter[1]~35_combout\,
	cout => \debounce_inst|counter[1]~36\);

-- Location: LCFF_X33_Y13_N3
\debounce_inst|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[1]~35_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(1));

-- Location: LCCOMB_X33_Y13_N4
\debounce_inst|counter[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[2]~37_combout\ = (\debounce_inst|counter\(2) & (\debounce_inst|counter[1]~36\ $ (GND))) # (!\debounce_inst|counter\(2) & (!\debounce_inst|counter[1]~36\ & VCC))
-- \debounce_inst|counter[2]~38\ = CARRY((\debounce_inst|counter\(2) & !\debounce_inst|counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(2),
	datad => VCC,
	cin => \debounce_inst|counter[1]~36\,
	combout => \debounce_inst|counter[2]~37_combout\,
	cout => \debounce_inst|counter[2]~38\);

-- Location: LCFF_X33_Y13_N5
\debounce_inst|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[2]~37_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(2));

-- Location: LCCOMB_X33_Y13_N6
\debounce_inst|counter[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[3]~39_combout\ = (\debounce_inst|counter\(3) & (!\debounce_inst|counter[2]~38\)) # (!\debounce_inst|counter\(3) & ((\debounce_inst|counter[2]~38\) # (GND)))
-- \debounce_inst|counter[3]~40\ = CARRY((!\debounce_inst|counter[2]~38\) # (!\debounce_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(3),
	datad => VCC,
	cin => \debounce_inst|counter[2]~38\,
	combout => \debounce_inst|counter[3]~39_combout\,
	cout => \debounce_inst|counter[3]~40\);

-- Location: LCCOMB_X33_Y13_N8
\debounce_inst|counter[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[4]~41_combout\ = (\debounce_inst|counter\(4) & (\debounce_inst|counter[3]~40\ $ (GND))) # (!\debounce_inst|counter\(4) & (!\debounce_inst|counter[3]~40\ & VCC))
-- \debounce_inst|counter[4]~42\ = CARRY((\debounce_inst|counter\(4) & !\debounce_inst|counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(4),
	datad => VCC,
	cin => \debounce_inst|counter[3]~40\,
	combout => \debounce_inst|counter[4]~41_combout\,
	cout => \debounce_inst|counter[4]~42\);

-- Location: LCFF_X33_Y13_N9
\debounce_inst|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[4]~41_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(4));

-- Location: LCCOMB_X33_Y13_N10
\debounce_inst|counter[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[5]~43_combout\ = (\debounce_inst|counter\(5) & (!\debounce_inst|counter[4]~42\)) # (!\debounce_inst|counter\(5) & ((\debounce_inst|counter[4]~42\) # (GND)))
-- \debounce_inst|counter[5]~44\ = CARRY((!\debounce_inst|counter[4]~42\) # (!\debounce_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(5),
	datad => VCC,
	cin => \debounce_inst|counter[4]~42\,
	combout => \debounce_inst|counter[5]~43_combout\,
	cout => \debounce_inst|counter[5]~44\);

-- Location: LCCOMB_X33_Y13_N14
\debounce_inst|counter[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[7]~47_combout\ = (\debounce_inst|counter\(7) & (!\debounce_inst|counter[6]~46\)) # (!\debounce_inst|counter\(7) & ((\debounce_inst|counter[6]~46\) # (GND)))
-- \debounce_inst|counter[7]~48\ = CARRY((!\debounce_inst|counter[6]~46\) # (!\debounce_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(7),
	datad => VCC,
	cin => \debounce_inst|counter[6]~46\,
	combout => \debounce_inst|counter[7]~47_combout\,
	cout => \debounce_inst|counter[7]~48\);

-- Location: LCFF_X33_Y13_N15
\debounce_inst|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[7]~47_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(7));

-- Location: LCCOMB_X33_Y13_N16
\debounce_inst|counter[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[8]~49_combout\ = (\debounce_inst|counter\(8) & (\debounce_inst|counter[7]~48\ $ (GND))) # (!\debounce_inst|counter\(8) & (!\debounce_inst|counter[7]~48\ & VCC))
-- \debounce_inst|counter[8]~50\ = CARRY((\debounce_inst|counter\(8) & !\debounce_inst|counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(8),
	datad => VCC,
	cin => \debounce_inst|counter[7]~48\,
	combout => \debounce_inst|counter[8]~49_combout\,
	cout => \debounce_inst|counter[8]~50\);

-- Location: LCCOMB_X33_Y13_N18
\debounce_inst|counter[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[9]~51_combout\ = (\debounce_inst|counter\(9) & (!\debounce_inst|counter[8]~50\)) # (!\debounce_inst|counter\(9) & ((\debounce_inst|counter[8]~50\) # (GND)))
-- \debounce_inst|counter[9]~52\ = CARRY((!\debounce_inst|counter[8]~50\) # (!\debounce_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(9),
	datad => VCC,
	cin => \debounce_inst|counter[8]~50\,
	combout => \debounce_inst|counter[9]~51_combout\,
	cout => \debounce_inst|counter[9]~52\);

-- Location: LCFF_X33_Y13_N19
\debounce_inst|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[9]~51_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(9));

-- Location: LCCOMB_X33_Y13_N22
\debounce_inst|counter[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[11]~55_combout\ = (\debounce_inst|counter\(11) & (!\debounce_inst|counter[10]~54\)) # (!\debounce_inst|counter\(11) & ((\debounce_inst|counter[10]~54\) # (GND)))
-- \debounce_inst|counter[11]~56\ = CARRY((!\debounce_inst|counter[10]~54\) # (!\debounce_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(11),
	datad => VCC,
	cin => \debounce_inst|counter[10]~54\,
	combout => \debounce_inst|counter[11]~55_combout\,
	cout => \debounce_inst|counter[11]~56\);

-- Location: LCFF_X33_Y13_N23
\debounce_inst|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[11]~55_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(11));

-- Location: LCCOMB_X33_Y13_N24
\debounce_inst|counter[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[12]~57_combout\ = (\debounce_inst|counter\(12) & (\debounce_inst|counter[11]~56\ $ (GND))) # (!\debounce_inst|counter\(12) & (!\debounce_inst|counter[11]~56\ & VCC))
-- \debounce_inst|counter[12]~58\ = CARRY((\debounce_inst|counter\(12) & !\debounce_inst|counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(12),
	datad => VCC,
	cin => \debounce_inst|counter[11]~56\,
	combout => \debounce_inst|counter[12]~57_combout\,
	cout => \debounce_inst|counter[12]~58\);

-- Location: LCCOMB_X33_Y13_N26
\debounce_inst|counter[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[13]~59_combout\ = (\debounce_inst|counter\(13) & (!\debounce_inst|counter[12]~58\)) # (!\debounce_inst|counter\(13) & ((\debounce_inst|counter[12]~58\) # (GND)))
-- \debounce_inst|counter[13]~60\ = CARRY((!\debounce_inst|counter[12]~58\) # (!\debounce_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(13),
	datad => VCC,
	cin => \debounce_inst|counter[12]~58\,
	combout => \debounce_inst|counter[13]~59_combout\,
	cout => \debounce_inst|counter[13]~60\);

-- Location: LCFF_X33_Y13_N27
\debounce_inst|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[13]~59_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(13));

-- Location: LCCOMB_X33_Y13_N28
\debounce_inst|counter[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[14]~61_combout\ = (\debounce_inst|counter\(14) & (\debounce_inst|counter[13]~60\ $ (GND))) # (!\debounce_inst|counter\(14) & (!\debounce_inst|counter[13]~60\ & VCC))
-- \debounce_inst|counter[14]~62\ = CARRY((\debounce_inst|counter\(14) & !\debounce_inst|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(14),
	datad => VCC,
	cin => \debounce_inst|counter[13]~60\,
	combout => \debounce_inst|counter[14]~61_combout\,
	cout => \debounce_inst|counter[14]~62\);

-- Location: LCFF_X33_Y13_N29
\debounce_inst|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[14]~61_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(14));

-- Location: LCCOMB_X33_Y13_N30
\debounce_inst|counter[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[15]~63_combout\ = (\debounce_inst|counter\(15) & (!\debounce_inst|counter[14]~62\)) # (!\debounce_inst|counter\(15) & ((\debounce_inst|counter[14]~62\) # (GND)))
-- \debounce_inst|counter[15]~64\ = CARRY((!\debounce_inst|counter[14]~62\) # (!\debounce_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(15),
	datad => VCC,
	cin => \debounce_inst|counter[14]~62\,
	combout => \debounce_inst|counter[15]~63_combout\,
	cout => \debounce_inst|counter[15]~64\);

-- Location: LCFF_X33_Y13_N31
\debounce_inst|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[15]~63_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(15));

-- Location: LCCOMB_X33_Y12_N0
\debounce_inst|counter[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[16]~65_combout\ = (\debounce_inst|counter\(16) & (\debounce_inst|counter[15]~64\ $ (GND))) # (!\debounce_inst|counter\(16) & (!\debounce_inst|counter[15]~64\ & VCC))
-- \debounce_inst|counter[16]~66\ = CARRY((\debounce_inst|counter\(16) & !\debounce_inst|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(16),
	datad => VCC,
	cin => \debounce_inst|counter[15]~64\,
	combout => \debounce_inst|counter[16]~65_combout\,
	cout => \debounce_inst|counter[16]~66\);

-- Location: LCFF_X33_Y12_N1
\debounce_inst|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[16]~65_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(16));

-- Location: LCCOMB_X33_Y12_N2
\debounce_inst|counter[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[17]~67_combout\ = (\debounce_inst|counter\(17) & (!\debounce_inst|counter[16]~66\)) # (!\debounce_inst|counter\(17) & ((\debounce_inst|counter[16]~66\) # (GND)))
-- \debounce_inst|counter[17]~68\ = CARRY((!\debounce_inst|counter[16]~66\) # (!\debounce_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(17),
	datad => VCC,
	cin => \debounce_inst|counter[16]~66\,
	combout => \debounce_inst|counter[17]~67_combout\,
	cout => \debounce_inst|counter[17]~68\);

-- Location: LCFF_X33_Y12_N3
\debounce_inst|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[17]~67_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(17));

-- Location: LCCOMB_X33_Y12_N4
\debounce_inst|counter[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[18]~69_combout\ = (\debounce_inst|counter\(18) & (\debounce_inst|counter[17]~68\ $ (GND))) # (!\debounce_inst|counter\(18) & (!\debounce_inst|counter[17]~68\ & VCC))
-- \debounce_inst|counter[18]~70\ = CARRY((\debounce_inst|counter\(18) & !\debounce_inst|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(18),
	datad => VCC,
	cin => \debounce_inst|counter[17]~68\,
	combout => \debounce_inst|counter[18]~69_combout\,
	cout => \debounce_inst|counter[18]~70\);

-- Location: LCFF_X33_Y12_N5
\debounce_inst|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[18]~69_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(18));

-- Location: LCCOMB_X33_Y12_N6
\debounce_inst|counter[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[19]~71_combout\ = (\debounce_inst|counter\(19) & (!\debounce_inst|counter[18]~70\)) # (!\debounce_inst|counter\(19) & ((\debounce_inst|counter[18]~70\) # (GND)))
-- \debounce_inst|counter[19]~72\ = CARRY((!\debounce_inst|counter[18]~70\) # (!\debounce_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(19),
	datad => VCC,
	cin => \debounce_inst|counter[18]~70\,
	combout => \debounce_inst|counter[19]~71_combout\,
	cout => \debounce_inst|counter[19]~72\);

-- Location: LCCOMB_X33_Y12_N8
\debounce_inst|counter[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[20]~73_combout\ = (\debounce_inst|counter\(20) & (\debounce_inst|counter[19]~72\ $ (GND))) # (!\debounce_inst|counter\(20) & (!\debounce_inst|counter[19]~72\ & VCC))
-- \debounce_inst|counter[20]~74\ = CARRY((\debounce_inst|counter\(20) & !\debounce_inst|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(20),
	datad => VCC,
	cin => \debounce_inst|counter[19]~72\,
	combout => \debounce_inst|counter[20]~73_combout\,
	cout => \debounce_inst|counter[20]~74\);

-- Location: LCFF_X33_Y12_N9
\debounce_inst|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[20]~73_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(20));

-- Location: LCCOMB_X33_Y12_N10
\debounce_inst|counter[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[21]~75_combout\ = (\debounce_inst|counter\(21) & (!\debounce_inst|counter[20]~74\)) # (!\debounce_inst|counter\(21) & ((\debounce_inst|counter[20]~74\) # (GND)))
-- \debounce_inst|counter[21]~76\ = CARRY((!\debounce_inst|counter[20]~74\) # (!\debounce_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(21),
	datad => VCC,
	cin => \debounce_inst|counter[20]~74\,
	combout => \debounce_inst|counter[21]~75_combout\,
	cout => \debounce_inst|counter[21]~76\);

-- Location: LCCOMB_X33_Y12_N14
\debounce_inst|counter[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[23]~79_combout\ = (\debounce_inst|counter\(23) & (!\debounce_inst|counter[22]~78\)) # (!\debounce_inst|counter\(23) & ((\debounce_inst|counter[22]~78\) # (GND)))
-- \debounce_inst|counter[23]~80\ = CARRY((!\debounce_inst|counter[22]~78\) # (!\debounce_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(23),
	datad => VCC,
	cin => \debounce_inst|counter[22]~78\,
	combout => \debounce_inst|counter[23]~79_combout\,
	cout => \debounce_inst|counter[23]~80\);

-- Location: LCFF_X33_Y12_N15
\debounce_inst|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[23]~79_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(23));

-- Location: LCCOMB_X33_Y12_N18
\debounce_inst|counter[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[25]~83_combout\ = (\debounce_inst|counter\(25) & (!\debounce_inst|counter[24]~82\)) # (!\debounce_inst|counter\(25) & ((\debounce_inst|counter[24]~82\) # (GND)))
-- \debounce_inst|counter[25]~84\ = CARRY((!\debounce_inst|counter[24]~82\) # (!\debounce_inst|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(25),
	datad => VCC,
	cin => \debounce_inst|counter[24]~82\,
	combout => \debounce_inst|counter[25]~83_combout\,
	cout => \debounce_inst|counter[25]~84\);

-- Location: LCFF_X33_Y12_N19
\debounce_inst|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[25]~83_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(25));

-- Location: LCCOMB_X33_Y12_N22
\debounce_inst|counter[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[27]~87_combout\ = (\debounce_inst|counter\(27) & (!\debounce_inst|counter[26]~86\)) # (!\debounce_inst|counter\(27) & ((\debounce_inst|counter[26]~86\) # (GND)))
-- \debounce_inst|counter[27]~88\ = CARRY((!\debounce_inst|counter[26]~86\) # (!\debounce_inst|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(27),
	datad => VCC,
	cin => \debounce_inst|counter[26]~86\,
	combout => \debounce_inst|counter[27]~87_combout\,
	cout => \debounce_inst|counter[27]~88\);

-- Location: LCFF_X33_Y12_N23
\debounce_inst|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[27]~87_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(27));

-- Location: LCCOMB_X33_Y12_N24
\debounce_inst|counter[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[28]~89_combout\ = (\debounce_inst|counter\(28) & (\debounce_inst|counter[27]~88\ $ (GND))) # (!\debounce_inst|counter\(28) & (!\debounce_inst|counter[27]~88\ & VCC))
-- \debounce_inst|counter[28]~90\ = CARRY((\debounce_inst|counter\(28) & !\debounce_inst|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(28),
	datad => VCC,
	cin => \debounce_inst|counter[27]~88\,
	combout => \debounce_inst|counter[28]~89_combout\,
	cout => \debounce_inst|counter[28]~90\);

-- Location: LCCOMB_X33_Y12_N26
\debounce_inst|counter[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|counter[29]~91_combout\ = (\debounce_inst|counter\(29) & (!\debounce_inst|counter[28]~90\)) # (!\debounce_inst|counter\(29) & ((\debounce_inst|counter[28]~90\) # (GND)))
-- \debounce_inst|counter[29]~92\ = CARRY((!\debounce_inst|counter[28]~90\) # (!\debounce_inst|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|counter\(29),
	datad => VCC,
	cin => \debounce_inst|counter[28]~90\,
	combout => \debounce_inst|counter[29]~91_combout\,
	cout => \debounce_inst|counter[29]~92\);

-- Location: LCFF_X33_Y12_N27
\debounce_inst|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[29]~91_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(29));

-- Location: LCFF_X33_Y12_N29
\debounce_inst|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[30]~93_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(30));

-- Location: LCFF_X33_Y12_N25
\debounce_inst|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[28]~89_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(28));

-- Location: LCCOMB_X34_Y12_N10
\debounce_inst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~8_combout\ = (\debounce_inst|counter\(26)) # ((\debounce_inst|counter\(27)) # ((\debounce_inst|counter\(28)) # (\debounce_inst|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(26),
	datab => \debounce_inst|counter\(27),
	datac => \debounce_inst|counter\(28),
	datad => \debounce_inst|counter\(29),
	combout => \debounce_inst|LessThan0~8_combout\);

-- Location: LCCOMB_X34_Y12_N4
\debounce_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~9_combout\ = (\debounce_inst|counter\(30)) # (\debounce_inst|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|counter\(30),
	datad => \debounce_inst|LessThan0~8_combout\,
	combout => \debounce_inst|LessThan0~9_combout\);

-- Location: LCFF_X33_Y13_N17
\debounce_inst|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[8]~49_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(8));

-- Location: LCFF_X33_Y13_N11
\debounce_inst|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[5]~43_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(5));

-- Location: LCCOMB_X34_Y13_N20
\debounce_inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~0_combout\ = (\debounce_inst|counter\(6) & (\debounce_inst|counter\(8) & (\debounce_inst|counter\(5) & \debounce_inst|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(6),
	datab => \debounce_inst|counter\(8),
	datac => \debounce_inst|counter\(5),
	datad => \debounce_inst|counter\(7),
	combout => \debounce_inst|LessThan0~0_combout\);

-- Location: LCFF_X33_Y13_N7
\debounce_inst|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[3]~39_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(3));

-- Location: LCCOMB_X34_Y13_N10
\debounce_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~1_combout\ = (\debounce_inst|counter\(3) & ((\debounce_inst|counter\(1)) # ((\debounce_inst|counter\(0)) # (\debounce_inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(1),
	datab => \debounce_inst|counter\(3),
	datac => \debounce_inst|counter\(0),
	datad => \debounce_inst|counter\(2),
	combout => \debounce_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y13_N16
\debounce_inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~2_combout\ = (\debounce_inst|counter\(9) & (\debounce_inst|LessThan0~0_combout\ & ((\debounce_inst|counter\(4)) # (\debounce_inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(4),
	datab => \debounce_inst|counter\(9),
	datac => \debounce_inst|LessThan0~0_combout\,
	datad => \debounce_inst|LessThan0~1_combout\,
	combout => \debounce_inst|LessThan0~2_combout\);

-- Location: LCFF_X33_Y12_N7
\debounce_inst|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[19]~71_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(19));

-- Location: LCFF_X33_Y12_N11
\debounce_inst|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[21]~75_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(21));

-- Location: LCCOMB_X34_Y12_N18
\debounce_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~5_combout\ = (\debounce_inst|counter\(20)) # ((\debounce_inst|counter\(18)) # ((\debounce_inst|counter\(19)) # (\debounce_inst|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(20),
	datab => \debounce_inst|counter\(18),
	datac => \debounce_inst|counter\(19),
	datad => \debounce_inst|counter\(21),
	combout => \debounce_inst|LessThan0~5_combout\);

-- Location: LCFF_X33_Y13_N25
\debounce_inst|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|counter[12]~57_combout\,
	sclr => \debounce_inst|counter[19]~97_combout\,
	ena => \debounce_inst|counter[19]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|counter\(12));

-- Location: LCCOMB_X34_Y13_N14
\debounce_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~3_combout\ = (\debounce_inst|counter\(10)) # ((\debounce_inst|counter\(11)) # ((\debounce_inst|counter\(12)) # (\debounce_inst|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(10),
	datab => \debounce_inst|counter\(11),
	datac => \debounce_inst|counter\(12),
	datad => \debounce_inst|counter\(13),
	combout => \debounce_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y12_N16
\debounce_inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~4_combout\ = (\debounce_inst|counter\(17)) # ((\debounce_inst|counter\(16)) # ((\debounce_inst|counter\(15)) # (\debounce_inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(17),
	datab => \debounce_inst|counter\(16),
	datac => \debounce_inst|counter\(15),
	datad => \debounce_inst|counter\(14),
	combout => \debounce_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X35_Y12_N2
\debounce_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~7_combout\ = (\debounce_inst|LessThan0~6_combout\) # ((\debounce_inst|LessThan0~5_combout\) # ((\debounce_inst|LessThan0~3_combout\) # (\debounce_inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|LessThan0~6_combout\,
	datab => \debounce_inst|LessThan0~5_combout\,
	datac => \debounce_inst|LessThan0~3_combout\,
	datad => \debounce_inst|LessThan0~4_combout\,
	combout => \debounce_inst|LessThan0~7_combout\);

-- Location: LCCOMB_X35_Y12_N28
\debounce_inst|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|LessThan0~10_combout\ = (\debounce_inst|counter\(31)) # ((!\debounce_inst|LessThan0~9_combout\ & (!\debounce_inst|LessThan0~2_combout\ & !\debounce_inst|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter\(31),
	datab => \debounce_inst|LessThan0~9_combout\,
	datac => \debounce_inst|LessThan0~2_combout\,
	datad => \debounce_inst|LessThan0~7_combout\,
	combout => \debounce_inst|LessThan0~10_combout\);

-- Location: LCCOMB_X32_Y12_N22
\debounce_inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux0~0_combout\ = (\debounce_inst|Equal1~7_combout\ & (\debounce_inst|debounce_state\(0) & (!\debounce_inst|debounce_state\(1) & !\debounce_inst|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|Equal1~7_combout\,
	datab => \debounce_inst|debounce_state\(0),
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|LessThan0~10_combout\,
	combout => \debounce_inst|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y12_N16
\debounce_inst|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux0~1_combout\ = (\debounce_inst|Mux0~0_combout\) # ((\debounce_inst|debounce_state\(1) & ((\debounce_inst|LessThan0~10_combout\) # (!\debounce_inst|counter[19]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|counter[19]~32_combout\,
	datab => \debounce_inst|LessThan0~10_combout\,
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|Mux0~0_combout\,
	combout => \debounce_inst|Mux0~1_combout\);

-- Location: LCFF_X32_Y12_N17
\debounce_inst|debounce_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|debounce_state\(1));

-- Location: LCCOMB_X34_Y12_N12
\debounce_inst|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux9~0_combout\ = (\debounce_inst|input_test\(4) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(4),
	datad => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux9~0_combout\);

-- Location: LCFF_X34_Y12_N13
\debounce_inst|keypad_debounce_aux[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux9~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(4));

-- Location: LCCOMB_X35_Y12_N0
\debounce_inst|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux6~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(7),
	combout => \debounce_inst|Mux6~0_combout\);

-- Location: LCFF_X35_Y12_N1
\debounce_inst|keypad_debounce_aux[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux6~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(7));

-- Location: LCCOMB_X35_Y12_N14
\debounce_inst|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux4~0_combout\ = (\debounce_inst|input_test\(9) & \debounce_inst|debounce_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|input_test\(9),
	datac => \debounce_inst|debounce_state\(1),
	combout => \debounce_inst|Mux4~0_combout\);

-- Location: LCFF_X35_Y12_N15
\debounce_inst|keypad_debounce_aux[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux4~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(9));

-- Location: LCCOMB_X35_Y12_N18
\debounce_inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux3~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(10),
	combout => \debounce_inst|Mux3~0_combout\);

-- Location: LCFF_X35_Y12_N19
\debounce_inst|keypad_debounce_aux[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux3~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(10));

-- Location: LCCOMB_X35_Y12_N26
\decodifier_inst|decoded_key[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[0]~8_combout\ = (\debounce_inst|keypad_debounce_aux\(7)) # ((!\debounce_inst|keypad_debounce_aux\(8) & ((\debounce_inst|keypad_debounce_aux\(9)) # (!\debounce_inst|keypad_debounce_aux\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(8),
	datab => \debounce_inst|keypad_debounce_aux\(7),
	datac => \debounce_inst|keypad_debounce_aux\(9),
	datad => \debounce_inst|keypad_debounce_aux\(10),
	combout => \decodifier_inst|decoded_key[0]~8_combout\);

-- Location: LCCOMB_X32_Y12_N30
\decodifier_inst|decoded_key[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[0]~17_combout\ = (\decodifier_inst|decoded_key[0]~7_combout\) # ((!\debounce_inst|keypad_debounce_aux\(4) & (!\debounce_inst|keypad_debounce_aux\(6) & \decodifier_inst|decoded_key[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[0]~7_combout\,
	datab => \debounce_inst|keypad_debounce_aux\(4),
	datac => \debounce_inst|keypad_debounce_aux\(6),
	datad => \decodifier_inst|decoded_key[0]~8_combout\,
	combout => \decodifier_inst|decoded_key[0]~17_combout\);

-- Location: LCCOMB_X31_Y12_N14
\decodifier_inst|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~4_combout\ = (\decodifier_inst|decoded_key[3]~6_combout\ & (((\debounce_inst|keypad_debounce_aux\(1)) # (\debounce_inst|keypad_debounce_aux\(2))) # (!\decodifier_inst|decoded_key[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[3]~6_combout\,
	datab => \decodifier_inst|decoded_key[0]~17_combout\,
	datac => \debounce_inst|keypad_debounce_aux\(1),
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|comb~4_combout\);

-- Location: LCCOMB_X31_Y12_N12
\decodifier_inst|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~5_combout\ = (\decodifier_inst|decoded_key[3]~6_combout\ & (\decodifier_inst|decoded_key[0]~17_combout\ & (!\debounce_inst|keypad_debounce_aux\(1) & !\debounce_inst|keypad_debounce_aux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[3]~6_combout\,
	datab => \decodifier_inst|decoded_key[0]~17_combout\,
	datac => \debounce_inst|keypad_debounce_aux\(1),
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|comb~5_combout\);

-- Location: LCCOMB_X32_Y12_N4
\decodifier_inst|decoded_key[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key\(0) = (!\decodifier_inst|comb~4_combout\ & ((\decodifier_inst|decoded_key\(0)) # (\decodifier_inst|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|comb~4_combout\,
	datac => \decodifier_inst|decoded_key\(0),
	datad => \decodifier_inst|comb~5_combout\,
	combout => \decodifier_inst|decoded_key\(0));

-- Location: LCCOMB_X35_Y12_N4
\decodifier_inst|decoded_key[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[1]~9_combout\ = (\debounce_inst|keypad_debounce_aux\(7)) # ((\debounce_inst|keypad_debounce_aux\(6)) # ((!\debounce_inst|keypad_debounce_aux\(8) & !\debounce_inst|keypad_debounce_aux\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(8),
	datab => \debounce_inst|keypad_debounce_aux\(7),
	datac => \debounce_inst|keypad_debounce_aux\(9),
	datad => \debounce_inst|keypad_debounce_aux\(6),
	combout => \decodifier_inst|decoded_key[1]~9_combout\);

-- Location: LCCOMB_X31_Y12_N18
\decodifier_inst|decoded_key[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[1]~10_combout\ = (\debounce_inst|keypad_debounce_aux\(3)) # ((!\debounce_inst|keypad_debounce_aux\(4) & (!\debounce_inst|keypad_debounce_aux\(5) & \decodifier_inst|decoded_key[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(4),
	datab => \debounce_inst|keypad_debounce_aux\(5),
	datac => \decodifier_inst|decoded_key[1]~9_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(3),
	combout => \decodifier_inst|decoded_key[1]~10_combout\);

-- Location: LCCOMB_X31_Y12_N0
\decodifier_inst|decoded_key[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[1]~11_combout\ = (\debounce_inst|keypad_debounce_aux\(2)) # ((!\debounce_inst|keypad_debounce_aux\(1) & ((\debounce_inst|keypad_debounce_aux\(0)) # (\decodifier_inst|decoded_key[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|keypad_debounce_aux\(0),
	datab => \decodifier_inst|decoded_key[1]~10_combout\,
	datac => \debounce_inst|keypad_debounce_aux\(1),
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|decoded_key[1]~11_combout\);

-- Location: LCCOMB_X30_Y12_N2
\decodifier_inst|comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~10_combout\ = (!\decodifier_inst|decoded_key[1]~11_combout\ & ((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|decoded_key[1]~11_combout\,
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \decodifier_inst|comb~10_combout\);

-- Location: LCCOMB_X30_Y12_N20
\decodifier_inst|comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~11_combout\ = (\decodifier_inst|decoded_key[1]~11_combout\ & ((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|decoded_key[1]~11_combout\,
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \decodifier_inst|comb~11_combout\);

-- Location: LCCOMB_X30_Y12_N30
\decodifier_inst|decoded_key[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key\(1) = (!\decodifier_inst|comb~10_combout\ & ((\decodifier_inst|comb~11_combout\) # (\decodifier_inst|decoded_key\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|comb~10_combout\,
	datac => \decodifier_inst|comb~11_combout\,
	datad => \decodifier_inst|decoded_key\(1),
	combout => \decodifier_inst|decoded_key\(1));

-- Location: LCCOMB_X35_Y12_N10
\debounce_inst|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \debounce_inst|Mux13~0_combout\ = (\debounce_inst|debounce_state\(1) & \debounce_inst|input_test\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_inst|debounce_state\(1),
	datad => \debounce_inst|input_test\(0),
	combout => \debounce_inst|Mux13~0_combout\);

-- Location: LCFF_X35_Y12_N11
\debounce_inst|keypad_debounce_aux[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \debounce_inst|Mux13~0_combout\,
	ena => \debounce_inst|keypad_debounce_aux[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \debounce_inst|keypad_debounce_aux\(0));

-- Location: LCCOMB_X31_Y12_N4
\decodifier_inst|decoded_key[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[2]~13_combout\ = (!\debounce_inst|keypad_debounce_aux\(1) & (!\debounce_inst|keypad_debounce_aux\(0) & !\debounce_inst|keypad_debounce_aux\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|keypad_debounce_aux\(1),
	datac => \debounce_inst|keypad_debounce_aux\(0),
	datad => \debounce_inst|keypad_debounce_aux\(3),
	combout => \decodifier_inst|decoded_key[2]~13_combout\);

-- Location: LCCOMB_X31_Y12_N2
\decodifier_inst|decoded_key[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[2]~14_combout\ = (\decodifier_inst|decoded_key[2]~13_combout\ & (!\debounce_inst|keypad_debounce_aux\(2) & ((!\decodifier_inst|decoded_key[2]~4_combout\) # (!\decodifier_inst|decoded_key[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[0]~3_combout\,
	datab => \decodifier_inst|decoded_key[2]~13_combout\,
	datac => \decodifier_inst|decoded_key[2]~4_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|decoded_key[2]~14_combout\);

-- Location: LCCOMB_X31_Y12_N26
\decodifier_inst|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~7_combout\ = (\decodifier_inst|decoded_key[2]~12_combout\ & (((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11))))) # (!\decodifier_inst|decoded_key[2]~12_combout\ & 
-- (\decodifier_inst|decoded_key[2]~14_combout\ & ((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[2]~12_combout\,
	datab => \decodifier_inst|decoded_key[2]~14_combout\,
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \decodifier_inst|comb~7_combout\);

-- Location: LCCOMB_X31_Y12_N20
\decodifier_inst|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~6_combout\ = (!\decodifier_inst|decoded_key[2]~12_combout\ & (!\decodifier_inst|decoded_key[2]~14_combout\ & ((\decodifier_inst|decoded_key[3]~5_combout\) # (\debounce_inst|keypad_debounce_aux\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[2]~12_combout\,
	datab => \decodifier_inst|decoded_key[2]~14_combout\,
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(11),
	combout => \decodifier_inst|comb~6_combout\);

-- Location: LCCOMB_X31_Y12_N28
\decodifier_inst|decoded_key[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key\(2) = (!\decodifier_inst|comb~6_combout\ & ((\decodifier_inst|comb~7_combout\) # (\decodifier_inst|decoded_key\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|comb~7_combout\,
	datac => \decodifier_inst|comb~6_combout\,
	datad => \decodifier_inst|decoded_key\(2),
	combout => \decodifier_inst|decoded_key\(2));

-- Location: LCCOMB_X31_Y12_N8
\decodifier_inst|decoded_key[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[3]~15_combout\ = (!\debounce_inst|keypad_debounce_aux\(1) & \debounce_inst|keypad_debounce_aux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_inst|keypad_debounce_aux\(1),
	datac => \debounce_inst|keypad_debounce_aux\(0),
	combout => \decodifier_inst|decoded_key[3]~15_combout\);

-- Location: LCCOMB_X31_Y12_N10
\decodifier_inst|decoded_key[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key[3]~16_combout\ = (\decodifier_inst|decoded_key[3]~15_combout\) # ((\debounce_inst|keypad_debounce_aux\(2)) # ((\decodifier_inst|decoded_key[0]~3_combout\ & \decodifier_inst|decoded_key[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[0]~3_combout\,
	datab => \decodifier_inst|decoded_key[3]~15_combout\,
	datac => \decodifier_inst|decoded_key[2]~4_combout\,
	datad => \debounce_inst|keypad_debounce_aux\(2),
	combout => \decodifier_inst|decoded_key[3]~16_combout\);

-- Location: LCCOMB_X31_Y12_N22
\decodifier_inst|comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~9_combout\ = (!\decodifier_inst|decoded_key[2]~12_combout\ & (\decodifier_inst|decoded_key[3]~16_combout\ & ((\debounce_inst|keypad_debounce_aux\(11)) # (\decodifier_inst|decoded_key[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[2]~12_combout\,
	datab => \debounce_inst|keypad_debounce_aux\(11),
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \decodifier_inst|decoded_key[3]~16_combout\,
	combout => \decodifier_inst|comb~9_combout\);

-- Location: LCCOMB_X31_Y12_N24
\decodifier_inst|comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|comb~8_combout\ = (\decodifier_inst|decoded_key[2]~12_combout\ & ((\debounce_inst|keypad_debounce_aux\(11)) # ((\decodifier_inst|decoded_key[3]~5_combout\)))) # (!\decodifier_inst|decoded_key[2]~12_combout\ & 
-- (!\decodifier_inst|decoded_key[3]~16_combout\ & ((\debounce_inst|keypad_debounce_aux\(11)) # (\decodifier_inst|decoded_key[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodifier_inst|decoded_key[2]~12_combout\,
	datab => \debounce_inst|keypad_debounce_aux\(11),
	datac => \decodifier_inst|decoded_key[3]~5_combout\,
	datad => \decodifier_inst|decoded_key[3]~16_combout\,
	combout => \decodifier_inst|comb~8_combout\);

-- Location: LCCOMB_X31_Y12_N30
\decodifier_inst|decoded_key[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decodifier_inst|decoded_key\(3) = (!\decodifier_inst|comb~8_combout\ & ((\decodifier_inst|comb~9_combout\) # (\decodifier_inst|decoded_key\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodifier_inst|comb~9_combout\,
	datac => \decodifier_inst|comb~8_combout\,
	datad => \decodifier_inst|decoded_key\(3),
	combout => \decodifier_inst|decoded_key\(3));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(4));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(5));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(6));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(7));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(8));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(10));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switches[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_switches(11));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Sum~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Sum~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Sum\);

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Sub~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Sub~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Sub\);

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Mul~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Mul~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Mul\);

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Div~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Div~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Div\);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Cos~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Cos~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Cos\);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Sin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Sin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Sin\);

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Sqrt~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Sqrt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Sqrt\);

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Log~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|op.Log~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Log\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\op.Zero~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_op.Zero\);

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\decoded_key[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|decoded_key\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_decoded_key(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\decoded_key[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|decoded_key\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_decoded_key(1));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\decoded_key[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|decoded_key\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_decoded_key(2));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\decoded_key[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decodifier_inst|decoded_key\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_decoded_key(3));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VCC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_VCC\);

-- Location: PIN_T19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GROUND~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GROUND);
END structure;


