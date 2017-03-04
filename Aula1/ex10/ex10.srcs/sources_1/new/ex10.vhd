----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2017 11:31:35 PM
-- Design Name: 
-- Module Name: ex10 - Behavioral
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

entity ex10 is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (1 downto 0));
end ex10;

architecture Behavioral of ex10 is

begin
    led(1) <= (sw(1) and sw(0)) or (sw(1) and sw(2)) or (sw(0) and sw(2));
    led(0) <= (sw(2) and not sw(1) and not sw(0)) or (not sw(2) and not sw(1) and sw(0)) or (sw(2) and sw(1) and sw(0)) or (not sw(2) and sw(1) and not sw(0));

end Behavioral;
