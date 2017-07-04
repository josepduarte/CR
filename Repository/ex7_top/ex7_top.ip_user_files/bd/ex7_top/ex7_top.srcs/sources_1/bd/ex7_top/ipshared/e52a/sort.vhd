----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2017 11:45:11 AM
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sort is
    Generic (
            N :integer   := 8;
            M :integer   := 22
            );
    Port ( dataIn : in STD_LOGIC_VECTOR (N*M-1 downto 0);
           dataOut : out STD_LOGIC_VECTOR (N*M-1 downto 0));
end sort;

architecture Behavioral of sort is
    type wordList is array (0 to N-1) of std_logic_vector(M-1 downto 0);
    signal toSort   : std_logic_vector(N*M-1 downto 0);
    signal sorted   : std_logic_vector(N*M-1 downto 0);
begin
    process(toSort)
        variable onSort : wordList;
        variable temp   : std_logic_vector(21 downto 0); 
    begin
        -- preencher array
        for i in 0 to N-1 loop
            onSort(i) := toSort((i+1)*M-1 downto i*M);
        end loop;
        
        -- rede de ordenação
        for i in 0 to 1 loop
            if (onSort(i*2 +1) < onSort(i*2)) then
                temp := onSort(i*2);
                onSort(i*2) := onSort(i*2+1);
                onSort(i*2 +1) := temp;
            end if;
        end loop;
        
        for i in 0 to N/2-1 loop
            if onSort(2*i) < onSort(2*i+1) then
                temp := onSort(2*i);
                onSort(2*i) := onSort(2*i+1);
                onSort(2*i+1) := temp;
            end if;
        end loop;
        
        for i in 0 to N-3 loop
            if onSort(i) < onSort(i+2) then
                temp := onSort(i);
                onSort(i) := onSort(i+2);
                onSort(i+2) := temp;
            end if;
        end loop;
        
        if onSort(1) < onSort(2) then
            temp := onSort(1);
            onSort(1) := onSort(2);
            onSort(2) := temp;
        end if;
        if onSort(5) < onSort(6) then
            temp := onSort(5);
            onSort(5) := onSort(6);
            onSort(6) := temp;
        end if;
       
        for i in 0 to N/2-1 loop
            if onSort(i) < onSort(i+N/2) then
                temp := onSort(i);
                onSort(i) := onSort(i+N/2);
                onSort(i+N/2) := temp;
            end if;
        end loop;
      
        if onSort(2) < onSort(4) then
            temp := onSort(2);
            onSort(2) := onSort(4);
            onSort(4) := temp;
        end if;
        if onSort(3) < onSort(5) then
            temp := onSort(3);
            onSort(3) := onSort(5);
            onSort(5) := temp;
        end if;
        
        if onSort(1) < onSort(2) then
            temp := onSort(1);
            onSort(1) := onSort(2);
            onSort(2) := temp;
        end if;
        if onSort(3) < onSort(4) then
            temp := onSort(3);
            onSort(3) := onSort(4);
            onSort(4) := temp;
        end if;
        if onSort(5) < onSort(6) then
            temp := onSort(5);
            onSort(5) := onSort(6);
            onSort(6) := temp;
        end if;
        
        -- formar palvra muito grande
        for i in 0 to N-1 loop
            sorted((i+1)*M-1 downto i*M) <= onSort(i);
        end loop;
        
    end process;
    toSort <= dataIn;
    dataOut <= sorted;
    

end Behavioral;

