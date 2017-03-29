--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Mar 28 22:23:29 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex1.bd
--Design      : ex1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex1 is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex1 : entity is "ex1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=28,numReposBlks=28,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex1 : entity is "ex1.hwdef";
end ex1;

architecture STRUCTURE of ex1 is
  component ex1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_blk_mem_gen_0_0;
  component ex1_dist_mem_gen_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_dist_mem_gen_0_0;
  component ex1_dist_mem_gen_1_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_dist_mem_gen_1_0;
  component ex1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_xlslice_0_0;
  component ex1_counter_generic_0_0 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btnC : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ex1_counter_generic_0_0;
  component ex1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex1_xlconstant_0_0;
  component ex1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_xlconstant_1_0;
  component ex1_Mux4_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    datain1 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    datain2 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    datain3 : in STD_LOGIC_VECTOR ( 22 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component ex1_Mux4_1_0_0;
  component ex1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component ex1_xlconcat_0_0;
  component ex1_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component ex1_xlconcat_0_1;
  component ex1_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component ex1_xlconcat_1_0;
  component ex1_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 22 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_xlslice_1_0;
  component ex1_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 22 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ex1_xlslice_2_0;
  component ex1_xlconcat_3_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex1_xlconcat_3_1;
  component ex1_xlconstant_2_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component ex1_xlconstant_2_0;
  component ex1_BinToBCD16_0_1 is
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
  end component ex1_BinToBCD16_0_1;
  component ex1_BinToBCD16_1_0 is
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
  end component ex1_BinToBCD16_1_0;
  component ex1_xlconstant_3_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_xlconstant_3_0;
  component ex1_EightDispControl_0_0 is
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
  end component ex1_EightDispControl_0_0;
  component ex1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_util_vector_logic_0_0;
  component ex1_xlconstant_5_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_xlconstant_5_0;
  component ex1_counter_generic_1_0 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btnC : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ex1_counter_generic_1_0;
  component ex1_counter_generic_1_1 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btnC : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component ex1_counter_generic_1_1;
  component ex1_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component ex1_xlconcat_3_0;
  component ex1_Mux2_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    datain1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex1_Mux2_1_0_0;
  component ex1_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Res : out STD_LOGIC
  );
  end component ex1_util_reduced_logic_0_0;
  component ex1_xlconcat_4_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );
  end component ex1_xlconcat_4_0;
  component ex1_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component ex1_xlconstant_4_0;
  signal BinToBCD16_0_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_0_BCD4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BinToBCD16_1_BCD2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal EightDispControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDispControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Mux2_1_0_dataout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Mux4_1_0_dataout : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal counter_generic_0_led : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal counter_generic_1_led : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal counter_generic_2_led : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal dist_mem_gen_0_spo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dist_mem_gen_1_spo : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal xlconcat_4_dout : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal xlconcat_5_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlconstant_5_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_BinToBCD16_0_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_BinToBCD16_1_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_BinToBCD16_1_BCD3_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_BinToBCD16_1_BCD4_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDispControl_0_select_display(7 downto 0);
  clk_1 <= clk;
  seg(6 downto 0) <= EightDispControl_0_segments(6 downto 0);
  sw_1(1 downto 0) <= sw(1 downto 0);
BinToBCD16_0: component ex1_BinToBCD16_0_1
     port map (
      BCD0(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      BCD3(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      BCD4(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      binary(15 downto 0) => xlslice_1_Dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_0_ready_UNCONNECTED,
      request => xlconstant_3_dout(0),
      reset => xlconstant_5_dout(0)
    );
BinToBCD16_1: component ex1_BinToBCD16_1_0
     port map (
      BCD0(3 downto 0) => BinToBCD16_1_BCD0(3 downto 0),
      BCD1(3 downto 0) => BinToBCD16_1_BCD1(3 downto 0),
      BCD2(3 downto 0) => BinToBCD16_1_BCD2(3 downto 0),
      BCD3(3 downto 0) => NLW_BinToBCD16_1_BCD3_UNCONNECTED(3 downto 0),
      BCD4(3 downto 0) => NLW_BinToBCD16_1_BCD4_UNCONNECTED(3 downto 0),
      binary(15 downto 0) => xlconcat_5_dout(15 downto 0),
      clk => clk_1,
      ready => NLW_BinToBCD16_1_ready_UNCONNECTED,
      request => xlconstant_3_dout(0),
      reset => xlconstant_5_dout(0)
    );
EightDispControl_0: component ex1_EightDispControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => BinToBCD16_1_BCD2(3 downto 0),
      leftR(3 downto 0) => BinToBCD16_0_BCD3(3 downto 0),
      near_leftL(3 downto 0) => BinToBCD16_1_BCD1(3 downto 0),
      near_leftR(3 downto 0) => BinToBCD16_0_BCD2(3 downto 0),
      near_rightL(3 downto 0) => BinToBCD16_1_BCD0(3 downto 0),
      near_rightR(3 downto 0) => BinToBCD16_0_BCD1(3 downto 0),
      rightL(3 downto 0) => BinToBCD16_0_BCD4(3 downto 0),
      rightR(3 downto 0) => BinToBCD16_0_BCD0(3 downto 0),
      segments(6 downto 0) => EightDispControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDispControl_0_select_display(7 downto 0)
    );
Mux2_1_0: component ex1_Mux2_1_0_0
     port map (
      datain0(0) => clk_1,
      datain1(0) => xlconstant_5_dout(0),
      dataout(0) => Mux2_1_0_dataout(0),
      sel => util_reduced_logic_0_Res
    );
Mux4_1_0: component ex1_Mux4_1_0_0
     port map (
      datain0(22 downto 0) => xlconcat_0_dout(22 downto 0),
      datain1(22 downto 0) => xlconcat_1_dout(22 downto 0),
      datain2(22 downto 0) => xlconcat_2_dout(22 downto 0),
      datain3(22 downto 0) => xlconcat_4_dout(22 downto 0),
      dataout(22 downto 0) => Mux4_1_0_dataout(22 downto 0),
      sel(1 downto 0) => sw_1(1 downto 0)
    );
blk_mem_gen_0: component ex1_blk_mem_gen_0_0
     port map (
      addra(6 downto 0) => counter_generic_0_led(6 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0)
    );
counter_generic_0: component ex1_counter_generic_0_0
     port map (
      btnC => xlconstant_1_dout(0),
      clk => Mux2_1_0_dataout(0),
      led(6 downto 0) => counter_generic_0_led(6 downto 0),
      sw(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
counter_generic_1: component ex1_counter_generic_1_0
     port map (
      btnC => xlconstant_1_dout(0),
      clk => xlslice_0_Dout(0),
      led(6 downto 0) => counter_generic_1_led(6 downto 0),
      sw(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
counter_generic_2: component ex1_counter_generic_1_1
     port map (
      btnC => xlconstant_1_dout(0),
      clk => util_vector_logic_0_Res(0),
      led(6 downto 0) => counter_generic_2_led(6 downto 0),
      sw(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
dist_mem_gen_0: component ex1_dist_mem_gen_0_0
     port map (
      a(6 downto 0) => counter_generic_0_led(6 downto 0),
      clk => util_vector_logic_0_Res(0),
      d(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      spo(15 downto 0) => dist_mem_gen_0_spo(15 downto 0),
      we => xlconstant_3_dout(0)
    );
dist_mem_gen_1: component ex1_dist_mem_gen_1_0
     port map (
      a(6 downto 0) => counter_generic_0_led(6 downto 0),
      clk => xlslice_0_Dout(0),
      d(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      spo(15 downto 0) => dist_mem_gen_1_spo(15 downto 0),
      we => xlconstant_3_dout(0)
    );
util_reduced_logic_0: component ex1_util_reduced_logic_0_0
     port map (
      Op1(6 downto 0) => counter_generic_0_led(6 downto 0),
      Res => util_reduced_logic_0_Res
    );
util_vector_logic_0: component ex1_util_vector_logic_0_0
     port map (
      Op1(0) => xlslice_0_Dout(0),
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconcat_0: component ex1_xlconcat_0_0
     port map (
      In0(15 downto 0) => dist_mem_gen_0_spo(15 downto 0),
      In1(6 downto 0) => counter_generic_0_led(6 downto 0),
      dout(22 downto 0) => xlconcat_0_dout(22 downto 0)
    );
xlconcat_1: component ex1_xlconcat_0_1
     port map (
      In0(15 downto 0) => dist_mem_gen_1_spo(15 downto 0),
      In1(6 downto 0) => counter_generic_0_led(6 downto 0),
      dout(22 downto 0) => xlconcat_1_dout(22 downto 0)
    );
xlconcat_2: component ex1_xlconcat_1_0
     port map (
      In0(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      In1(6 downto 0) => counter_generic_0_led(6 downto 0),
      dout(22 downto 0) => xlconcat_2_dout(22 downto 0)
    );
xlconcat_3: component ex1_xlconcat_3_0
     port map (
      In0(6 downto 0) => counter_generic_1_led(6 downto 0),
      In1(6 downto 0) => counter_generic_2_led(6 downto 0),
      dout(13 downto 0) => xlconcat_3_dout(13 downto 0)
    );
xlconcat_4: component ex1_xlconcat_4_0
     port map (
      In0(13 downto 0) => xlconcat_3_dout(13 downto 0),
      In1(8 downto 0) => xlconstant_4_dout(8 downto 0),
      dout(22 downto 0) => xlconcat_4_dout(22 downto 0)
    );
xlconcat_5: component ex1_xlconcat_3_1
     port map (
      In0(6 downto 0) => xlslice_2_Dout(6 downto 0),
      In1(8 downto 0) => xlconstant_2_dout(8 downto 0),
      dout(15 downto 0) => xlconcat_5_dout(15 downto 0)
    );
xlconstant_0: component ex1_xlconstant_0_0
     port map (
      dout(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
xlconstant_1: component ex1_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component ex1_xlconstant_2_0
     port map (
      dout(8 downto 0) => xlconstant_2_dout(8 downto 0)
    );
xlconstant_3: component ex1_xlconstant_3_0
     port map (
      dout(0) => xlconstant_3_dout(0)
    );
xlconstant_4: component ex1_xlconstant_4_0
     port map (
      dout(8 downto 0) => xlconstant_4_dout(8 downto 0)
    );
xlconstant_5: component ex1_xlconstant_5_0
     port map (
      dout(0) => xlconstant_5_dout(0)
    );
xlslice_0: component ex1_xlslice_0_0
     port map (
      Din(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component ex1_xlslice_1_0
     port map (
      Din(22 downto 0) => Mux4_1_0_dataout(22 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
xlslice_2: component ex1_xlslice_2_0
     port map (
      Din(22 downto 0) => Mux4_1_0_dataout(22 downto 0),
      Dout(6 downto 0) => xlslice_2_Dout(6 downto 0)
    );
end STRUCTURE;
