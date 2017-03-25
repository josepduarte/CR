--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Mar 24 11:07:47 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex2_top.bd
--Design      : ex2_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex2_top is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    btnL : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex2_top : entity is "ex2_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex2_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=12,numReposBlks=12,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex2_top : entity is "ex2_top.hwdef";
end ex2_top;

architecture STRUCTURE of ex2_top is
  component ex2_top_max_min_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 31 downto 0 );
    address : out STD_LOGIC_VECTOR ( 8 downto 0 );
    dataMax : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataMin : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ex2_top_max_min_FSM_0_0;
  component ex2_top_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ex2_top_blk_mem_gen_0_0;
  component ex2_top_Mux2_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    datain1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ex2_top_Mux2_1_0_0;
  component ex2_top_EightDispControl_0_0 is
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
  end component ex2_top_EightDispControl_0_0;
  component ex2_top_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_0;
  component ex2_top_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_1;
  component ex2_top_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_2;
  component ex2_top_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_3;
  component ex2_top_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_4;
  component ex2_top_xlslice_0_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_5;
  component ex2_top_xlslice_0_6 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_0_6;
  component ex2_top_xlslice_6_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex2_top_xlslice_6_0;
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mux2_1_0_dataout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal btnL_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal max_min_FSM_0_address : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal max_min_FSM_0_dataMax : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal max_min_FSM_0_dataMin : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_4_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_5_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_6_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_7_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  btnL_1 <= btnL;
  clk_1 <= clk;
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
EightDispControl_0: component ex2_top_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlslice_7_Dout(3 downto 0),
      leftR(3 downto 0) => xlslice_3_Dout(3 downto 0),
      near_leftL(3 downto 0) => xlslice_6_Dout(3 downto 0),
      near_leftR(3 downto 0) => xlslice_2_Dout(3 downto 0),
      near_rightL(3 downto 0) => xlslice_5_Dout(3 downto 0),
      near_rightR(3 downto 0) => xlslice_1_Dout(3 downto 0),
      rightL(3 downto 0) => xlslice_4_Dout(3 downto 0),
      rightR(3 downto 0) => xlslice_0_Dout(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
Mux2_1_0: component ex2_top_Mux2_1_0_0
     port map (
      datain0(31 downto 0) => max_min_FSM_0_dataMax(31 downto 0),
      datain1(31 downto 0) => max_min_FSM_0_dataMin(31 downto 0),
      dataout(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      sel => btnL_1
    );
blk_mem_gen_0: component ex2_top_blk_mem_gen_0_0
     port map (
      addra(8 downto 0) => max_min_FSM_0_address(8 downto 0),
      clka => clk_1,
      douta(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
max_min_FSM_0: component ex2_top_max_min_FSM_0_0
     port map (
      address(8 downto 0) => max_min_FSM_0_address(8 downto 0),
      clk => clk_1,
      dataMax(31 downto 0) => max_min_FSM_0_dataMax(31 downto 0),
      dataMin(31 downto 0) => max_min_FSM_0_dataMin(31 downto 0),
      datain(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      reset => btnC_1
    );
xlslice_0: component ex2_top_xlslice_0_0
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
xlslice_1: component ex2_top_xlslice_0_1
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
xlslice_2: component ex2_top_xlslice_0_2
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_2_Dout(3 downto 0)
    );
xlslice_3: component ex2_top_xlslice_0_3
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_3_Dout(3 downto 0)
    );
xlslice_4: component ex2_top_xlslice_0_4
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_4_Dout(3 downto 0)
    );
xlslice_5: component ex2_top_xlslice_0_5
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_5_Dout(3 downto 0)
    );
xlslice_6: component ex2_top_xlslice_0_6
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_6_Dout(3 downto 0)
    );
xlslice_7: component ex2_top_xlslice_6_0
     port map (
      Din(31 downto 0) => Mux2_1_0_dataout(31 downto 0),
      Dout(3 downto 0) => xlslice_7_Dout(3 downto 0)
    );
end STRUCTURE;
