--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Jun 05 14:39:43 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex7_top.bd
--Design      : ex7_top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex7_top is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex7_top : entity is "ex7_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex7_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=18,numReposBlks=18,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex7_top : entity is "ex7_top.hwdef";
end ex7_top;

architecture STRUCTURE of ex7_top is
  component ex7_top_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  end component ex7_top_blk_mem_gen_0_0;
  component ex7_top_ClkDividerN_0_0 is
  port (
    reset : in STD_LOGIC;
    clkIn : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component ex7_top_ClkDividerN_0_0;
  component ex7_top_concat_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 21 downto 0 );
    address : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 175 downto 0 )
  );
  end component ex7_top_concat_memory_0_0;
  component ex7_top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex7_top_xlconstant_0_0;
  component ex7_top_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 21 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  end component ex7_top_blk_mem_gen_1_0;
  component ex7_top_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex7_top_xlconstant_1_1;
  component ex7_top_EightDispControl_0_0 is
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
  end component ex7_top_EightDispControl_0_0;
  component ex7_top_SliceMemory_0_1 is
  port (
    clock : in STD_LOGIC;
    dataIn : in STD_LOGIC_VECTOR ( 175 downto 0 );
    address : out STD_LOGIC_VECTOR ( 2 downto 0 );
    finished : out STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 21 downto 0 )
  );
  end component ex7_top_SliceMemory_0_1;
  component ex7_top_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex7_top_xlslice_0_0;
  component ex7_top_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component ex7_top_xlslice_0_1;
  component ex7_top_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component ex7_top_xlconstant_4_0;
  component ex7_top_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex7_top_xlconcat_0_1;
  component ex7_top_BinToBCD16_1_0 is
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
  end component ex7_top_BinToBCD16_1_0;
  component ex7_top_BinToBCD16_1_1 is
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
  end component ex7_top_BinToBCD16_1_1;
  component ex7_top_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex7_top_xlslice_2_0;
  component ex7_top_sort_0_0 is
  port (
    dataIn : in STD_LOGIC_VECTOR ( 175 downto 0 );
    dataOut : out STD_LOGIC_VECTOR ( 175 downto 0 )
  );
  end component ex7_top_sort_0_0;
  component ex7_top_counter_generic_0_0 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btnC : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component ex7_top_counter_generic_0_0;
  component ex7_top_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex7_top_xlconstant_2_0;
  signal BinToBCD16_1_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_2_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_2_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_2_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SliceMemory_0_address : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal SliceMemory_0_dataOut : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal blk_mem_gen_1_doutb : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal concat_memory_0_address : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal concat_memory_0_data_out : STD_LOGIC_VECTOR ( 175 downto 0 );
  signal counter_generic_0_led : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sort_0_dataOut : STD_LOGIC_VECTOR ( 175 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_BinToBCD16_1_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_BinToBCD16_2_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_BinToBCD16_2_BCD3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_2_BCD4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ClkDividerN_0_clkOut_UNCONNECTED : STD_LOGIC;
  signal NLW_SliceMemory_0_finished_UNCONNECTED : STD_LOGIC;
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  clk_1 <= clk;
  led(15 downto 0) <= xlslice_2_Dout(15 downto 0);
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
BinToBCD16_1: component ex7_top_BinToBCD16_1_0
     port map (
      BCD0(3 downto 0) => BinToBCD16_1_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_1_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_1_BCD2(3 downto 0),
      BCD3(3 downto 0) => BinToBCD16_1_BCD3(3 downto 0),
      BCD4(3 downto 0) => BinToBCD16_1_BCD4(3 downto 0),
      binary(15 downto 0) => xlslice_0_Dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_1_ready_UNCONNECTED,
      request => xlconstant_1_dout(0),
      reset => xlconstant_0_dout(0)
    );
BinToBCD16_2: component ex7_top_BinToBCD16_1_1
     port map (
      BCD0(3 downto 0) => BinToBCD16_2_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_2_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_2_BCD2(3 downto 0),
      BCD3(3 downto 0) => NLW_BinToBCD16_2_BCD3_UNCONNECTED(3 downto 0),
      BCD4(3 downto 0) => NLW_BinToBCD16_2_BCD4_UNCONNECTED(3 downto 0),
      binary(15 downto 0) => xlconcat_0_dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_2_ready_UNCONNECTED,
      request => xlconstant_1_dout(0),
      reset => xlconstant_0_dout(0)
    );
ClkDividerN_0: component ex7_top_ClkDividerN_0_0
     port map (
      clkIn => clk_1,
      clkOut => NLW_ClkDividerN_0_clkOut_UNCONNECTED,
      reset => xlconstant_0_dout(0)
    );
EightDispControl_0: component ex7_top_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => BinToBCD16_2_BCD2(3 downto 0),
      leftR(3 downto 0) => BinToBCD16_1_BCD3(3 downto 0),
      near_leftL(3 downto 0) => BinToBCD16_2_BCD1(3 downto 0),
      near_leftR(3 downto 0) => BinToBCD16_1_BCD2(3 downto 0),
      near_rightL(3 downto 0) => BinToBCD16_2_BCD0(3 downto 0),
      near_rightR(3 downto 0) => BinToBCD16_1_BCD1(3 downto 0),
      rightL(3 downto 0) => BinToBCD16_1_BCD4(3 downto 0),
      rightR(3 downto 0) => BinToBCD16_1_BCD0(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
SliceMemory_0: component ex7_top_SliceMemory_0_1
     port map (
      address(2 downto 0) => SliceMemory_0_address(2 downto 0),
      clock => clk_1,
      dataIn(175 downto 0) => sort_0_dataOut(175 downto 0),
      dataOut(21 downto 0) => SliceMemory_0_dataOut(21 downto 0),
      finished => NLW_SliceMemory_0_finished_UNCONNECTED
    );
blk_mem_gen_0: component ex7_top_blk_mem_gen_0_0
     port map (
      addra(2 downto 0) => concat_memory_0_address(2 downto 0),
      clka => clk_1,
      douta(21 downto 0) => blk_mem_gen_0_douta(21 downto 0)
    );
blk_mem_gen_1: component ex7_top_blk_mem_gen_1_0
     port map (
      addra(2 downto 0) => SliceMemory_0_address(2 downto 0),
      addrb(2 downto 0) => counter_generic_0_led(2 downto 0),
      clka => clk_1,
      clkb => clk_1,
      dina(21 downto 0) => SliceMemory_0_dataOut(21 downto 0),
      doutb(21 downto 0) => blk_mem_gen_1_doutb(21 downto 0),
      wea(0) => xlconstant_1_dout(0)
    );
concat_memory_0: component ex7_top_concat_memory_0_0
     port map (
      address(2 downto 0) => concat_memory_0_address(2 downto 0),
      clk => clk_1,
      data_in(21 downto 0) => blk_mem_gen_0_douta(21 downto 0),
      data_out(175 downto 0) => concat_memory_0_data_out(175 downto 0)
    );
counter_generic_0: component ex7_top_counter_generic_0_0
     port map (
      btnC => xlconstant_0_dout(0),
      clk => clk_1,
      led(2 downto 0) => counter_generic_0_led(2 downto 0),
      sw(1 downto 0) => xlconstant_2_dout(1 downto 0)
    );
sort_0: component ex7_top_sort_0_0
     port map (
      dataIn(175 downto 0) => concat_memory_0_data_out(175 downto 0),
      dataOut(175 downto 0) => sort_0_dataOut(175 downto 0)
    );
xlconcat_0: component ex7_top_xlconcat_0_1
     port map (
      In0(5 downto 0) => xlslice_1_Dout(5 downto 0),
      In1(9 downto 0) => xlconstant_4_dout(9 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component ex7_top_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component ex7_top_xlconstant_1_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component ex7_top_xlconstant_2_0
     port map (
      dout(1 downto 0) => xlconstant_2_dout(1 downto 0)
    );
xlconstant_4: component ex7_top_xlconstant_4_0
     port map (
      dout(9 downto 0) => xlconstant_4_dout(9 downto 0)
    );
xlslice_0: component ex7_top_xlslice_0_0
     port map (
      Din(21 downto 0) => blk_mem_gen_1_doutb(21 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component ex7_top_xlslice_0_1
     port map (
      Din(21 downto 0) => blk_mem_gen_1_doutb(21 downto 0),
      Dout(5 downto 0) => xlslice_1_Dout(5 downto 0)
    );
xlslice_2: component ex7_top_xlslice_2_0
     port map (
      Din(21 downto 0) => blk_mem_gen_0_douta(21 downto 0),
      Dout(15 downto 0) => xlslice_2_Dout(15 downto 0)
    );
end STRUCTURE;
