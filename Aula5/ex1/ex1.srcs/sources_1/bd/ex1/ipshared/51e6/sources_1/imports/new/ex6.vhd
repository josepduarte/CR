----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 10:45:31 AM
-- Design Name: 
-- Module Name: ex6 - Behavioral
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    generic ( nr_bits : integer := 4);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           updown_n : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR(nr_bits-1 downto 0));
end Counter;

architecture Behavioral of Counter is
    signal s_countValue : unsigned(nr_bits-1 downto 0);
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_countValue <= (others => '0');
             elsif (enable='1') then
                if(updown_n='0') then
                    s_countValue <= s_countValue + 1;
                else
                    s_countValue <= s_countValue - 1;
                end if;
            end if;
        end if;
    end process;
    count <= std_logic_vector(s_countValue);
end Behavioral;
