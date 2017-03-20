--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Mar 17 10:49:18 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex5_wrapper.bd
--Design      : ex5_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex5_wrapper is
  port (
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end ex5_wrapper;

architecture STRUCTURE of ex5_wrapper is
  component ex5 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC
  );
  end component ex5;
begin
ex5_i: component ex5
     port map (
      btnL => btnL,
      btnR => btnR,
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
