----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2017 11:18:14 AM
-- Design Name: 
-- Module Name: ALUDemo - Behavioral
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

entity ALUDemo is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           btnL : in STD_LOGIC;
           btnC : in STD_LOGIC;
           btnR : in STD_LOGIC);
end ALUDemo;

architecture Behavioral of ALUDemo is
    signal s_btn : std_logic_vector(2 downto 0);
begin
    s_btn <= btnL & btnC & btnR;
    ALU:    entity work.GenericALU(BehavioralNoProcesses)
            port map ( valueA => sw(7 downto 0),
                       valueB => sw(15 downto 8),
                       operat => s_btn,
                       result => led(15 downto 0));
end Behavioral;
