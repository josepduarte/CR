----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2017 10:20:49 AM
-- Design Name: 
-- Module Name: ex4 - Behavioral
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

entity ex4 is
    Port ( 
           clk : in std_logic;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           btnC : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (7 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           led : out STD_LOGIC_VECTOR (7 downto 0));
end ex4;

architecture Behavioral of ex4 is
        signal max, min : std_logic_vector(3 downto 0);
        
begin

    min_max : entity work.Min_max(Behavioral)
              port map(
                    A => sw(3 downto 0),
                    B => sw(7 downto 4),
                    C => sw(11 downto 8),
                    D => sw (15 downto 12),
                    reset => btnC,
                    max => max,
                    min => min
                    );
                   
    disp:   entity work.EightDisplayControl(Behavioral)
            port map (
                      clk => clk, 
                      leftL => "0000", 
                      near_leftL => "0000", 
                      near_rightL => "0000", 
                      rightL => "0000",
                      leftR => "0000", 
                      near_leftR => "0000", 
                      near_rightR => min, 
                      rightR => max,
                      select_display => an,
                      segments => seg
                      );
                      
     led(7 downto 4) <= max;
     led(3 downto 0) <= min;
                    
end Behavioral;
