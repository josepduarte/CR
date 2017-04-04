--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 03 15:54:10 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target test_concat_wrapper.bd
--Design      : test_concat_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_concat_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end test_concat_wrapper;

architecture STRUCTURE of test_concat_wrapper is
  component test_concat is
  port (
    clk : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component test_concat;
begin
test_concat_i: component test_concat
     port map (
      an(7 downto 0) => an(7 downto 0),
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
