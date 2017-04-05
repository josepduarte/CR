----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2017 10:23:43 AM
-- Design Name: 
-- Module Name: getAddress - Behavioral
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

entity getAddress is
    generic(
            bits      : integer := 8;
            log_words : integer := 4;
            words     :integer := 16
            );
    Port ( 
           clk : in STD_LOGIC;
           value : in STD_LOGIC_VECTOR (bits-1 downto 0);
           mem_value : in STD_LOGIC_VECTOR(bits-1 downto 0);
           addr_out : out STD_LOGIC_VECTOR (log_words-1 downto 0);
           finished : out STD_LOGIC
           );
           
end getAddress;



architecture Behavioral of getAddress is
    signal addressOut_s : STD_LOGIC_VECTOR(log_words-1 downto 0);
    signal finished_s : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if mem_value = value then
                finished_s <= '1';
            else
                addressOut_s <= std_logic_vector(unsigned(addressOut_s) +1);
            end if;
            
        end if;
    end process;
    addr_out <= std_logic_vector(unsigned(addressOut_s) -1);
    finished <= finished_s;
end Behavioral;
