----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2017 10:27:02 AM
-- Design Name: 
-- Module Name: max_min_FSM - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity max_min_FSM is
    Port ( clk      : in STD_LOGIC;
           reset    : in std_logic;
           datain   : in std_logic_vector(31 downto 0);
           address  : out std_logic_vector(8 downto 0);
           dataMax  : out std_logic_vector(31 downto 0);
           dataMin  : out std_logic_vector(31 downto 0)
           );
end max_min_FSM;

architecture Behavioral of max_min_FSM is
    type state is (looking, finished);
    signal CurrentState, NextState              : state;
    signal index, nextIndex                     : std_logic_vector(8 downto 0)   := (others => '0');
    signal maxValue, maxValueNext               : std_logic_vector(31 downto 0)  := (others => '0');
    signal minValue, minValueNext               : std_logic_vector(31 downto 0)  := (others => '1');
    
begin

-- Sequencial
process(clk)
begin
    if rising_edge(clk) then
        if (reset='1') then
            CurrentState <= looking;
            index        <= (others => '0');
            maxValue     <= (others => '1');
            minValue     <= (others => '0');
        else
            CurrentState <= NextState;
            index        <= NextIndex;
            maxValue     <= maxValueNext;
            minValue     <= minValueNext;
        end if;
    end if;
end process;

--- Combinatório
process(CurrentState, index, maxValue, minValue)
begin
    NextState      <=  CurrentState;
    nextIndex      <=  index;
    maxValueNext   <=  maxValue;         
    minValueNext   <=  minValue;

    case CurrentState is
        when looking   => 
            nextIndex   <=  index + 1;
            NextState   <=  looking;
            if unsigned(index) = 0 then -- se puser este if primeiro, no primeiro "ZERO" mudará o estado mas também mudará em algum dos seguintes ifs. Só sai para o finished no segundo zero.
                NextState <= finished;
            end if;  
            if unsigned(dataIn)      < unsigned(minValue) then
                minValueNext <= dataIn;
                NextState   <=  looking;
            end if;
            if unsigned(dataIn) > unsigned(maxValue) then
                maxValueNext  <= dataIn;
                NextState   <=  looking;
            end if;
        when finished  =>
            NextState <= finished; -- permanece aqui simplesmente
        when others    =>
              CurrentState <= looking;
    end case;
end process;
    address <= index;
    dataMax <= maxValue;
    dataMin <= minValue;
    
end Behavioral;
