--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Fri Mar 17 10:49:18 2017
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
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex5 : entity is "ex5,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex5,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex5 : entity is "ex5.hwdef";
end ex5;

architecture STRUCTURE of ex5 is
  component ex5_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_blk_mem_gen_0_0;
  component ex5_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_blk_mem_gen_1_0;
  component ex5_blk_mem_gen_2_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_blk_mem_gen_2_0;
  component ex5_blk_mem_gen_3_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_blk_mem_gen_3_0;
  component ex5_Mux4_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    datain1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    datain2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    datain3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dataout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ex5_Mux4_1_0_0;
  component ex5_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ex5_xlconcat_0_0;
  signal Mux4_1_0_dataout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_2_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_3_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal btnL_1 : STD_LOGIC;
  signal btnR_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  btnL_1 <= btnL;
  btnR_1 <= btnR;
  clk_1 <= clk;
  led(15 downto 0) <= Mux4_1_0_dataout(15 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
Mux4_1_0: component ex5_Mux4_1_0_0
     port map (
      datain0(15 downto 0) => blk_mem_gen_0_douta(15 downto 0),
      datain1(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      datain2(15 downto 0) => blk_mem_gen_2_douta(15 downto 0),
      datain3(15 downto 0) => blk_mem_gen_3_douta(15 downto 0),
      dataout(15 downto 0) => Mux4_1_0_dataout(15 downto 0),
      sel(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
blk_mem_gen_0: component ex5_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => sw_1(15 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_0_douta(15 downto 0)
    );
blk_mem_gen_1: component ex5_blk_mem_gen_1_0
     port map (
      addra(15 downto 0) => sw_1(15 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_1_douta(15 downto 0)
    );
blk_mem_gen_2: component ex5_blk_mem_gen_2_0
     port map (
      addra(15 downto 0) => sw_1(15 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_2_douta(15 downto 0)
    );
blk_mem_gen_3: component ex5_blk_mem_gen_3_0
     port map (
      addra(15 downto 0) => sw_1(15 downto 0),
      clka => clk_1,
      douta(15 downto 0) => blk_mem_gen_3_douta(15 downto 0)
    );
xlconcat_0: component ex5_xlconcat_0_0
     port map (
      In0(0) => btnR_1,
      In1(0) => btnL_1,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
end STRUCTURE;
