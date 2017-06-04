--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Jun 02 21:57:06 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target Project_design_wrapper.bd
--Design      : Project_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Project_design_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end Project_design_wrapper;

architecture STRUCTURE of Project_design_wrapper is
  component Project_design is
  port (
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Project_design;
begin
Project_design_i: component Project_design
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnCpuReset => btnCpuReset,
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
