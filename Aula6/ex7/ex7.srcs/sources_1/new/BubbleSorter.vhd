----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2017 09:36:04 PM
-- Design Name: 
-- Module Name: BubbleSorter - Behavioral
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

entity BubbleSorter is
    port (clock     : in    std_logic;
          dataIn    : in    std_logic_vector(127 downto 0);
          dataOut   : out   std_logic_vector(127 downto 0));
end BubbleSorter;

architecture Behavioral of BubbleSorter is
    type wordList is array (0 to 15) of std_logic_vector(7 downto 0);
    signal toSort   : std_logic_vector(127 downto 0);
    signal sorted   : std_logic_vector(127 downto 0);
begin
    process(toSort)
        variable onSort : wordList;
        variable temp   : std_logic_vector(7 downto 0); 
    begin
        for i in 0 to 15 loop
            onSort(i) := toSort((i+1)*8-1 downto i*8);
        end loop;
        
        for lines in 15 downto 1 loop
            for i in 0 to lines-1 loop
                if (onSort(i) < onSort(i+1)) then
                    temp := onSort(i);
                    onSort(i) := onSort(i+1);
                    onSort(i+1) := temp;
                end if;
            end loop;
        end loop;
        
        for i in 0 to 15 loop
            sorted((i+1)*8-1 downto i*8) <= onSort(i);
        end loop;
    end process;
    
    toSort <= dataIn;
    dataOut <= sorted;
end Behavioral;
