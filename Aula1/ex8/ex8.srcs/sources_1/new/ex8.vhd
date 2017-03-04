----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 11:15:28 AM
-- Design Name: 
-- Module Name: ex8 - Behavioral
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

entity ex8 is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           btnL : in STD_LOGIC;
           btnU : in STD_LOGIC;
           btnR : in STD_LOGIC;
           btnD : in STD_LOGIC;
           btnC : in STD_LOGIC);
end ex8;

architecture Behavioral of ex8 is
    signal s_result : unsigned(15 downto 0);
    signal s_btn : std_logic_vector(4 downto 0);
begin
    s_btn <= btnU & btnD & btnL & btnR & btnC;
    with s_btn select s_result <= 
                "00000000" & unsigned(sw(7 downto 0)) + unsigned(sw(15 downto 8)) when "10000",
                "00000000" & unsigned(sw(7 downto 0)) - unsigned(sw(15 downto 8)) when "01000",
                unsigned(sw(7 downto 0)) * unsigned(sw(15 downto 8)) when "00100",
                "00000000" & unsigned(sw(7 downto 0)) / unsigned(sw(15 downto 8)) when "00010",
                "00000000" & unsigned(sw(7 downto 0)) rem unsigned(sw(15 downto 8)) when "00001",
                (others => '0') when others;
    led <= std_logic_vector(s_result);            
end Behavioral;
