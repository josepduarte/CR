library IEEE;	
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;			 
use IEEE.STD_LOGIC_UNSIGNED.ALL;	

entity MaxOnesCons is
	generic(   number_of_bits	: integer := 16);
   port ( 	   clk		: in std_logic;
	           btnC		: in std_logic;
	           sw 		: in  STD_LOGIC_VECTOR (number_of_bits-1 downto 0);
	           binary   : out std_logic_vector(number_of_bits-1 downto 0));
end MaxOnesCons;

architecture Behavioral of MaxOnesCons is

type state_type is (zero, one, initial_state, final_state); 	-- enumeration type for the FSM states
    signal C_S, N_S 		      : state_type;
    signal index, next_index	  : integer range 0 to number_of_bits;
    signal Res, next_Res		  : integer range 0 to number_of_bits;
    signal n_o_ones, next_n_o_ones: integer range 0 to number_of_bits;
    signal max_con, next_max_con  : integer range 0 to number_of_bits;

begin

process (clk)			 -- this is a sequential process 
begin
   if rising_edge(clk) then 
      if (btnC = '1') then C_S <= initial_state; index <= 0; n_o_ones <= 0; Res <= 0; max_con <= 0;
      else	C_S <= N_S;
	index 	<= next_index;         	-- index for the vector
	n_o_ones 	<= next_n_o_ones;  	-- number of ones
	Res	<= next_Res;	          	-- the result
	max_con <=  next_max_con;
      end if;
   end if;
end process;

process (C_S, Sw, index, n_o_ones, Res,max_con)  -- this is a combinational process    
begin
   N_S 		            <= C_S;
   next_index 		    <= index;
   next_n_o_ones 	    <= n_o_ones;
   next_Res		        <= Res;
   next_max_con         <=  max_con;
case C_S is
	when initial_state => next_index <= index+1; 
	   if index > sw'left then N_S <= final_state;
	   elsif sw(index) = '0' then N_S <= zero; next_n_o_ones <= 0;
	   else N_S <= one; next_n_o_ones <= 1;
	   end if;
	when zero => next_index <= index+1;    
	       if index > sw'left then N_S <= final_state;
           elsif sw(index) = '0' then N_S <= zero; next_n_o_ones <= 0;
           else N_S <= one; next_n_o_ones <= 1;
           end if; 
    when one => next_index <= index+1;   
          if index > sw'left then N_S <= final_state;
            if max_con < n_o_ones then next_max_con <= n_o_ones;
              else null;
            end if;
          else
            if max_con < n_o_ones then next_max_con <= n_o_ones;
            else null;
            end if;
            if sw(index) = '0' then N_S <= zero;  next_n_o_ones <= 0;
               else N_S <= one; next_n_o_ones <= n_o_ones+1; 
            end if; 
          end if;
    when final_state =>    N_S <= final_state;
	when others => N_S <= initial_state;
end case;
end process;

	 -- copying the result
	 binary <= conv_std_logic_vector(max_con, number_of_bits);

end Behavioral;
