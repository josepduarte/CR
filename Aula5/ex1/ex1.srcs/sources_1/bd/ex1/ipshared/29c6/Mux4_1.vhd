----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2017 10:37:14 AM
-- Design Name: 
-- Module Name: Mux4_1 - Behavioral
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

entity Mux4_1 is
    generic ( number_of_bits : positive := 4);
    Port ( datain0 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           datain1 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           datain2 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           datain3 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           sel     : in STD_LOGIC_VECTOR (1 downto 0);
           dataout : out STD_LOGIC_VECTOR (number_of_bits-1 downto 0)
           );
end Mux4_1;

architecture Behavioral of Mux4_1 is

begin
    process (sel,datain1,datain2,datain3,datain0)
    begin
       case sel is
          when "00" => dataout <= datain0;
          when "01" => dataout <= datain1;
          when "10" => dataout <= datain2;
          when "11" => dataout <= datain3;
          when others => dataout <= (others => '0');
       end case;
    end process;

end Behavioral;
