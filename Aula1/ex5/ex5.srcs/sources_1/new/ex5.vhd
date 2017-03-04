----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 09:56:02 AM
-- Design Name: 
-- Module Name: ex5 - Behavioral
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

entity ex5 is
    Port ( clk : in STD_LOGIC;
           led : out STD_LOGIC_VECTOR (5 downto 3));
end ex5;

architecture Behavioral of ex5 is
    signal clk1Hz, clk2Hz, clk4Hz : std_logic;
begin
     clk_dvr1: entity work.ClkDividerN(Behavioral)
           generic map(divFactor => 100000000)
           port map(
                    reset => '0',
                    clkIn => clk,
                    clkOut => clk1Hz);
                    
    clk_dvr2: entity work.ClkDividerN(Behavioral)
            generic map(divFactor => 50000000)
            port map(
                     reset => '0',
                     clkIn => clk,
                     clkOut => clk2Hz);
                     
    clk_dvr4 : entity work.ClkDividerN(Behavioral)
            generic map(divFactor => 25000000)
            port map(
                    reset => '0',
                    clkIn => clk,
                    clkOut => clk4Hz);
   
    led(3) <= '1' when clk1Hz='1' else '0'; 
    led(4) <= '1' when clk2Hz='1' else '0';                                    
    led(5) <= '1' when clk4Hz='1' else '0';     

end Behavioral;