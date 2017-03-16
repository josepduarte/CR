--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 16 11:12:54 2017
--Host        : RUILOPESC3FF running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_EightDispControl_0_0 is
  port (
    clk : in STD_LOGIC;
    leftL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_leftL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_rightL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rightL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leftR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_leftR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_rightR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rightR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    select_display : out STD_LOGIC_VECTOR ( 7 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_EightDispControl_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlconstant_1_0;
  component design_1_ConsecutiveOnesFSM_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    \sequence\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_ConsecutiveOnesFSM_0_0;
  component design_1_BinToBCD16_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    ready : out STD_LOGIC;
    binary : in STD_LOGIC_VECTOR ( 15 downto 0 );
    request : in STD_LOGIC;
    BCD4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BCD3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BCD2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BCD1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BCD0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_BinToBCD16_0_1;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_xlconstant_0_1;
  signal BinToBCD16_0_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ConsecutiveOnesFSM_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_BinToBCD16_0_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_BinToBCD16_0_BCD2_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_0_BCD3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_0_BCD4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  clk_1 <= clk;
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
BinToBCD16_0: component design_1_BinToBCD16_0_1
     port map (
      BCD0(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      BCD2(3 downto 0) => NLW_BinToBCD16_0_BCD2_UNCONNECTED(3 downto 0),
      BCD3(3 downto 0) => NLW_BinToBCD16_0_BCD3_UNCONNECTED(3 downto 0),
      BCD4(3 downto 0) => NLW_BinToBCD16_0_BCD4_UNCONNECTED(3 downto 0),
      binary(15 downto 0) => xlconcat_0_dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_0_ready_UNCONNECTED,
      request => xlconstant_0_dout(0),
      reset => btnC_1
    );
ConsecutiveOnesFSM_0: component design_1_ConsecutiveOnesFSM_0_0
     port map (
      clock => clk_1,
      count(3 downto 0) => ConsecutiveOnesFSM_0_count(3 downto 0),
      reset => btnC_1,
      \sequence\(15 downto 0) => sw_1(15 downto 0)
    );
EightDispControl_0: component design_1_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      leftR(3 downto 0) => xlconstant_1_dout(3 downto 0),
      near_leftL(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      near_leftR(3 downto 0) => xlconstant_1_dout(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_1_dout(3 downto 0),
      near_rightR(3 downto 0) => xlconstant_1_dout(3 downto 0),
      rightL(3 downto 0) => xlconstant_1_dout(3 downto 0),
      rightR(3 downto 0) => ConsecutiveOnesFSM_0_count(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(3 downto 0) => ConsecutiveOnesFSM_0_count(3 downto 0),
      In1(11 downto 0) => xlconstant_2_dout(11 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(3 downto 0) => xlconstant_1_dout(3 downto 0)
    );
xlconstant_2: component design_1_xlconstant_0_1
     port map (
      dout(11 downto 0) => xlconstant_2_dout(11 downto 0)
    );
end STRUCTURE;
