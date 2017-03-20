library IEEE;	
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;			 
use IEEE.STD_LOGIC_UNSIGNED.ALL;	

entity ConsecutiveOnesFSM_1000 is
   port ( 	   clk		: in std_logic;
	           btnC		: in std_logic;
	           datain   : in  STD_LOGIC_VECTOR (999 downto 0);
	           result   : out std_logic_vector(9 downto 0));
end ConsecutiveOnesFSM_1000;

architecture Behavioral of ConsecutiveOnesFSM_1000 is

type state_type is (zero, one, initial_state, final_state); 	-- enumeration type for the FSM states
    signal C_S, N_S 		      : state_type;
    signal index, next_index	  : integer range 0 to 1000;
    signal Res, next_Res		  : integer range 0 to 1000;
    signal n_o_ones, next_n_o_ones: integer range 0 to 1000;
    signal max_con, next_max_con  : integer range 0 to 1000;

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

process (C_S, datain, index, n_o_ones, Res,max_con)  -- this is a combinational process    
begin
   N_S 		            <= C_S;
   next_index 		    <= index;
   next_n_o_ones 	    <= n_o_ones;
   next_Res		        <= Res;
   next_max_con         <=  max_con;
case C_S is
	when initial_state => next_index <= index+1; 
	   if index > datain'left then N_S <= final_state;
	   elsif datain(index) = '0' then N_S <= zero; next_n_o_ones <= 0;
	   else N_S <= one; next_n_o_ones <= 1;
	   end if;
	when zero => next_index <= index+1;    
	       if index > datain'left then N_S <= final_state;
           elsif datain(index) = '0' then N_S <= zero; next_n_o_ones <= 0;
           else N_S <= one; next_n_o_ones <= 1;
           end if; 
    when one => next_index <= index+1;   
          if index > datain'left then N_S <= final_state;
            if max_con < n_o_ones then next_max_con <= n_o_ones;
              else null;
            end if;
          else
            if max_con < n_o_ones then next_max_con <= n_o_ones;
            else null;
            end if;
            if datain(index) = '0' then N_S <= zero;  next_n_o_ones <= 0;
               else N_S <= one; next_n_o_ones <= n_o_ones+1; 
            end if; 
          end if;
    when final_state =>    N_S <= final_state;
	when others => N_S <= initial_state;
end case;
end process;

	 -- copying the result
	 result <= conv_std_logic_vector(max_con, 10);

end Behavioral;
