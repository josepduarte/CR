--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 16 22:57:48 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex4_wrapper.bd
--Design      : ex4_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex4_wrapper is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end ex4_wrapper;

architecture STRUCTURE of ex4_wrapper is
  component ex4 is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component ex4;
begin
ex4_i: component ex4
     port map (
      clk => clk,
      led(9 downto 0) => led(9 downto 0)
    );
end STRUCTURE;
