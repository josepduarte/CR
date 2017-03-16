----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2017 09:19:13 PM
-- Design Name: 
-- Module Name: ConsecutiveOnesFSM - Behavioral
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

entity ConsecutiveOnesFSM is
    Generic ( times : integer := 16);
    Port ( clock    : in STD_LOGIC;
           reset    : in STD_LOGIC;
           sequence : in STD_LOGIC_VECTOR (times - 1 downto 0);
           count : out STD_LOGIC_VECTOR ((times/4)-1 downto 0));
end ConsecutiveOnesFSM;

architecture Behavioral of ConsecutiveOnesFSM is
    type state is (A, B, C);
    signal currentState, nextState  : state;
    signal index        : integer range 0 to times - 1;
    signal nextIndex    : integer range 0 to times - 1;
    signal result       : integer range 0 to times;
    signal nextResult   : integer range 0 to times;
    signal maximum      : integer := 0;
begin
    process (clock, reset)
    begin
        if rising_edge(clock) then
            if (reset = '1') then
                currentState <= A;
                index <= 0;
                result <= 0;
            else 
                currentState <= nextState;
                index <= nextIndex;
                result <= nextResult;
            end if;
        end if;
    end process;
    
    process (currentState, nextState, sequence, index, result)
    begin
        nextState <= currentState;
        nextIndex <= index;
        nextResult <= result;
        case currentState is
            when A =>
                if (sequence(index) = '1') then
                    nextState <= B;
                else
                    nextState <= A;
                end if;
            when B =>
                if (sequence(index) = '1') then
                    nextState <= C;
                else 
                    nextState <= A;
                end if;
            when C =>
                if (sequence(index) = '1') then
                    nextState <= C;
                    nextResult <= result + 1;
                else
                    nextState <= A;
                    if (result > maximum) then
                        maximum <= result;
                    end if;
                    result <= 0;
                    nextResult <= 0;
                end if;
            when others => 
                nextState <= A;
        end case;
        nextIndex <= index + 1;
    end process;
end Behavioral;
