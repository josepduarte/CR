----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2017 06:44:41 PM
-- Design Name: 
-- Module Name: Min_Max - Behavioral
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

entity Min_Max is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0);
           D : in STD_LOGIC_VECTOR (3 downto 0);
           reset : in std_logic;
           max : out std_logic_vector (3 downto 0);
           min : out std_logic_vector (3 downto 0)
           );
end Min_Max;

architecture Behavioral of Min_Max is
begin
       
    process(A,B,C,D, reset)
    variable temp_max : unsigned(3 downto 0) := "0000";
    begin
        if reset='1' then
            temp_max := "0000";
        else
            if unsigned(A) > temp_max then
                temp_max := unsigned(A);
            end if;
            if unsigned(B) > temp_max then
                temp_max := unsigned(B);
            end if;
            if unsigned(C) > temp_max then
                temp_max := unsigned(C);
            end if;
            if unsigned(D) > temp_max then
                temp_max := unsigned(D);
            end if;  
            max <= std_logic_vector(temp_max);    
       end if;    
     end process;
     
     process(A,B,C,D, reset)
     variable temp_min :unsigned(3 downto 0) := "1111";
     begin
        if reset='1' then
             temp_min := "1111";
        else
            if unsigned(A) < temp_min then
                 temp_min := unsigned(A);
             end if;
             if unsigned(B) < temp_min then
                 temp_min := unsigned(B);
             end if;
             if unsigned(C) < temp_min then
                 temp_min := unsigned(C);
             end if;
             if unsigned(D) < temp_min then
                 temp_min := unsigned(D);
             end if; 
             min <= std_logic_vector(temp_min);
        end if;
     end process;
   
end Behavioral;
