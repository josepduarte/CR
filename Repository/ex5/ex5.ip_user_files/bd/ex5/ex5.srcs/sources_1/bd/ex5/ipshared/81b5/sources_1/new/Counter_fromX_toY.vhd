----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2017 10:00:56 AM
-- Design Name: 
-- Module Name: Counter_fromX_toY - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_fromX_toY is
    generic (
                bits : integer := 4
            );
    Port ( clk : in STD_LOGIC;
           lower : in STD_LOGIC_VECTOR (bits-1 downto 0);
           upper : in STD_LOGIC_VECTOR (bits-1 downto 0);
          count : out STD_LOGIC_VECTOR (bits-1 downto 0)
          );
         
end Counter_fromX_toY;

architecture Behavioral of Counter_fromX_toY is
    signal count_s : std_logic_vector(bits-1 downto 0) := lower;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count_s = upper then
                count_s <= lower;
            else
                count_s <= std_logic_vector(unsigned(count_s) + 1);
            end if;
            
        end if;
    end process;
    count <= count_s;
end Behavioral;
