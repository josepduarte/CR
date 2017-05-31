--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 24 09:39:13 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target MB_to_display_text_wrapper.bd
--Design      : MB_to_display_text_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MB_to_display_text_wrapper is
  port (
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end MB_to_display_text_wrapper;

architecture STRUCTURE of MB_to_display_text_wrapper is
  component MB_to_display_text is
  port (
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC
  );
  end component MB_to_display_text;
begin
MB_to_display_text_i: component MB_to_display_text
     port map (
      btnCpuReset => btnCpuReset,
      clk => clk
    );
end STRUCTURE;
