--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
--Date        : Sun Apr 02 08:37:25 2017
--Host        : DETI-PC0018 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target B.bd
--Design      : B
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity B is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of B : entity is "B,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=B,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of B : entity is "B.hwdef";
end B;

architecture STRUCTURE of B is
  component B_Get2DigitsN_0_0 is
  port (
    clk : in STD_LOGIC;
    Digits : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component B_Get2DigitsN_0_0;
  signal Get2DigitsN_0_Digits : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Get2DigitsN_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  btnC_1 <= btnC;
  clk_1 <= clk;
  din_1(3 downto 0) <= din(3 downto 0);
  dout(3 downto 0) <= Get2DigitsN_0_dout(3 downto 0);
  led(7 downto 0) <= Get2DigitsN_0_Digits(7 downto 0);
Get2DigitsN_0: component B_Get2DigitsN_0_0
     port map (
      Digits(7 downto 0) => Get2DigitsN_0_Digits(7 downto 0),
      btn(0) => btnC_1,
      clk => clk_1,
      din(3 downto 0) => din_1(3 downto 0),
      dout(3 downto 0) => Get2DigitsN_0_dout(3 downto 0)
    );
end STRUCTURE;
