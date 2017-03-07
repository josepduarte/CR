----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2017 11:56:34 PM
-- Design Name: 
-- Module Name: FrequencyDividerForN - Behavioral
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

entity FrequencyDividerForN is
    generic (N : positive := 100000000);
    Port ( clockIn : in STD_LOGIC;
           clockOut : out STD_LOGIC);
end FrequencyDividerForN;

architecture Behavioral of FrequencyDividerForN is
    signal s_counter : natural;
begin
    process(clockIn)
    begin
        if (rising_edge(clockIn)) then
            if (s_counter = N - 1) then
                clockOut <= '0';
                s_counter <= 0;
            else
                if (s_counter = N/2 - 1) then
                    clockOut <= '1';
                end if;
                s_counter <= s_counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
