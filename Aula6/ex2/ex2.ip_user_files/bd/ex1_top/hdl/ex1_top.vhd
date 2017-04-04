--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 04 15:32:31 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex1_top.bd
--Design      : ex1_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex1_top is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex1_top : entity is "ex1_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex1_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex1_top : entity is "ex1_top.hwdef";
end ex1_top;

architecture STRUCTURE of ex1_top is
  component ex1_top_CounterGenericNoClk_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    updown_n : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex1_top_CounterGenericNoClk_0_0;
  component ex1_top_ClkDividerN_0_0 is
  port (
    reset : in STD_LOGIC;
    clkIn : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component ex1_top_ClkDividerN_0_0;
  component ex1_top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_top_xlconstant_0_0;
  component ex1_top_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_top_xlconcat_0_0;
  component ex1_top_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex1_top_xlconstant_1_0;
  component ex1_top_BinToBCD16_0_0 is
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
  end component ex1_top_BinToBCD16_0_0;
  component ex1_top_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_top_xlconstant_2_0;
  component ex1_top_EightDispControl_0_0 is
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
  end component ex1_top_EightDispControl_0_0;
  component ex1_top_xlconstant_2_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex1_top_xlconstant_2_1;
  component ex1_top_dist_mem_gen_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex1_top_dist_mem_gen_0_0;
  signal BinToBCD16_0_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ClkDividerN_0_clkOut : STD_LOGIC;
  signal CounterGenericNoClk_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal dist_mem_gen_0_spo : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_0_ready_UNCONNECTED : STD_LOGIC;
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  clk_1 <= clk;
  led(3 downto 0) <= CounterGenericNoClk_0_count(3 downto 0);
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
BinToBCD16_0: component ex1_top_BinToBCD16_0_0
     port map (
      BCD0(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      BCD3(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      BCD4(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      binary(15 downto 0) => xlconcat_0_dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_0_ready_UNCONNECTED,
      request => xlconstant_2_dout(0),
      reset => xlconstant_0_dout(0)
    );
ClkDividerN_0: component ex1_top_ClkDividerN_0_0
     port map (
      clkIn => clk_1,
      clkOut => ClkDividerN_0_clkOut,
      reset => xlconstant_0_dout(0)
    );
CounterGenericNoClk_0: component ex1_top_CounterGenericNoClk_0_0
     port map (
      clk => ClkDividerN_0_clkOut,
      count(3 downto 0) => CounterGenericNoClk_0_count(3 downto 0),
      enable => xlconstant_2_dout(0),
      reset => xlconstant_0_dout(0),
      updown_n => xlconstant_0_dout(0)
    );
EightDispControl_0: component ex1_top_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlconstant_3_dout(3 downto 0),
      leftR(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      near_leftL(3 downto 0) => xlconstant_3_dout(3 downto 0),
      near_leftR(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_3_dout(3 downto 0),
      near_rightR(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      rightL(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      rightR(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
dist_mem_gen_0: component ex1_top_dist_mem_gen_0_0
     port map (
      a(3 downto 0) => CounterGenericNoClk_0_count(3 downto 0),
      spo(7 downto 0) => dist_mem_gen_0_spo(7 downto 0)
    );
xlconcat_0: component ex1_top_xlconcat_0_0
     port map (
      In0(7 downto 0) => dist_mem_gen_0_spo(7 downto 0),
      In1(7 downto 0) => xlconstant_1_dout(7 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component ex1_top_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component ex1_top_xlconstant_1_0
     port map (
      dout(7 downto 0) => xlconstant_1_dout(7 downto 0)
    );
xlconstant_2: component ex1_top_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component ex1_top_xlconstant_2_1
     port map (
      dout(3 downto 0) => xlconstant_3_dout(3 downto 0)
    );
end STRUCTURE;
