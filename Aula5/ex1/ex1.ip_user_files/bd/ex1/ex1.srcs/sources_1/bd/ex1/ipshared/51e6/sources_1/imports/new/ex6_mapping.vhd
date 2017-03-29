----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 10:54:44 AM
-- Design Name: 
-- Module Name: ex6_mapping - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ex6_mapping is
    generic (nr_bits : integer := 4);
    Port ( clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (1 downto 0);
           btnC : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (nr_bits-1 downto 0));
end ex6_mapping;

architecture Behavioral of ex6_mapping is
    signal clk1Hz : std_logic;
begin
    clk_dvr1: entity work.ClkDividerN(Behavioral)
           generic map(divFactor => 100000000)
           port map(
                    reset => '0',
                    clkIn => clk,
                    clkOut => clk1Hz);

    counter: entity work.Counter(Behavioral)
           generic map(
                   nr_bits => nr_bits
           )
           port map(
                    clk    => clk1Hz,
                    reset  => btnC,
                    enable => sw(0),
                    updown_n => sw(1),
                    count => led
           );
end Behavioral;
