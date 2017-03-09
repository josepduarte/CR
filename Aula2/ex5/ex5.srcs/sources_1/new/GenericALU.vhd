----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2017 10:48:34 AM
-- Design Name: 
-- Module Name: GenericALU - Behavioral
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

entity GenericALU is
    Generic (N    : positive := 8 );
    Port ( valueA : in STD_LOGIC_VECTOR (N-1 downto 0);
           valueB : in STD_LOGIC_VECTOR (N-1 downto 0);
           operat : in STD_LOGIC_VECTOR (2 downto 0);
           result : out STD_LOGIC_VECTOR ((2*N)-1 downto 0));
end GenericALU;

architecture BehavioralProcesses of GenericALU is
    signal s_result : std_logic_vector(N-1 downto 0);
    signal s_quantity : std_logic_vector((2*N)-1 downto 0);
begin
    process (operat, valueA, valueB)
    begin
        case operat is
            when "001" =>
                result <= std_logic_vector(resize(signed(valueA) + signed(valueB), result'length));
            when "010" => 
                result <= std_logic_vector(resize(signed(valueA) - signed(valueB), result'length));
            when "011" =>
                result <= std_logic_vector(signed(valueA) * signed(valueB));
            when "100" =>
                result <= std_logic_vector(resize(signed(valueA) / signed(valueB), result'length));
            when "101" =>
                result <= std_logic_vector(resize(signed(valueA) mod signed(valueB), result'length));
            when "110" =>
                result <= std_logic_vector(resize(signed(valueA) rem signed(valueB), result'length));
--                result(N-1 downto 0) <= s_result;
--                result((2*N)-1 downto N-1) <= (others => s_result(N-1));
            when "111" => 
                result <= std_logic_vector(abs(signed(valueB & valueA)));
            when others =>
                result <= (others => '0');
        end case;
    end process;
end BehavioralProcesses;

architecture BehavioralNoProcesses of GenericALU is
begin
    result <= std_logic_vector(resize(signed(valueA) + signed(valueB), result'length)) when (operat = "001") else
              std_logic_vector(resize(signed(valueA) - signed(valueB), result'length)) when (operat = "010") else
              std_logic_vector(signed(valueA) * signed(valueB)) when (operat = "011") else
              std_logic_vector(resize(signed(valueA) / signed(valueB), result'length)) when (operat = "100") else
              std_logic_vector(resize(signed(valueA) rem signed(valueB), result'length)) when (operat = "101") else
              std_logic_vector(resize(signed(valueA) mod signed(valueB), result'length)) when (operat = "110") else
              std_logic_vector(abs(signed(valueB & valueA))) when (operat = "111") else
              (others => '0');
end BehavioralNoProcesses;
