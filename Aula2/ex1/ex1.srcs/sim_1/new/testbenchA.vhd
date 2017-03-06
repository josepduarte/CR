----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2017 10:54:06 AM
-- Design Name: 
-- Module Name: testbenchA - Behavioral
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

entity testbenchA is
end testbenchA;

architecture Stimulus of testbenchA is
    signal s_amount : STD_LOGIC_VECTOR (3 downto 0);
    signal s_segments : STD_LOGIC_VECTOR (6 downto 0);
    
begin
    
    uut : entity work.SevenSegmentDecoder(BehavioralWhenElse)
          port map(
                    amount => s_amount,
                    segments => s_segments
                  );

    comb_proc: 
        process
        begin
            wait for 100 ns;
            s_amount <= "1111"; -- F
            wait for 10 ns;
            s_amount <= "0101"; -- 5
            wait for 40 ns;
            s_amount <= "0001"; -- 1
            wait for 60 ns;
            s_amount <= "0000"; --0
            wait for 30 ns;
        end process;    
              
end Stimulus;
