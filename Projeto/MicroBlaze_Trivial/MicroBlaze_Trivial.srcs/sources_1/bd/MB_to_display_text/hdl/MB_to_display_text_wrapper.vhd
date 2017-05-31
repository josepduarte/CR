--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon May 22 11:49:53 2017
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
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end MB_to_display_text_wrapper;

architecture STRUCTURE of MB_to_display_text_wrapper is
  component MB_to_display_text is
  port (
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component MB_to_display_text;
begin
MB_to_display_text_i: component MB_to_display_text
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnCpuReset => btnCpuReset,
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
