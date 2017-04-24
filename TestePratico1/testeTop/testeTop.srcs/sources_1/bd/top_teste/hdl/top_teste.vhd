--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed Apr 05 16:43:56 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target top_teste.bd
--Design      : top_teste
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_teste is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 1 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top_teste : entity is "top_teste,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_teste,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top_teste : entity is "top_teste.hwdef";
end top_teste;

architecture STRUCTURE of top_teste is
  component top_teste_ClkDividerN_0_0 is
  port (
    reset : in STD_LOGIC;
    clkIn : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component top_teste_ClkDividerN_0_0;
  component top_teste_sort_0_0 is
  port (
    dataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dataOut : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_teste_sort_0_0;
  component top_teste_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component top_teste_blk_mem_gen_0_0;
  component top_teste_EightDispControl_0_0 is
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
  end component top_teste_EightDispControl_0_0;
  component top_teste_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component top_teste_xlconstant_0_0;
  component top_teste_FSM_control_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    swi : in STD_LOGIC_VECTOR ( 2 downto 0 );
    indata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sm_mem : out STD_LOGIC_VECTOR ( 1 downto 0 );
    out_addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    MSDdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LSDdata : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component top_teste_FSM_control_0_0;
  signal ClkDividerN_0_clkOut : STD_LOGIC;
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal FSM_control_0_LSDdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal FSM_control_0_MSDdata : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal FSM_control_0_out_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal FSM_control_0_sm_mem : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal sort_0_dataOut : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  clk_1 <= clk;
  led(1 downto 0) <= FSM_control_0_out_addr(1 downto 0);
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
  sw_1(2 downto 0) <= sw(2 downto 0);
ClkDividerN_0: component top_teste_ClkDividerN_0_0
     port map (
      clkIn => clk_1,
      clkOut => ClkDividerN_0_clkOut,
      reset => btnC_1
    );
EightDispControl_0: component top_teste_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlconstant_0_dout(3 downto 0),
      leftR(3 downto 0) => xlconstant_0_dout(3 downto 0),
      near_leftL(3 downto 0) => xlconstant_0_dout(3 downto 0),
      near_leftR(3 downto 0) => xlconstant_0_dout(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_0_dout(3 downto 0),
      near_rightR(3 downto 0) => FSM_control_0_MSDdata(3 downto 0),
      rightL(3 downto 0) => xlconstant_0_dout(3 downto 0),
      rightR(3 downto 0) => FSM_control_0_LSDdata(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
FSM_control_0: component top_teste_FSM_control_0_0
     port map (
      LSDdata(3 downto 0) => FSM_control_0_LSDdata(3 downto 0),
      MSDdata(3 downto 0) => FSM_control_0_MSDdata(3 downto 0),
      clk => ClkDividerN_0_clkOut,
      indata(31 downto 0) => sort_0_dataOut(31 downto 0),
      out_addr(1 downto 0) => FSM_control_0_out_addr(1 downto 0),
      rst => btnC_1,
      sm_mem(1 downto 0) => FSM_control_0_sm_mem(1 downto 0),
      swi(2 downto 0) => sw_1(2 downto 0)
    );
blk_mem_gen_0: component top_teste_blk_mem_gen_0_0
     port map (
      addra(1 downto 0) => FSM_control_0_sm_mem(1 downto 0),
      clka => ClkDividerN_0_clkOut,
      douta(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
sort_0: component top_teste_sort_0_0
     port map (
      dataIn(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      dataOut(31 downto 0) => sort_0_dataOut(31 downto 0)
    );
xlconstant_0: component top_teste_xlconstant_0_0
     port map (
      dout(3 downto 0) => xlconstant_0_dout(3 downto 0)
    );
end STRUCTURE;
