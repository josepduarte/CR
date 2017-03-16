--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 16 08:32:25 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target GCD.bd
--Design      : GCD
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GCD is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of GCD : entity is "GCD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=GCD,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of GCD : entity is "GCD.hwdef";
end GCD;

architecture STRUCTURE of GCD is
  component GCD_Greatest_common_divisor_0_0 is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component GCD_Greatest_common_divisor_0_0;
  signal Greatest_common_divisor_0_led : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  btnC_1 <= btnC;
  clk_1 <= clk;
  led(7 downto 0) <= Greatest_common_divisor_0_led(7 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
Greatest_common_divisor_0: component GCD_Greatest_common_divisor_0_0
     port map (
      btnC => btnC_1,
      clk => clk_1,
      led(7 downto 0) => Greatest_common_divisor_0_led(7 downto 0),
      sw(15 downto 0) => sw_1(15 downto 0)
    );
end STRUCTURE;
