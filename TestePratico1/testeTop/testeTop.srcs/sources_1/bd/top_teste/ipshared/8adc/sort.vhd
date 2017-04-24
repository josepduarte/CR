----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2017 03:20:02 PM
-- Design Name: 
-- Module Name: sort - Behavioral
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

entity sort is
 port (
         dataIn    : in    std_logic_vector(31 downto 0);
         dataOut   : out   std_logic_vector(31 downto 0)
     );
end sort;

architecture Behavioral of sort is
    type wordList is array (0 to 3) of std_logic_vector(7 downto 0);
    signal toSort   : std_logic_vector(31 downto 0);
    signal sorted   : std_logic_vector(31 downto 0);
begin
    process(toSort)
        variable onSort : wordList;
        variable temp   : std_logic_vector(7 downto 0); 
    begin
        for i in 0 to 3 loop
            onSort(i) := toSort((i+1)*8-1 downto i*8);
        end loop;
        
        for i in 0 to 1 loop
            if (onSort(i*2 +1) < onSort(i*2)) then
                temp := onSort(i*2);
                onSort(i*2) := onSort(i*2+1);
                onSort(i*2 +1) := temp;
            end if;
        end loop;
        
        if ( onSort(2) < onSort(0)) then
            temp := onSort(0);
            onSort(0) := onSort(2);
            onSort(2) := temp;
        end if;
        
        if ( onSort(2) < onSort(1)) then
            temp := onSort(1);
            onSort(1) := onSort(2);
            onSort(2) := temp;
        end if;
        
        if ( onSort(3) < onSort(1)) then
            temp := onSort(1);
            onSort(1) := onSort(3);
            onSort(3) := temp;
        end if;
      
        if ( onSort(3) < onSort(2)) then
            temp := onSort(2);
            onSort(2) := onSort(3);
            onSort(3) := temp;
        end if;
        
        for i in 0 to 3 loop
            sorted((i+1)*8-1 downto i*8) <= onSort(i);
        end loop;
        
    end process;
    toSort <= dataIn;
    dataOut <= sorted;
    

end Behavioral;
