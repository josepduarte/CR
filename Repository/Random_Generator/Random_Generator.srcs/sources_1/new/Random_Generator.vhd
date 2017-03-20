----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2017 11:03:24 AM
-- Design Name: 
-- Module Name: Random_Generator - Behavioral
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

entity Random_Generator is
    generic( width_bits : integer := 32);
    Port ( clk : in STD_LOGIC;
           width : out STD_LOGIC_VECTOR (width_bits-1 downto 0));
end Random_Generator;

architecture Behavioral of Random_Generator is

begin
process(clk)
    variable rand_temp : std_logic_vector(width_bits-1 downto 0):=(width_bits-1 => '1', others => '0');
    variable temp : std_logic := '0';
begin
    if(rising_edge(clk)) then
        temp := rand_temp(width_bits-1) xor rand_temp(width_bits-2);
        rand_temp(width_bits-1 downto 1) := rand_temp(width_bits-2 downto 0);
        rand_temp(0) := temp;
    end if;
    width <= rand_temp;
end process;

end Behavioral;
