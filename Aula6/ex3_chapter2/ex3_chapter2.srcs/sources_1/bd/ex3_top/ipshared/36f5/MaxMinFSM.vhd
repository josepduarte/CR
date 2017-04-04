----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2017 04:50:51 PM
-- Design Name: 
-- Module Name: MaxMinFSM - Behavioral
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

entity MaxMinFSM is
    generic( number_of_bits : integer := 8);
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC_VECTOR (3 downto 0);
           inadd : in  STD_LOGIC_VECTOR (3 downto 0);
           inp : in STD_LOGIC_VECTOR (7 downto 0);
           outp : out STD_LOGIC_VECTOR (7 downto 0);
           outadd : out STD_LOGIC_VECTOR (3 downto 0));
end MaxMinFSM;

architecture Behavioral of MaxMinFSM is
    type state_type is (initial_state, final_state); -- enumeração de estados
    signal C_S, N_S : state_type;
    signal ResMax, next_ResMax : STD_LOGIC_VECTOR (7 downto 0);
    signal ResMin, next_ResMin : STD_LOGIC_VECTOR (7 downto 0);
    signal ResAddMin, next_ResAddMin : STD_LOGIC_VECTOR (3 downto 0);
    signal ResAddMax, next_ResAddMax : STD_LOGIC_VECTOR (3 downto 0);
    
begin
process (clk) -- processo sequencial
    begin
        if rising_edge(clk) then
            if (btn(0) = '1') then 
                C_S <= initial_state; ResMax <= (others => '0');  ResMin <= (others => '1');  ResAddMin <= (others => '0'); ResAddMax <= (others => '0');
            else C_S <= N_S;
                ResMax <= next_ResMax; 
                ResMin <= next_ResMin;
                ResAddMin <= next_ResAddMin;
                ResAddMax <= next_ResAddMax;
        end if;
    end if;
end process;

process (C_S, ResMax, ResMin, ResAddMin, ResAddMax, inadd, inp) -- processo combinatório
begin
    N_S <= C_S;
    next_ResMax <= ResMax;
    next_ResMin <= ResMin;
    next_ResAddMin <= ResAddMin;
    next_ResAddMax <= ResAddMax;
    case C_S is
        when initial_state => N_S <= initial_state;
            if(inp > ResMax) then
                next_ResMax <= inp;
                next_ResAddMax <= inadd;
            elsif(inp < ResMin) then
                next_ResMin <= inp;
                next_ResAddMin <= inadd;
            end if;             
            if(inadd = "1111") then N_S <= final_state;
            end if;
        when final_state => N_S <= initial_state;
            if(btn(1) = '1') then
                outp <= ResMin;
                outadd <= ResAddMin;
            else
                outp <= ResMax;
                outadd <= ResAddMax;
            end if;
        when others => N_S <= initial_state;
    end case;
end process;
end Behavioral;
