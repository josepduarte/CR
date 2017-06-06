----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2017 12:08:49 AM
-- Design Name: 
-- Module Name: FSM_even_odd - Behavioral
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


-- althought it says generic it is everything less generic xd
entity FSM_even_odd is
    generic(
                N:integer   := 8;
                M:integer   := 22
            );
    port(
            clk     :   in std_logic;
            reset   :   in std_logic;
            data_in :   in std_logic_vector(N*M-1 downto 0);
            data_out:   out std_logic_vector(N*M-1 downto 0)
        );
end FSM_even_odd;

architecture Behavioral of FSM_even_odd is

type state_type is (initial_state, state_1, state_2, state_3, state_4, state_5, state_6, completed);
signal current_state, next_state :  state_type;

type in_data is array(N-1 downto 0) of std_logic_vector(M-1 downto 0);
signal current_array, next_array    : in_data;

begin

process(clk)
begin
    if rising_edge(clk) then
        if(reset='1') then 
            current_state <= initial_state;
            current_array <= (others=>(others => '0'));
        else
            current_state <= next_state;
            current_array <= next_array;
        end if;
    end if;
end process;

process(current_state, data_in, current_array)
begin
    next_state <= current_state;
    next_array <= current_array;
    
    case current_state is
        when initial_state => 
            next_state <= state_1;
            for i in N-1 downto 0 loop
                next_array(i) <= data_in(M*(i+1)-1 downto M*i);
            end loop;
        when state_1 => 
            next_state <= state_2;
            for i in 0 to N/2-1 loop
                if current_array(2*i) < current_array(2*i+1) then
                    next_array(2*i) <= current_array(2*i+1);
                    next_array(2*i+1) <= current_array(2*i);
                end if;
            end loop;
        when state_2 => 
            next_state <= state_3;
            for i in 0 to N-3 loop
                if current_array(i) < current_array(i+2) then
                    next_array(i) <= current_array(i+2);
                    next_array(i+2) <= current_array(i);
                end if;
            end loop;
        when state_3 => 
            next_state <= state_4;
            if current_array(1) < current_array(2) then
                next_array(1) <= current_array(2);
                next_array(2) <= current_array(1);
            end if;
            if current_array(5) < current_array(6) then
                next_array(5) <= current_array(6);
                next_array(6) <= current_array(5);
            end if;
        when state_4 => 
            next_state <= state_5;
            for i in 0 to N/2-1 loop
                if current_array(i) < current_array(i+N/2) then
                    next_array(i) <= current_array(i+N/2);
                    next_array(i+N/2) <= current_array(i);
                end if;
            end loop;
        when state_5 => 
            next_state <= state_6;
            if current_array(2) < current_array(4) then
                next_array(2) <= current_array(4);
                next_array(4) <= current_array(2);
            end if;
            if current_array(3) < current_array(5) then
                next_array(3) <= current_array(5);
                next_array(5) <= current_array(3);
            end if;
        when state_6 => 
            next_state <= completed;
            if current_array(1) < current_array(2) then
                next_array(1) <= current_array(2);
                next_array(2) <= current_array(1);
            end if;
            if current_array(3) < current_array(4) then
                next_array(3) <= current_array(4);
                next_array(4) <= current_array(3);
            end if;
            if current_array(5) < current_array(6) then
                next_array(5) <= current_array(6);
                next_array(6) <= current_array(5);
            end if;
        when completed => 
            next_state <= completed;
        when others => 
            next_state <= initial_state;         
    end case;
end process;
    
process(current_array)
begin
    for i in N-1 downto 0 loop
        data_out(M*(i+1)-1 downto M*i) <= current_array(i);
    end loop;
end process;

end Behavioral;
