--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 03 15:54:10 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target test_concat.bd
--Design      : test_concat
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity test_concat is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of test_concat : entity is "test_concat,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=test_concat,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of test_concat : entity is "test_concat.hwdef";
end test_concat;

architecture STRUCTURE of test_concat is
  component test_concat_concat_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 2047 downto 0 )
  );
  end component test_concat_concat_memory_0_0;
  component test_concat_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component test_concat_blk_mem_gen_0_0;
  component test_concat_number_of_ones_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 2047 downto 0 );
    result : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component test_concat_number_of_ones_0_0;
  component test_concat_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component test_concat_xlconstant_0_0;
  component test_concat_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component test_concat_xlconstant_1_0;
  component test_concat_EightDispControl_0_0 is
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
  end component test_concat_EightDispControl_0_0;
  component test_concat_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component test_concat_xlconstant_2_0;
  component test_concat_IterativeSorterFSM_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 2047 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 2047 downto 0 )
  );
  end component test_concat_IterativeSorterFSM_0_0;
  component test_concat_BinToBCD16_0_0 is
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
  end component test_concat_BinToBCD16_0_0;
  signal BinToBCD16_0_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IterativeSorterFSM_0_data_out : STD_LOGIC_VECTOR ( 2047 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal concat_memory_0_address : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal concat_memory_0_data_out : STD_LOGIC_VECTOR ( 2047 downto 0 );
  signal number_of_ones_0_result : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_0_ready_UNCONNECTED : STD_LOGIC;
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  clk_1 <= clk;
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
BinToBCD16_0: component test_concat_BinToBCD16_0_0
     port map (
      BCD0(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      BCD3(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      BCD4(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      binary(15 downto 0) => number_of_ones_0_result(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_0_ready_UNCONNECTED,
      request => xlconstant_1_dout(0),
      reset => xlconstant_0_dout(0)
    );
EightDispControl_0: component test_concat_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlconstant_2_dout(3 downto 0),
      leftR(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      near_leftL(3 downto 0) => xlconstant_2_dout(3 downto 0),
      near_leftR(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_2_dout(3 downto 0),
      near_rightR(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      rightL(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      rightR(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
IterativeSorterFSM_0: component test_concat_IterativeSorterFSM_0_0
     port map (
      clk => clk_1,
      data_in(2047 downto 0) => concat_memory_0_data_out(2047 downto 0),
      data_out(2047 downto 0) => IterativeSorterFSM_0_data_out(2047 downto 0),
      reset => number_of_ones_0_result(0)
    );
blk_mem_gen_0: component test_concat_blk_mem_gen_0_0
     port map (
      addra(6 downto 0) => concat_memory_0_address(6 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0)
    );
concat_memory_0: component test_concat_concat_memory_0_0
     port map (
      address(6 downto 0) => concat_memory_0_address(6 downto 0),
      clk => clk_1,
      data_in(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      data_out(2047 downto 0) => concat_memory_0_data_out(2047 downto 0)
    );
number_of_ones_0: component test_concat_number_of_ones_0_0
     port map (
      clk => clk_1,
      datain(2047 downto 0) => IterativeSorterFSM_0_data_out(2047 downto 0),
      reset => xlconstant_0_dout(0),
      result(15 downto 0) => number_of_ones_0_result(15 downto 0)
    );
xlconstant_0: component test_concat_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component test_concat_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component test_concat_xlconstant_2_0
     port map (
      dout(3 downto 0) => xlconstant_2_dout(3 downto 0)
    );
end STRUCTURE;
