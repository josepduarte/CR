----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2017 03:40:50 PM
-- Design Name: 
-- Module Name: FSM_control - Behavioral
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

entity FSM_control is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           swi : in STD_LOGIC_VECTOR (2 downto 0);
           indata : in STD_LOGIC_VECTOR (31 downto 0);
           sm_mem : out STD_LOGIC_VECTOR (1 downto 0);
           out_addr : out STD_LOGIC_VECTOR (1 downto 0);
           MSDdata : out STD_LOGIC_VECTOR (3 downto 0);
           LSDdata : out STD_LOGIC_VECTOR (3 downto 0));
end FSM_control;

architecture Behavioral of FSM_control is
   type state_type is (showSingle_state, showAll_state); -- enumeração de estados
   signal C_S, N_S : state_type;
   signal index, next_index : integer range 0 to 3 := 0;
   signal index_all, next_index_all : integer range 0 to 3 := 0;
    
begin
    
    
    process(clk) -- sequencial
    begin
        if rising_edge(clk) then
            if rst = '1' then 
                C_S <= showAll_state;
                index <= 0;
                index_all <= 0;
            else
                C_S <= N_S;
                index <= next_index;
                index_all <= next_index_all;
            end if;
        end if;
    end process;
    
    process(C_S, index, index_all) --processo combinatório 
    variable data : std_logic_vector(7 downto 0);
    begin
        N_S <= C_S;
        next_index <= index;
        next_index_all <= index_all;
        case C_S is 
            when showSingle_state =>
                sm_mem <= swi(2 downto 1);
                out_addr <= std_logic_vector(to_unsigned(index,2));
                data := indata((index+1)*8-1 downto index*8);
                MSDdata <= data(7 downto 4);
                LSDdata <= data(3 downto 0);
                if swi(0) = '1' then
                    N_S <=showAll_state;
                end if;
            when showAll_state =>
                sm_mem <= std_logic_vector(to_unsigned(index_all, 2));
                out_addr <= std_logic_vector(to_unsigned(index, 2));
                data := indata((index+1)*8-1 downto index*8);
                MSDdata <= data(7 downto 4);
                LSDdata <= data(3 downto 0);
                if swi(0) = '0' then
                    N_S <=showSingle_state;
                end if;
            when others =>
                 N_S <=showAll_state; 
                 if swi(0) = '1' then
                    N_S <=showAll_state;
                 else
                    N_S <=showSingle_state;
                 end if;
        end case;
    end process;
end Behavioral;
