----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 11:58:03 AM
-- Design Name: 
-- Module Name: shift16Bits - Behavioral
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

entity shift16Bits is
    Port ( clk : in STD_LOGIC;
           enable_n : in STD_LOGIC;
           reset : in STD_LOGIC;
           set : in STD_LOGIC;
           dir_left : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (15 downto 0);
           data_out : out STD_LOGIC_VECTOR (15 downto 0));
end shift16Bits;

architecture Behavioral of shift16Bits is
    signal s_dataOut : std_logic_vector(15 downto 0);
begin
    process(clk)
    begin
        if (enable_n = '0') then
            if (rising_edge(clk)) then
                if (reset='1') then
                    s_dataOut <= (others => '0');
                elsif (set='1') then
                    s_dataOut <= data_in;
                elsif (dir_left = '1') then
                    s_dataOut <= s_dataOut(14 downto 0) & '0';
                else 
                    s_dataOut <= '0' & s_dataOut(15 downto 1);
                end if;
            end if;
        end if;
    end process;
    data_out <= s_dataOut;
end Behavioral;
