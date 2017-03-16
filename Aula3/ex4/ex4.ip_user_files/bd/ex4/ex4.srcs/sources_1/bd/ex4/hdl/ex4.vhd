--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Thu Mar 16 22:57:48 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target ex4.bd
--Design      : ex4
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ex4 is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ex4 : entity is "ex4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ex4,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ex4 : entity is "ex4.hwdef";
end ex4;

architecture STRUCTURE of ex4 is
  component ex4_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 0 to 0 );
    douta : out STD_LOGIC_VECTOR ( 1023 downto 0 )
  );
  end component ex4_blk_mem_gen_0_0;
  component ex4_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex4_xlconstant_0_0;
  component ex4_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ex4_xlconstant_1_0;
  component ex4_number_of_ones_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    datain : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    result : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component ex4_number_of_ones_0_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 1023 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal number_of_ones_0_result : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  clk_1 <= clk;
  led(9 downto 0) <= number_of_ones_0_result(9 downto 0);
blk_mem_gen_0: component ex4_blk_mem_gen_0_0
     port map (
      addra(0) => xlconstant_0_dout(0),
      clka => clk_1,
      douta(1023 downto 0) => blk_mem_gen_0_douta(1023 downto 0)
    );
number_of_ones_0: component ex4_number_of_ones_0_0
     port map (
      clk => clk_1,
      datain(1023 downto 0) => blk_mem_gen_0_douta(1023 downto 0),
      reset => xlconstant_1_dout(0),
      result(9 downto 0) => number_of_ones_0_result(9 downto 0)
    );
xlconstant_0: component ex4_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component ex4_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
