--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
--Date        : Sun Apr 02 08:37:25 2017
--Host        : DETI-PC0018 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target B_wrapper.bd
--Design      : B_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity B_wrapper is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end B_wrapper;

architecture STRUCTURE of B_wrapper is
  component B is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component B;
begin
B_i: component B
     port map (
      btnC => btnC,
      clk => clk,
      din(3 downto 0) => din(3 downto 0),
      dout(3 downto 0) => dout(3 downto 0),
      led(7 downto 0) => led(7 downto 0)
    );
end STRUCTURE;
