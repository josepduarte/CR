--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 04 19:19:45 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex3_top_wrapper.bd
--Design      : ex3_top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex3_top_wrapper is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end ex3_top_wrapper;

architecture STRUCTURE of ex3_top_wrapper is
  component ex3_top is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component ex3_top;
begin
ex3_top_i: component ex3_top
     port map (
      clk => clk,
      led(8 downto 0) => led(8 downto 0)
    );
end STRUCTURE;
