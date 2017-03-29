----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2017 09:36:50 AM
-- Design Name: 
-- Module Name: Mux2_1 - Behavioral
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

entity Mux2_1 is
    generic ( number_of_bits : positive := 4);
    Port ( datain0 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           datain1 : in STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
           sel     : in STD_LOGIC;
           dataout : out STD_LOGIC_VECTOR (number_of_bits-1 downto 0)
           );
end Mux2_1;

architecture Behavioral of Mux2_1 is

begin
    process (sel,datain1,datain0)
    begin
       case sel is
          when '0' => dataout <= datain0;
          when '1' => dataout <= datain1;
          when others => dataout <= (others => '0');
       end case;
    end process;

end Behavioral;
