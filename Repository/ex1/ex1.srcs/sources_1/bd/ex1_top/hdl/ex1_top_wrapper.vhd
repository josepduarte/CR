--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 04 15:27:19 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex1_top_wrapper.bd
--Design      : ex1_top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex1_top_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end ex1_top_wrapper;

architecture STRUCTURE of ex1_top_wrapper is
  component ex1_top is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ex1_top;
begin
ex1_top_i: component ex1_top
     port map (
      an(7 downto 0) => an(7 downto 0),
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
