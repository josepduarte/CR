--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed Apr 05 16:43:56 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target top_teste_wrapper.bd
--Design      : top_teste_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_teste_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end top_teste_wrapper;

architecture STRUCTURE of top_teste_wrapper is
  component top_teste is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component top_teste;
begin
top_teste_i: component top_teste
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      clk => clk,
      led(1 downto 0) => led(1 downto 0),
      seg(6 downto 0) => seg(6 downto 0),
      sw(2 downto 0) => sw(2 downto 0)
    );
end STRUCTURE;
