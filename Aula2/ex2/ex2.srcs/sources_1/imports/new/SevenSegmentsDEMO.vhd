----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2017 12:12:02 AM
-- Design Name: 
-- Module Name: SevenSegmentsDEMO - Behavioral
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

entity SevenSegmentsDEMO is
    Port ( clk : in STD_LOGIC;
           btnC : in std_logic;
           sw : in STD_LOGIC_VECTOR (1 downto 0);
           led : out STD_LOGIC_VECTOR (3 downto 0);
           seg : out STD_LOGIC_VECTOR (6 downto 0);
           an : out STD_LOGIC_VECTOR (7 downto 0));
end SevenSegmentsDEMO;

architecture Behavioral of SevenSegmentsDEMO is
    signal s_clockDivided : std_logic;
    signal s_amount : std_logic_vector(3 downto 0);
begin
    -- led <= sw when s_clockDivided = '1' else (others => '0');
    
    div:    entity work.FrequencyDividerForN(Behavioral)
            port map (clockIn => clk, 
                      clockOut => s_clockDivided);
                      
    counter4bits: entity work.Counter4bits(Behavioral)
                 port map(
                          clk    => s_clockDivided,
                          reset  => btnC,
                          enable => sw(0),
                          updown_n => sw(1),
                          count => s_amount
                 );
            
    disp:   entity work.EightDisplayControl(Behavioral)
            port map (clk => clk, 
                      leftL => s_amount, 
                      near_leftL => "0000", 
                      near_rightL => "0000", 
                      rightL => "0000",
                      leftR => "0000", 
                      near_leftR => "0000", 
                      near_rightR => "0000", 
                      rightR => "0000",
                      select_display => an,
                      segments => seg);
                      
end Behavioral;
