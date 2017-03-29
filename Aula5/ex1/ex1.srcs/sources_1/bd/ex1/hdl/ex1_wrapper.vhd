--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Mar 28 22:23:29 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex1_wrapper.bd
--Design      : ex1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex1_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end ex1_wrapper;

architecture STRUCTURE of ex1_wrapper is
  component ex1 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex1;
begin
ex1_i: component ex1
     port map (
      an(7 downto 0) => an(7 downto 0),
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0),
      sw(1 downto 0) => sw(1 downto 0)
    );
end STRUCTURE;
