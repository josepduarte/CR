----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2017 04:44:10 PM
-- Design Name: 
-- Module Name: counter_between_x_and_y - Behavioral
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

entity counter_between is
    Port ( clk : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (7 downto 0);
           x : in STD_LOGIC_VECTOR (7 downto 0);
           y : in STD_LOGIC_VECTOR (7 downto 0));
end counter_between;

architecture Behavioral of counter_between is
    signal count_signal : unsigned(7 downto 0);
    signal flag_s  : std_logic := '0';
begin
    process(clk, flag_s, x)
    begin
        if flag_s = '0' then
            count_signal <= unsigned(x);
            flag_s  <= '1';
        end if;
        if rising_edge(clk) then
            if count_signal = unsigned(y) then
                count_signal <= unsigned(x);
            else
                count_signal <= count_signal + 1;
            end if;
        end if;
    end process;
    count <= std_logic_vector(count_signal);
end Behavioral;

