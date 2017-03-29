--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Tue Mar 28 22:14:17 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_counter_generic_0_0 is
  port (
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    btnC : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component top_counter_generic_0_0;
  component top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component top_xlconstant_0_0;
  component top_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_xlconstant_1_0;
  component top_Mux2_1_0_0 is
  port (
    datain0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    datain1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC;
    dataout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component top_Mux2_1_0_0;
  component top_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Res : out STD_LOGIC
  );
  end component top_util_reduced_logic_0_0;
  signal Mux2_1_0_dataout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal counter_generic_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  clk_1 <= clk;
  led(3 downto 0) <= counter_generic_0_led(3 downto 0);
Mux2_1_0: component top_Mux2_1_0_0
     port map (
      datain0(0) => clk_1,
      datain1(0) => xlconstant_1_dout(0),
      dataout(0) => Mux2_1_0_dataout(0),
      sel => util_reduced_logic_0_Res
    );
counter_generic_0: component top_counter_generic_0_0
     port map (
      btnC => xlconstant_1_dout(0),
      clk => Mux2_1_0_dataout(0),
      led(3 downto 0) => counter_generic_0_led(3 downto 0),
      sw(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
util_reduced_logic_0: component top_util_reduced_logic_0_0
     port map (
      Op1(3 downto 0) => counter_generic_0_led(3 downto 0),
      Res => util_reduced_logic_0_Res
    );
xlconstant_0: component top_xlconstant_0_0
     port map (
      dout(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
xlconstant_1: component top_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
