--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 16 08:32:25 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target GCD_wrapper.bd
--Design      : GCD_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GCD_wrapper is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end GCD_wrapper;

architecture STRUCTURE of GCD_wrapper is
  component GCD is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component GCD;
begin
GCD_i: component GCD
     port map (
      btnC => btnC,
      clk => clk,
      led(7 downto 0) => led(7 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
