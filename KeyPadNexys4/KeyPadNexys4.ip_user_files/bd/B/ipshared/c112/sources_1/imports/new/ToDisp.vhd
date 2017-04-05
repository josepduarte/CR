library IEEE;	-- in future VHDL modules we will assume including these libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;		-- additional libraries	 
use IEEE.STD_LOGIC_UNSIGNED.ALL;	-- for conversion functions

entity ToDisp is
    Port ( clk: in std_logic;
           left : in std_logic_vector(3 downto 0);
           right : in std_logic_vector(3 downto 0);
           jc_p : out STD_LOGIC_VECTOR (1 downto 0);
           jc_n : out STD_LOGIC_VECTOR (1 downto 0);
           jb_p : out STD_LOGIC_VECTOR (1 downto 0);
           jb_n : out STD_LOGIC_VECTOR (1 downto 0)
           );
end ToDisp;

architecture Behavioral of ToDisp is

function bin_to_seg (input : std_logic_vector(3 downto 0)) return std_logic_vector is
		variable segments : std_logic_vector(6 downto 0);
	begin
	case(input) is
    		when "0000" => segments := "1000000";   	-- 0
    		when "0001" => segments := "1111001";   	-- 1
		    when "0010" => segments := "0100100";   	-- 2
    		when "0011" => segments := "0110000";   	-- 3
    		when "0100" => segments := "0011001";   	-- 4
    		when "0101" => segments := "0010010";   	-- 5
    		when "0110" => segments := "0000010";   	-- 6
    		when "0111" => segments := "1111000";   	-- 7
    		when "1000" => segments := "0000000";   	-- 8
    		when "1001" => segments := "0010000";   	-- 9 
    		when "1010" => segments := "0001000";   	-- a 
    		when "1011" => segments := "0000011";   	-- b
    		when "1100" => segments := "1000110";   	-- c
    		when "1101" => segments := "0100001";   	-- d
    		when "1110" => segments := "0000110";   	-- e
    		when "1111" => segments := "0001110";	-- f			
    		when others => segments := "1111111";      	-- todos os segmentos estão desligados
	end case;	
   	return segments;				
	end bin_to_seg;
signal vect, disp1, disp2 : std_logic_vector(6 downto 0); 
signal divided_clk : std_logic;

begin

process(divided_clk)
    variable flag : Boolean := false; 
begin
if rising_edge(divided_clk) then
    if (flag = false) then
                flag := true;    vect <= disp1;   jc_n(1) <= '0'; -- display control
    else        flag := false;   vect <= disp2;   jc_n(1) <= '1'; -- display control
    end if;
end if; 
end process;

div      :     entity work.clock_divider
                generic map (how_fast	=> 15) 
                port map	( clk, divided_clk);

disp2 <= bin_to_seg(left);
disp1 <= bin_to_seg(right); 

jc_p(0) <= not vect(4);-- left-bottom segment
jc_n(0) <= not vect(5);-- left-up segment
jc_p(1) <= not vect(6); -- middle segment

jb_p(0) <= not vect(0);-- upper segment
jb_n(0) <= not vect(1);-- right-up segment    
jb_p(1) <= not vect(2);-- right-down segment
jb_n(1) <= not vect(3);-- bottom segment

end Behavioral;
