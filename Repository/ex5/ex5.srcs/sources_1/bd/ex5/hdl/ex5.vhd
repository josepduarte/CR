--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Wed Apr 05 14:44:37 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex5.bd
--Design      : ex5
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex5 is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of ex5 : entity is "ex5,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex5,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=25,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of ex5 : entity is "ex5.hwdef";
end ex5;

architecture STRUCTURE of ex5 is
  component ex5_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_xlconstant_0_1;
  component ex5_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_xlconstant_0_0;
  component ex5_getAddress_0_0 is
  port (
    clk : in STD_LOGIC;
    value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finished : out STD_LOGIC
  );
  end component ex5_getAddress_0_0;
  component ex5_Counter_fromX_toY_0_0 is
  port (
    clk : in STD_LOGIC;
    lower : in STD_LOGIC_VECTOR ( 3 downto 0 );
    upper : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex5_Counter_fromX_toY_0_0;
  component ex5_getAddress_0_1 is
  port (
    clk : in STD_LOGIC;
    value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mem_value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finished : out STD_LOGIC
  );
  end component ex5_getAddress_0_1;
  component ex5_Mux4_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    datain1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    datain2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    datain3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex5_Mux4_1_0_0;
  component ex5_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex5_xlconcat_1_0;
  component ex5_ClkDividerN_0_1 is
  port (
    reset : in STD_LOGIC;
    clkIn : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component ex5_ClkDividerN_0_1;
  component ex5_xlconstant_3_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_xlconstant_3_0;
  component ex5_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_blk_mem_gen_0_0;
  component ex5_concat_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ex5_concat_memory_0_0;
  component ex5_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_blk_mem_gen_1_0;
  component ex5_BubbleSorter_0_0 is
  port (
    clock : in STD_LOGIC;
    dataIn : in STD_LOGIC_VECTOR ( 127 downto 0 );
    finished : out STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ex5_BubbleSorter_0_0;
  component ex5_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_util_vector_logic_0_1;
  component ex5_util_vector_logic_0_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_util_vector_logic_0_2;
  component ex5_util_vector_logic_1_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_util_vector_logic_1_1;
  component ex5_EightDispControl_0_0 is
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
  end component ex5_EightDispControl_0_0;
  component ex5_BinToBCD16_0_0 is
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
  end component ex5_BinToBCD16_0_0;
  component ex5_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_xlconstant_2_0;
  component ex5_xlconstant_2_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_xlconstant_2_1;
  component ex5_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_xlconcat_0_1;
  component ex5_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_xlconstant_4_0;
  component ex5_xlconstant_4_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex5_xlconstant_4_1;
  component ex5_util_vector_logic_1_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex5_util_vector_logic_1_2;
  component ex5_SliceMemory_0_0 is
  port (
    clock : in STD_LOGIC;
    dataIn : in STD_LOGIC_VECTOR ( 127 downto 0 );
    address : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finished : out STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex5_SliceMemory_0_0;
  signal BinToBCD16_0_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BubbleSorter_0_dataOut : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal BubbleSorter_0_finished : STD_LOGIC;
  signal ClkDividerN_0_clkOut : STD_LOGIC;
  signal Counter_fromX_toY_0_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mux4_1_0_dataout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SliceMemory_0_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SliceMemory_0_dataOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SliceMemory_0_finished : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal concat_memory_0_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal concat_memory_0_data_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal getAddress_0_addr_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal getAddress_0_finished : STD_LOGIC;
  signal getAddress_1_addr_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal getAddress_1_finished : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconstant_6_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_0_ready_UNCONNECTED : STD_LOGIC;
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  clk_1 <= clk;
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
BinToBCD16_0: component ex5_BinToBCD16_0_0
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
      reset => xlconstant_4_dout(0)
    );
BubbleSorter_0: component ex5_BubbleSorter_0_0
     port map (
      clock => clk_1,
      dataIn(127 downto 0) => concat_memory_0_data_out(127 downto 0),
      dataOut(127 downto 0) => BubbleSorter_0_dataOut(127 downto 0),
      finished => BubbleSorter_0_finished
    );
ClkDividerN_0: component ex5_ClkDividerN_0_1
     port map (
      clkIn => clk_1,
      clkOut => ClkDividerN_0_clkOut,
      reset => xlconstant_3_dout(0)
    );
Counter_fromX_toY_0: component ex5_Counter_fromX_toY_0_0
     port map (
      clk => ClkDividerN_0_clkOut,
      count(3 downto 0) => Counter_fromX_toY_0_count(3 downto 0),
      lower(3 downto 0) => getAddress_1_addr_out(3 downto 0),
      upper(3 downto 0) => getAddress_0_addr_out(3 downto 0)
    );
EightDispControl_0: component ex5_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => xlconstant_6_dout(3 downto 0),
      leftR(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      near_leftL(3 downto 0) => xlconstant_6_dout(3 downto 0),
      near_leftR(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      near_rightL(3 downto 0) => xlconstant_6_dout(3 downto 0),
      near_rightR(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      rightL(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      rightR(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
Mux4_1_0: component ex5_Mux4_1_0_0
     port map (
      datain0(3 downto 0) => getAddress_0_addr_out(3 downto 0),
      datain1(3 downto 0) => getAddress_1_addr_out(3 downto 0),
      datain2(3 downto 0) => SliceMemory_0_address(3 downto 0),
      datain3(3 downto 0) => Counter_fromX_toY_0_count(3 downto 0),
      dataout(3 downto 0) => Mux4_1_0_dataout(3 downto 0),
      sel(1 downto 0) => xlconcat_1_dout(1 downto 0)
    );
SliceMemory_0: component ex5_SliceMemory_0_0
     port map (
      address(3 downto 0) => SliceMemory_0_address(3 downto 0),
      clock => clk_1,
      dataIn(127 downto 0) => BubbleSorter_0_dataOut(127 downto 0),
      dataOut(7 downto 0) => SliceMemory_0_dataOut(7 downto 0),
      finished => SliceMemory_0_finished
    );
blk_mem_gen_0: component ex5_blk_mem_gen_0_0
     port map (
      addra(3 downto 0) => concat_memory_0_address(3 downto 0),
      clka => clk_1,
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0)
    );
blk_mem_gen_1: component ex5_blk_mem_gen_1_0
     port map (
      addra(3 downto 0) => Mux4_1_0_dataout(3 downto 0),
      clka => clk_1,
      dina(7 downto 0) => SliceMemory_0_dataOut(7 downto 0),
      douta(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      wea(0) => util_vector_logic_0_Res(0)
    );
concat_memory_0: component ex5_concat_memory_0_0
     port map (
      address(3 downto 0) => concat_memory_0_address(3 downto 0),
      clk => clk_1,
      data_in(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      data_out(127 downto 0) => concat_memory_0_data_out(127 downto 0)
    );
getAddress_0: component ex5_getAddress_0_0
     port map (
      addr_out(3 downto 0) => getAddress_0_addr_out(3 downto 0),
      clk => clk_1,
      finished => getAddress_0_finished,
      mem_value(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      value(7 downto 0) => xlconstant_1_dout(7 downto 0)
    );
getAddress_1: component ex5_getAddress_0_1
     port map (
      addr_out(3 downto 0) => getAddress_1_addr_out(3 downto 0),
      clk => clk_1,
      finished => getAddress_1_finished,
      mem_value(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      value(7 downto 0) => xlconstant_0_dout(7 downto 0)
    );
util_vector_logic_0: component ex5_util_vector_logic_0_2
     port map (
      Op1(0) => util_vector_logic_2_Res(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component ex5_util_vector_logic_0_1
     port map (
      Op1(0) => getAddress_0_finished,
      Op2(0) => getAddress_1_finished,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component ex5_util_vector_logic_1_2
     port map (
      Op1(0) => util_vector_logic_1_Res(0),
      Op2(0) => SliceMemory_0_finished,
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component ex5_util_vector_logic_1_1
     port map (
      Op1(0) => getAddress_0_finished,
      Op2(0) => BubbleSorter_0_finished,
      Res(0) => util_vector_logic_3_Res(0)
    );
xlconcat_0: component ex5_xlconcat_0_1
     port map (
      In0(7 downto 0) => blk_mem_gen_1_douta(7 downto 0),
      In1(7 downto 0) => xlconstant_5_dout(7 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconcat_1: component ex5_xlconcat_1_0
     port map (
      In0(0) => util_vector_logic_3_Res(0),
      In1(0) => getAddress_1_finished,
      dout(1 downto 0) => xlconcat_1_dout(1 downto 0)
    );
xlconstant_0: component ex5_xlconstant_0_0
     port map (
      dout(7 downto 0) => xlconstant_0_dout(7 downto 0)
    );
xlconstant_1: component ex5_xlconstant_0_1
     port map (
      dout(7 downto 0) => xlconstant_1_dout(7 downto 0)
    );
xlconstant_2: component ex5_xlconstant_2_0
     port map (
      dout(0) => xlconstant_2_dout(0)
    );
xlconstant_3: component ex5_xlconstant_3_0
     port map (
      dout(0) => xlconstant_3_dout(0)
    );
xlconstant_4: component ex5_xlconstant_2_1
     port map (
      dout(0) => xlconstant_4_dout(0)
    );
xlconstant_5: component ex5_xlconstant_4_0
     port map (
      dout(7 downto 0) => xlconstant_5_dout(7 downto 0)
    );
xlconstant_6: component ex5_xlconstant_4_1
     port map (
      dout(3 downto 0) => xlconstant_6_dout(3 downto 0)
    );
end STRUCTURE;
