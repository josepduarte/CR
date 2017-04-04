----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 12:01:13 PM
-- Design Name: 
-- Module Name: to_mem_sorted - Behavioral
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

entity to_mem_sorted is
    Port ( 
           clk : in std_logic;
           dataToWrite : out STD_LOGIC_VECTOR (16 downto 0);
           addr : out STD_LOGIC_VECTOR (6 downto 0);
           bigWord : in STD_LOGIC_VECTOR (2047 downto 0));
end to_mem_sorted;

architecture Behavioral of to_mem_sorted is
    signal counter : unsigned(6 downto 0) := "000000";
    signal bigWord_s : STD_LOGIC_VECTOR (2047 downto 0);
begin 
    bigWord_s <= bigWord;
    process(clk)
    begin
        if rising_edge(clk) then
            dataToWrite <= bigWord_s(15 downto 0);
            addr <= std_logic_vector(counter);
            counter <= counter + 1;
        end if;
        bigWord_s <= "0000000000000000" & bigWord_s(2047 downto 16);
    end process;
end Behavioral;
