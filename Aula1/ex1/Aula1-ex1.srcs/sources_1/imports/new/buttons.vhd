----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 09:47:01 PM
-- Design Name: 
-- Module Name: buttons - Behavioral
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

entity buttons is
    Port ( 
            btnC, btnU, btnD, btnL, btnR : in std_logic;
            led : out STD_LOGIC_VECTOR (4 downto 0)
           );
end buttons;

architecture Behavioral of buttons is
begin
    led(0) <= btnL;
    led(1) <= btnC;
    led(2) <= btnR;
    led(3) <= btnU;
    led(4) <= btnD;
end Behavioral;
