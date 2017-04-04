--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 03 16:55:41 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target teste_wrapper.bd
--Design      : teste_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity teste_wrapper is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end teste_wrapper;

architecture STRUCTURE of teste_wrapper is
  component teste is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component teste;
begin
teste_i: component teste
     port map (
      clk => clk,
      led(7 downto 0) => led(7 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
