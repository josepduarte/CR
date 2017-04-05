--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
--Date        : Thu Mar 23 13:19:51 2017
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
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    jb_b : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jb_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jc_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jc_p : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of B : entity is "B,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=B,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of B : entity is "B.hwdef";
end B;

architecture STRUCTURE of B is
  component B_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component B_xlslice_0_0;
  component B_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component B_xlslice_1_0;
  component B_InterfaceKeypad_0_0 is
  port (
    clk : in STD_LOGIC;
    TwoDigits : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component B_InterfaceKeypad_0_0;
  component B_ToDisp_0_0 is
  port (
    clk : in STD_LOGIC;
    left : in STD_LOGIC_VECTOR ( 3 downto 0 );
    right : in STD_LOGIC_VECTOR ( 3 downto 0 );
    jc_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jc_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jb_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    jb_n : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component B_ToDisp_0_0;
  signal InterfaceKeypad_0_TwoDigits : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal InterfaceKeypad_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ToDisp_0_jb_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ToDisp_0_jb_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ToDisp_0_jc_n : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ToDisp_0_jc_p : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal btn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal din_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  btn_1(0) <= btn(0);
  clk_1 <= clk;
  din_1(3 downto 0) <= din(3 downto 0);
  dout(3 downto 0) <= InterfaceKeypad_0_dout(3 downto 0);
  jb_b(1 downto 0) <= ToDisp_0_jb_p(1 downto 0);
  jb_n(1 downto 0) <= ToDisp_0_jb_n(1 downto 0);
  jc_n(1 downto 0) <= ToDisp_0_jc_n(1 downto 0);
  jc_p(1 downto 0) <= ToDisp_0_jc_p(1 downto 0);
InterfaceKeypad_0: component B_InterfaceKeypad_0_0
     port map (
      TwoDigits(7 downto 0) => InterfaceKeypad_0_TwoDigits(7 downto 0),
      btn(0) => btn_1(0),
      clk => clk_1,
      din(3 downto 0) => din_1(3 downto 0),
      dout(3 downto 0) => InterfaceKeypad_0_dout(3 downto 0)
    );
ToDisp_0: component B_ToDisp_0_0
     port map (
      clk => clk_1,
      jb_n(1 downto 0) => ToDisp_0_jb_n(1 downto 0),
      jb_p(1 downto 0) => ToDisp_0_jb_p(1 downto 0),
      jc_n(1 downto 0) => ToDisp_0_jc_n(1 downto 0),
      jc_p(1 downto 0) => ToDisp_0_jc_p(1 downto 0),
      left(3 downto 0) => xlslice_0_Dout(3 downto 0),
      right(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
xlslice_0: component B_xlslice_0_0
     port map (
      Din(7 downto 0) => InterfaceKeypad_0_TwoDigits(7 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
xlslice_1: component B_xlslice_1_0
     port map (
      Din(7 downto 0) => InterfaceKeypad_0_TwoDigits(7 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
end STRUCTURE;
