----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 10:12:04 PM
-- Design Name: 
-- Module Name: ex2 - Behavioral
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

entity ex2 is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           btnC, btnU, btnD, btnL, btnR : in std_logic;
           led : out STD_LOGIC_VECTOR (0 downto 0));
end ex2;

architecture Behavioral of ex2 is
begin
    with sw select led(0) <= btnU when "000",
                             btnC when "001",
                             btnD when "010",
                             btnL when "011",
                             btnR when "100",
                             '0'  when others;                            
end Behavioral;
