----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2017 07:56:26 PM
-- Design Name: 
-- Module Name: number_of_ones - Behavioral
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

entity number_of_ones is
    generic(
            number_of_bits_input  : integer := 16;
            number_of_bits_output : integer := 4
            );
    port(
        clk         : in std_logic;
        reset       : in std_logic;
        datain      : in std_logic_vector(number_of_bits_input -1 downto 0);
        result      : out std_logic_vector(number_of_bits_output -1 downto 0)
        );    
end number_of_ones;

architecture Behavioral of number_of_ones is
    type state_type is (initial_state, final_state);
    signal Current_State, Next_State    : state_type;
    signal index, next_index            : integer range 0 to number_of_bits_input -1;
    signal Res, next_Res                : integer range 0 to number_of_bits_input -1;
    signal nr_of_ones, next_nr_of_ones  : integer range 0 to number_of_bits_input -1;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (reset='1') then
                Current_State   <= initial_state;
                index           <= 0;
                nr_of_ones      <= 0;
                Res             <= 0;
            else               
                Current_State <= Next_State;
                index       <= next_index;
                nr_of_ones  <= next_nr_of_ones;
                Res         <= next_Res;
            end if;
        end if;
    end process;
    
    process(Current_State, datain, index, nr_of_ones, Res)
    begin
        Next_State          <=  Current_State;
        next_index          <=  index;
        next_nr_of_ones     <=  nr_of_ones;
        next_Res            <=  Res;
        case Current_State is
            when initial_state => 
                next_index      <= index + 1;
                Next_State      <= initial_state;
                next_nr_of_ones <= nr_of_ones + conv_integer(datain(index));
                if(index = number_of_bits_input -1) then
                    Next_State <= final_state;
                end if;
            when final_state => 
                Next_State      <= initial_state;
                next_Res        <= nr_of_ones;
                next_nr_of_ones <= 0;
                next_index      <= 0;
            when others =>
                Next_State <= initial_state;
        end case;
    end process;

    result <= conv_std_logic_vector(Res,number_of_bits_output);

end Behavioral;
