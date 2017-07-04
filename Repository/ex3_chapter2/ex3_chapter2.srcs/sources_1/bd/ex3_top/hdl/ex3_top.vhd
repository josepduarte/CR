--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 04 20:26:29 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex3_top.bd
--Design      : ex3_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex3_top is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    btnD : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex3_top : entity is "ex3_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex3_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex3_top : entity is "ex3_top.hwdef";
end ex3_top;

architecture STRUCTURE of ex3_top is
  component ex3_top_MaxMinFSM_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inadd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    outp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    outadd : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_MaxMinFSM_0_0;
  component ex3_top_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex3_top_blk_mem_gen_0_0;
  component ex3_top_CounterGenericNoClk_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable : in STD_LOGIC;
    updown_n : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_CounterGenericNoClk_0_0;
  component ex3_top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex3_top_xlconstant_0_0;
  component ex3_top_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex3_top_xlconstant_1_0;
  component ex3_top_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex3_top_xlconstant_1_1;
  component ex3_top_xlconstant_3_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex3_top_xlconstant_3_1;
  component ex3_top_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex3_top_xlconcat_0_0;
  component ex3_top_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_xlconcat_1_0;
  component ex3_top_EightDispControl_0_0 is
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
  end component ex3_top_EightDispControl_0_0;
  component ex3_top_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_xlslice_0_0;
  component ex3_top_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_xlslice_0_1;
  component ex3_top_xlconstant_3_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_xlconstant_3_3;
  component ex3_top_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_c_addsub_0_0;
  signal CounterGenericNoClk_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MaxMinFSM_0_outadd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal MaxMinFSM_0_outp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal btnD_1 : STD_LOGIC;
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  btnD_1 <= btnD;
  clk_1 <= clk;
  led(3 downto 0) <= MaxMinFSM_0_outadd(3 downto 0);
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
CounterGenericNoClk_0: component ex3_top_CounterGenericNoClk_0_0
     port map (
      clk => clk_1,
      count(3 downto 0) => CounterGenericNoClk_0_count(3 downto 0),
      enable => xlconstant_1_dout(0),
      reset => xlconstant_0_dout(0),
      updown_n => xlconstant_2_dout(0)
    );
EightDispControl_0: component ex3_top_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlconstant_4_dout(3 downto 0),
      leftR(3 downto 0) => xlconstant_4_dout(3 downto 0),
      near_leftL(3 downto 0) => xlconstant_4_dout(3 downto 0),
      near_leftR(3 downto 0) => xlconstant_4_dout(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_4_dout(3 downto 0),
      near_rightR(3 downto 0) => xlslice_0_Dout(3 downto 0),
      rightL(3 downto 0) => xlconstant_4_dout(3 downto 0),
      rightR(3 downto 0) => xlslice_1_Dout(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
MaxMinFSM_0: component ex3_top_MaxMinFSM_0_0
     port map (
      btn(3 downto 0) => xlconcat_1_dout(3 downto 0),
      clk => clk_1,
      inadd(3 downto 0) => c_addsub_0_S(3 downto 0),
      inp(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      outadd(3 downto 0) => MaxMinFSM_0_outadd(3 downto 0),
      outp(7 downto 0) => MaxMinFSM_0_outp(7 downto 0)
    );
blk_mem_gen_0: component ex3_top_blk_mem_gen_0_0
     port map (
      addra(3 downto 0) => CounterGenericNoClk_0_count(3 downto 0),
      clka => clk_1,
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0)
    );
c_addsub_0: component ex3_top_c_addsub_0_0
     port map (
      A(3 downto 0) => CounterGenericNoClk_0_count(3 downto 0),
      S(3 downto 0) => c_addsub_0_S(3 downto 0)
    );
xlconcat_0: component ex3_top_xlconcat_0_0
     port map (
      In0(0) => btnD_1,
      In1(0) => btnC_1,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlconcat_1: component ex3_top_xlconcat_1_0
     port map (
      In0(1 downto 0) => xlconcat_0_dout(1 downto 0),
      In1(1 downto 0) => xlconstant_3_dout(1 downto 0),
      dout(3 downto 0) => xlconcat_1_dout(3 downto 0)
    );
xlconstant_0: component ex3_top_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component ex3_top_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component ex3_top_xlconstant_1_1
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component ex3_top_xlconstant_3_1
     port map (
      dout(1 downto 0) => xlconstant_3_dout(1 downto 0)
    );
xlconstant_4: component ex3_top_xlconstant_3_3
     port map (
      dout(3 downto 0) => xlconstant_4_dout(3 downto 0)
    );
xlslice_0: component ex3_top_xlslice_0_0
     port map (
      Din(7 downto 0) => MaxMinFSM_0_outp(7 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
xlslice_1: component ex3_top_xlslice_0_1
     port map (
      Din(7 downto 0) => MaxMinFSM_0_outp(7 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
end STRUCTURE;
