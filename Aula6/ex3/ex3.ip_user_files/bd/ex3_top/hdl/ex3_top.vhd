--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Apr 04 19:19:45 2017
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
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex3_top : entity is "ex3_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex3_top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex3_top : entity is "ex3_top.hwdef";
end ex3_top;

architecture STRUCTURE of ex3_top is
  component ex3_top_max_0_1 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    max_value : out STD_LOGIC_VECTOR ( 7 downto 0 );
    finished : out STD_LOGIC
  );
  end component ex3_top_max_0_1;
  component ex3_top_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ex3_top_blk_mem_gen_0_0;
  component ex3_top_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component ex3_top_xlconcat_0_0;
  component ex3_top_concat_memory_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component ex3_top_concat_memory_0_0;
  component ex3_top_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ex3_top_c_addsub_0_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal concat_memory_0_address : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal concat_memory_0_data_out : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal max_0_finished : STD_LOGIC;
  signal max_0_max_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  clk_1 <= clk;
  led(8 downto 0) <= xlconcat_0_dout(8 downto 0);
blk_mem_gen_0: component ex3_top_blk_mem_gen_0_0
     port map (
      addra(3 downto 0) => c_addsub_0_S(3 downto 0),
      clka => clk_1,
      douta(7 downto 0) => blk_mem_gen_0_douta(7 downto 0)
    );
c_addsub_0: component ex3_top_c_addsub_0_0
     port map (
      A(3 downto 0) => concat_memory_0_address(3 downto 0),
      S(3 downto 0) => c_addsub_0_S(3 downto 0)
    );
concat_memory_0: component ex3_top_concat_memory_0_0
     port map (
      address(3 downto 0) => concat_memory_0_address(3 downto 0),
      clk => clk_1,
      data_in(7 downto 0) => blk_mem_gen_0_douta(7 downto 0),
      data_out(127 downto 0) => concat_memory_0_data_out(127 downto 0)
    );
max_0: component ex3_top_max_0_1
     port map (
      data_in(127 downto 0) => concat_memory_0_data_out(127 downto 0),
      finished => max_0_finished,
      max_value(7 downto 0) => max_0_max_value(7 downto 0)
    );
xlconcat_0: component ex3_top_xlconcat_0_0
     port map (
      In0(0) => max_0_finished,
      In1(7 downto 0) => max_0_max_value(7 downto 0),
      dout(8 downto 0) => xlconcat_0_dout(8 downto 0)
    );
end STRUCTURE;
