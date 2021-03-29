-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/03/2020 18:20:20"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TestUnitAlu8bits IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	OVERFLOW : BUFFER std_logic;
	BMA : BUFFER std_logic;
	R : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TestUnitAlu8bits;

-- Design Ports Information
-- OVERFLOW	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BMA	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestUnitAlu8bits IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_OVERFLOW : std_logic;
SIGNAL ww_BMA : std_logic;
SIGNAL ww_R : std_logic_vector(7 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OVERFLOW~output_o\ : std_logic;
SIGNAL \BMA~output_o\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \R[4]~output_o\ : std_logic;
SIGNAL \R[5]~output_o\ : std_logic;
SIGNAL \R[6]~output_o\ : std_logic;
SIGNAL \R[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \State.C~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \State.C~q\ : std_logic;
SIGNAL \State.D~feeder_combout\ : std_logic;
SIGNAL \State.D~q\ : std_logic;
SIGNAL \State.E~feeder_combout\ : std_logic;
SIGNAL \State.E~q\ : std_logic;
SIGNAL \State.F~feeder_combout\ : std_logic;
SIGNAL \State.F~q\ : std_logic;
SIGNAL \State.A~0_combout\ : std_logic;
SIGNAL \State.A~q\ : std_logic;
SIGNAL \State.B~0_combout\ : std_logic;
SIGNAL \State.B~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \B_test~1_combout\ : std_logic;
SIGNAL \A_test[0]~feeder_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~1_combout\ : std_logic;
SIGNAL \A_test~4_combout\ : std_logic;
SIGNAL \B_test~0_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~2_combout\ : std_logic;
SIGNAL \B_test[3]~5_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~3_combout\ : std_logic;
SIGNAL \A_test~5_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \B_test[7]~4_combout\ : std_logic;
SIGNAL \B_test[5]~3_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~0_combout\ : std_logic;
SIGNAL \B_test[6]~2_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~4_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~5_combout\ : std_logic;
SIGNAL \U|u2|u4|u3|u4|C~6_combout\ : std_logic;
SIGNAL \U|u3|u4|D~6_combout\ : std_logic;
SIGNAL \U|u3|u4|D~5_combout\ : std_logic;
SIGNAL \U|u3|u4|D~7_combout\ : std_logic;
SIGNAL \U|u3|u4|D~0_combout\ : std_logic;
SIGNAL \U|u3|u4|D~1_combout\ : std_logic;
SIGNAL \U|u3|u4|D~2_combout\ : std_logic;
SIGNAL \U|u3|u4|D~3_combout\ : std_logic;
SIGNAL \U|u3|u4|D~4_combout\ : std_logic;
SIGNAL \U|u3|u4|D~8_combout\ : std_logic;
SIGNAL \U|u4|u3|u1|u4|C~0_combout\ : std_logic;
SIGNAL \U|u4|u3|u2|u4|C~0_combout\ : std_logic;
SIGNAL \U|u4|u3|u7|u2|C~combout\ : std_logic;
SIGNAL \U|u4|u3|u4|u3|C~combout\ : std_logic;
SIGNAL \U|u4|u3|u5|u4|C~0_combout\ : std_logic;
SIGNAL \U|u4|u3|u6|u4|C~0_combout\ : std_logic;
SIGNAL \U|u4|u3|u7|u4|C~0_combout\ : std_logic;
SIGNAL \U|u4|u3|u8|u4|C~0_combout\ : std_logic;
SIGNAL A_test : std_logic_vector(7 DOWNTO 0);
SIGNAL B_test : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
OVERFLOW <= ww_OVERFLOW;
BMA <= ww_BMA;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X0_Y61_N23
\OVERFLOW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OVERFLOW~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\BMA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u2|u4|u3|u4|C~6_combout\,
	devoe => ww_devoe,
	o => \BMA~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u1|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u2|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u7|u2|C~combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u4|u3|C~combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u5|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u6|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u7|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[6]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U|u4|u3|u8|u4|C~0_combout\,
	devoe => ww_devoe,
	o => \R[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y31_N22
\State.C~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.C~feeder_combout\ = \State.B~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.B~q\,
	combout => \State.C~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X18_Y31_N23
\State.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.C~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.C~q\);

-- Location: LCCOMB_X18_Y31_N12
\State.D~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.D~feeder_combout\ = \State.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.C~q\,
	combout => \State.D~feeder_combout\);

-- Location: FF_X18_Y31_N13
\State.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.D~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.D~q\);

-- Location: LCCOMB_X18_Y31_N30
\State.E~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.E~feeder_combout\ = \State.D~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.D~q\,
	combout => \State.E~feeder_combout\);

-- Location: FF_X18_Y31_N31
\State.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.E~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E~q\);

-- Location: LCCOMB_X18_Y31_N28
\State.F~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.F~feeder_combout\ = \State.E~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.E~q\,
	combout => \State.F~feeder_combout\);

-- Location: FF_X18_Y31_N29
\State.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.F~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.F~q\);

-- Location: LCCOMB_X18_Y31_N20
\State.A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.A~0_combout\ = !\State.F~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.F~q\,
	combout => \State.A~0_combout\);

-- Location: FF_X18_Y31_N21
\State.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.A~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.A~q\);

-- Location: LCCOMB_X18_Y31_N14
\State.B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \State.B~0_combout\ = !\State.A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.A~q\,
	combout => \State.B~0_combout\);

-- Location: FF_X18_Y31_N15
\State.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \State.B~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.B~q\);

-- Location: LCCOMB_X18_Y31_N2
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (!\State.B~q\ & (\State.A~q\ & !\State.D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.B~q\,
	datab => \State.A~q\,
	datad => \State.D~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X18_Y31_N3
\A_test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(1));

-- Location: LCCOMB_X17_Y31_N18
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\State.E~q\) # ((\State.F~q\) # (!\State.A~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.E~q\,
	datac => \State.A~q\,
	datad => \State.F~q\,
	combout => \WideOr1~0_combout\);

-- Location: FF_X17_Y31_N19
\A_test[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr1~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(4));

-- Location: LCCOMB_X18_Y31_N8
\B_test~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test~1_combout\ = (\State.B~q\) # (\State.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.B~q\,
	datad => \State.D~q\,
	combout => \B_test~1_combout\);

-- Location: FF_X18_Y31_N9
\B_test[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test~1_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(1));

-- Location: LCCOMB_X18_Y31_N18
\A_test[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_test[0]~feeder_combout\ = \State.D~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.D~q\,
	combout => \A_test[0]~feeder_combout\);

-- Location: FF_X18_Y31_N19
\A_test[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A_test[0]~feeder_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(0));

-- Location: LCCOMB_X17_Y31_N12
\U|u2|u4|u3|u4|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~1_combout\ = (A_test(1) & (A_test(4) & ((A_test(0)) # (!B_test(1))))) # (!A_test(1) & ((A_test(4) & (!B_test(1) & A_test(0))) # (!A_test(4) & (B_test(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(1),
	datab => A_test(4),
	datac => B_test(1),
	datad => A_test(0),
	combout => \U|u2|u4|u3|u4|C~1_combout\);

-- Location: LCCOMB_X18_Y31_N16
\A_test~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_test~4_combout\ = (\State.D~q\) # (\State.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.D~q\,
	datac => \State.C~q\,
	combout => \A_test~4_combout\);

-- Location: FF_X18_Y31_N17
\A_test[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A_test~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(2));

-- Location: LCCOMB_X17_Y31_N0
\B_test~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test~0_combout\ = (\State.D~q\) # (\State.F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.D~q\,
	datad => \State.F~q\,
	combout => \B_test~0_combout\);

-- Location: FF_X17_Y31_N1
\B_test[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(4));

-- Location: LCCOMB_X17_Y31_N22
\U|u2|u4|u3|u4|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~2_combout\ = (!A_test(2) & ((\U|u2|u4|u3|u4|C~1_combout\ & (!A_test(4) & !B_test(4))) # (!\U|u2|u4|u3|u4|C~1_combout\ & (A_test(4) & B_test(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u2|u4|u3|u4|C~1_combout\,
	datab => A_test(4),
	datac => A_test(2),
	datad => B_test(4),
	combout => \U|u2|u4|u3|u4|C~2_combout\);

-- Location: LCCOMB_X18_Y31_N0
\B_test[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test[3]~5_combout\ = !\State.C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.C~q\,
	combout => \B_test[3]~5_combout\);

-- Location: FF_X18_Y31_N1
\B_test[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test[3]~5_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(3));

-- Location: LCCOMB_X17_Y31_N4
\U|u2|u4|u3|u4|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~3_combout\ = (\U|u2|u4|u3|u4|C~2_combout\) # ((B_test(4) & ((B_test(3)) # (!A_test(4)))) # (!B_test(4) & (B_test(3) & !A_test(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u2|u4|u3|u4|C~2_combout\,
	datab => B_test(4),
	datac => B_test(3),
	datad => A_test(4),
	combout => \U|u2|u4|u3|u4|C~3_combout\);

-- Location: LCCOMB_X18_Y31_N6
\A_test~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_test~5_combout\ = (\State.B~q\) # (\State.F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State.B~q\,
	datad => \State.F~q\,
	combout => \A_test~5_combout\);

-- Location: FF_X18_Y31_N7
\A_test[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \A_test~5_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(7));

-- Location: LCCOMB_X18_Y31_N24
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (!\State.C~q\ & (\State.A~q\ & !\State.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State.C~q\,
	datab => \State.A~q\,
	datad => \State.B~q\,
	combout => \WideOr0~combout\);

-- Location: FF_X18_Y31_N25
\A_test[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A_test(5));

-- Location: LCCOMB_X18_Y31_N4
\B_test[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test[7]~4_combout\ = !\A_test~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A_test~5_combout\,
	combout => \B_test[7]~4_combout\);

-- Location: FF_X18_Y31_N5
\B_test[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test[7]~4_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(7));

-- Location: LCCOMB_X18_Y31_N10
\B_test[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test[5]~3_combout\ = !\State.D~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.D~q\,
	combout => \B_test[5]~3_combout\);

-- Location: FF_X18_Y31_N11
\B_test[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test[5]~3_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(5));

-- Location: LCCOMB_X16_Y31_N8
\U|u2|u4|u3|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~0_combout\ = (A_test(7) & (A_test(5) $ (((B_test(5)))))) # (!A_test(7) & ((B_test(7)) # (A_test(5) $ (B_test(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(7),
	datab => A_test(5),
	datac => B_test(7),
	datad => B_test(5),
	combout => \U|u2|u4|u3|u4|C~0_combout\);

-- Location: LCCOMB_X18_Y31_N26
\B_test[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \B_test[6]~2_combout\ = !\State.A~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \State.A~q\,
	combout => \B_test[6]~2_combout\);

-- Location: FF_X18_Y31_N27
\B_test[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B_test[6]~2_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B_test(6));

-- Location: LCCOMB_X16_Y31_N26
\U|u2|u4|u3|u4|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~4_combout\ = (\U|u2|u4|u3|u4|C~3_combout\ & (!\U|u2|u4|u3|u4|C~0_combout\ & (A_test(2) $ (!B_test(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u2|u4|u3|u4|C~3_combout\,
	datab => \U|u2|u4|u3|u4|C~0_combout\,
	datac => A_test(2),
	datad => B_test(6),
	combout => \U|u2|u4|u3|u4|C~4_combout\);

-- Location: LCCOMB_X16_Y31_N28
\U|u2|u4|u3|u4|C~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~5_combout\ = (B_test(6) & (A_test(2) & ((A_test(5)) # (!B_test(5))))) # (!B_test(6) & ((A_test(5)) # ((A_test(2)) # (!B_test(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B_test(6),
	datab => A_test(5),
	datac => A_test(2),
	datad => B_test(5),
	combout => \U|u2|u4|u3|u4|C~5_combout\);

-- Location: LCCOMB_X16_Y31_N2
\U|u2|u4|u3|u4|C~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u2|u4|u3|u4|C~6_combout\ = (\U|u2|u4|u3|u4|C~4_combout\) # ((\U|u2|u4|u3|u4|C~5_combout\ & (!B_test(7) & A_test(7))) # (!\U|u2|u4|u3|u4|C~5_combout\ & ((A_test(7)) # (!B_test(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u2|u4|u3|u4|C~4_combout\,
	datab => \U|u2|u4|u3|u4|C~5_combout\,
	datac => B_test(7),
	datad => A_test(7),
	combout => \U|u2|u4|u3|u4|C~6_combout\);

-- Location: LCCOMB_X16_Y31_N12
\U|u3|u4|D~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~6_combout\ = (A_test(7) & ((A_test(5) $ (B_test(5))) # (!B_test(7)))) # (!A_test(7) & (A_test(5) $ (((B_test(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(7),
	datab => A_test(5),
	datac => B_test(7),
	datad => B_test(5),
	combout => \U|u3|u4|D~6_combout\);

-- Location: LCCOMB_X17_Y31_N28
\U|u3|u4|D~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~5_combout\ = (A_test(1) & (A_test(4) & (B_test(1) & !A_test(0)))) # (!A_test(1) & ((B_test(1)) # ((A_test(4) & !A_test(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(1),
	datab => A_test(4),
	datac => B_test(1),
	datad => A_test(0),
	combout => \U|u3|u4|D~5_combout\);

-- Location: LCCOMB_X16_Y31_N10
\U|u3|u4|D~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~7_combout\ = (!\U|u3|u4|D~6_combout\ & ((A_test(2) & ((B_test(6)))) # (!A_test(2) & (!\U|u3|u4|D~5_combout\ & !B_test(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u3|u4|D~6_combout\,
	datab => \U|u3|u4|D~5_combout\,
	datac => A_test(2),
	datad => B_test(6),
	combout => \U|u3|u4|D~7_combout\);

-- Location: LCCOMB_X16_Y31_N16
\U|u3|u4|D~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~0_combout\ = (A_test(7) & (B_test(7) & (A_test(2) & !B_test(6)))) # (!A_test(7) & ((B_test(7)) # ((A_test(2) & !B_test(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(7),
	datab => B_test(7),
	datac => A_test(2),
	datad => B_test(6),
	combout => \U|u3|u4|D~0_combout\);

-- Location: LCCOMB_X16_Y31_N30
\U|u3|u4|D~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~1_combout\ = (A_test(7) & (B_test(7) & (A_test(2) $ (!B_test(6))))) # (!A_test(7) & ((A_test(2) $ (!B_test(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A_test(7),
	datab => B_test(7),
	datac => A_test(2),
	datad => B_test(6),
	combout => \U|u3|u4|D~1_combout\);

-- Location: LCCOMB_X16_Y31_N4
\U|u3|u4|D~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~2_combout\ = (!B_test(4) & A_test(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B_test(4),
	datad => A_test(4),
	combout => \U|u3|u4|D~2_combout\);

-- Location: LCCOMB_X16_Y31_N22
\U|u3|u4|D~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~3_combout\ = (\U|u3|u4|D~1_combout\ & ((\U|u3|u4|D~2_combout\ & ((A_test(5)) # (!B_test(5)))) # (!\U|u3|u4|D~2_combout\ & (!B_test(5) & A_test(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u3|u4|D~1_combout\,
	datab => \U|u3|u4|D~2_combout\,
	datac => B_test(5),
	datad => A_test(5),
	combout => \U|u3|u4|D~3_combout\);

-- Location: LCCOMB_X17_Y31_N6
\U|u3|u4|D~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~4_combout\ = (!B_test(3) & (B_test(4) $ (!A_test(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => B_test(4),
	datac => B_test(3),
	datad => A_test(4),
	combout => \U|u3|u4|D~4_combout\);

-- Location: LCCOMB_X16_Y31_N24
\U|u3|u4|D~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u3|u4|D~8_combout\ = (\U|u3|u4|D~0_combout\) # ((\U|u3|u4|D~3_combout\) # ((\U|u3|u4|D~7_combout\ & \U|u3|u4|D~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U|u3|u4|D~7_combout\,
	datab => \U|u3|u4|D~0_combout\,
	datac => \U|u3|u4|D~3_combout\,
	datad => \U|u3|u4|D~4_combout\,
	combout => \U|u3|u4|D~8_combout\);

-- Location: LCCOMB_X17_Y31_N30
\U|u4|u3|u1|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u1|u4|C~0_combout\ = (\U|u3|u4|D~8_combout\ & ((A_test(0)))) # (!\U|u3|u4|D~8_combout\ & (A_test(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A_test(4),
	datac => \U|u3|u4|D~8_combout\,
	datad => A_test(0),
	combout => \U|u4|u3|u1|u4|C~0_combout\);

-- Location: LCCOMB_X17_Y31_N16
\U|u4|u3|u2|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u2|u4|C~0_combout\ = (\U|u3|u4|D~8_combout\ & ((A_test(1)))) # (!\U|u3|u4|D~8_combout\ & (B_test(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => B_test(1),
	datad => A_test(1),
	combout => \U|u4|u3|u2|u4|C~0_combout\);

-- Location: LCCOMB_X16_Y31_N14
\U|u4|u3|u7|u2|C\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u7|u2|C~combout\ = (\U|u3|u4|D~8_combout\ & A_test(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => A_test(2),
	combout => \U|u4|u3|u7|u2|C~combout\);

-- Location: LCCOMB_X17_Y31_N14
\U|u4|u3|u4|u3|C\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u4|u3|C~combout\ = (!\U|u3|u4|D~8_combout\ & B_test(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => B_test(3),
	combout => \U|u4|u3|u4|u3|C~combout\);

-- Location: LCCOMB_X16_Y31_N0
\U|u4|u3|u5|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u5|u4|C~0_combout\ = (\U|u3|u4|D~8_combout\ & ((A_test(4)))) # (!\U|u3|u4|D~8_combout\ & (B_test(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => B_test(4),
	datad => A_test(4),
	combout => \U|u4|u3|u5|u4|C~0_combout\);

-- Location: LCCOMB_X16_Y31_N6
\U|u4|u3|u6|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u6|u4|C~0_combout\ = (\U|u3|u4|D~8_combout\ & ((A_test(5)))) # (!\U|u3|u4|D~8_combout\ & (B_test(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => B_test(5),
	datad => A_test(5),
	combout => \U|u4|u3|u6|u4|C~0_combout\);

-- Location: LCCOMB_X16_Y31_N20
\U|u4|u3|u7|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u7|u4|C~0_combout\ = (\U|u3|u4|D~8_combout\ & (A_test(2))) # (!\U|u3|u4|D~8_combout\ & ((B_test(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U|u3|u4|D~8_combout\,
	datac => A_test(2),
	datad => B_test(6),
	combout => \U|u4|u3|u7|u4|C~0_combout\);

-- Location: LCCOMB_X16_Y31_N18
\U|u4|u3|u8|u4|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U|u4|u3|u8|u4|C~0_combout\ = (B_test(7) & A_test(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => B_test(7),
	datad => A_test(7),
	combout => \U|u4|u3|u8|u4|C~0_combout\);

ww_OVERFLOW <= \OVERFLOW~output_o\;

ww_BMA <= \BMA~output_o\;

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_R(4) <= \R[4]~output_o\;

ww_R(5) <= \R[5]~output_o\;

ww_R(6) <= \R[6]~output_o\;

ww_R(7) <= \R[7]~output_o\;
END structure;


