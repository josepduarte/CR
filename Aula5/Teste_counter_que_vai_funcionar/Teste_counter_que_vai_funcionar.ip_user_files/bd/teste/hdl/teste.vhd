--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Apr 03 18:54:22 2017
--Host        : Inator running 64-bit major release  (build 9200)
--Command     : generate_target teste.bd
--Design      : teste
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity teste is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of teste : entity is "teste,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=teste,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of teste : entity is "teste.hwdef";
end teste;

architecture STRUCTURE of teste is
  component teste_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component teste_xlslice_0_0;
  component teste_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component teste_xlslice_0_1;
  component teste_ClkDividerN_0_0 is
  port (
    reset : in STD_LOGIC;
    clkIn : in STD_LOGIC;
    clkOut : out STD_LOGIC
  );
  end component teste_ClkDividerN_0_0;
  component teste_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component teste_xlconstant_0_0;
  component teste_counter_between_0_0 is
  port (
    clk : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 7 downto 0 );
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component teste_counter_between_0_0;
  signal ClkDividerN_0_clkOut : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal counter_between_0_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  clk_1 <= clk;
  led(7 downto 0) <= counter_between_0_count(7 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
ClkDividerN_0: component teste_ClkDividerN_0_0
     port map (
      clkIn => clk_1,
      clkOut => ClkDividerN_0_clkOut,
      reset => xlconstant_0_dout(0)
    );
counter_between_0: component teste_counter_between_0_0
     port map (
      clk => ClkDividerN_0_clkOut,
      count(7 downto 0) => counter_between_0_count(7 downto 0),
      x(7 downto 0) => xlslice_0_Dout(7 downto 0),
      y(7 downto 0) => xlslice_1_Dout(7 downto 0)
    );
xlconstant_0: component teste_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_0: component teste_xlslice_0_0
     port map (
      Din(15 downto 0) => sw_1(15 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component teste_xlslice_0_1
     port map (
      Din(15 downto 0) => sw_1(15 downto 0),
      Dout(7 downto 0) => xlslice_1_Dout(7 downto 0)
    );
end STRUCTURE;
