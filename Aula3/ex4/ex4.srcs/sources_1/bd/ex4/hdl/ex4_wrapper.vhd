--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Mar 17 10:17:46 2017
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
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 9 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end ex4_wrapper;

architecture STRUCTURE of ex4_wrapper is
  component ex4 is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 9 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC
  );
  end component ex4;
begin
ex4_i: component ex4
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      clk => clk,
      led(9 downto 0) => led(9 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
