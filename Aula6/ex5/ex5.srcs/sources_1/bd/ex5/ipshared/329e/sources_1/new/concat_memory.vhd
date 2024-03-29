----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2017 09:32:04 AM
-- Design Name: 
-- Module Name: concat_memory - Behavioral
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

entity concat_memory is
    generic (
                bits      : integer  := 16; 
                words     : integer := 128;
                log_words : integer := 7
            );
    Port ( 
           clk : in std_logic;
           data_in : in std_logic_vector(bits-1 downto 0);
           address : out STD_LOGIC_VECTOR (log_words-1 downto 0);
           data_out : out STD_LOGIC_VECTOR (bits*words-1 downto 0));
end concat_memory;

architecture Behavioral of concat_memory is
    signal address_s : std_logic_vector(log_words-1 downto 0) := (others => '0');
    type my_array is array (0 to words-1) of std_logic_vector(bits-1 downto 0);
    signal vector_s  : my_array;
    
    function to_slv(slvv : my_array) return STD_LOGIC_VECTOR is
      variable slv : STD_LOGIC_VECTOR((slvv'length * bits) - 1 downto 0);
    begin
      for i in slvv'range loop
        slv((i * bits) + bits-1 downto (i * bits))      := slvv(i);
      end loop;
      return slv;
    end function;
    
begin
    address <= address_s;
    process(clk)
    begin
        if rising_edge(clk) then 
            vector_s(to_integer(unsigned(address_s))) <= data_in;
            address_s <= std_logic_vector(unsigned(address_s) + 1);
        end if;
    end process;
    data_out  <= to_slv(vector_s);
end Behavioral;
