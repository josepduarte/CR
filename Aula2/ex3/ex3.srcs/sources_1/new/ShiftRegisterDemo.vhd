----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 11:55:31 AM
-- Design Name: 
-- Module Name: ex9 - Behavioral
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

entity ShiftRegisterDemo is
    Port ( clk : in STD_LOGIC;
           btnL, btnR, btnC, btnU : in std_logic;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0));
end ShiftRegisterDemo;

architecture Behavioral of ShiftRegisterDemo is
    signal clk1Hz : std_logic;
begin
    clk_dvr1: entity work.ClkDividerN(Behavioral)
           generic map(divFactor => 100000000)
           port map(
                    reset => '0',
                    clkIn => clk,
                    clkOut => clk1Hz);
                    
    core : entity work.ShiftRegister16Bits(Behavioral)
           port map(
                    clk => clk1Hz,
                    enable_n => btnL,
                    set => btnR,
                    reset => btnC,
                    data_in => sw,
                    data_out => led,
                    dir_left => btnU);

end Behavioral;
