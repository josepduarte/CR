--library IEEE;	-- in future VHDL modules we will assume including these libraries
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;		-- additional libraries	 
--use IEEE.STD_LOGIC_UNSIGNED.ALL;	-- for conversion functions

--entity clock_divider is
--generic 	(	how_fast			: integer := 26  );		
--port 		( 	clk		            : in std_logic;
--				divided_clk		    : out std_logic	);
--end clock_divider;

--architecture Behavioral of clock_divider is
--signal internal_clock : std_logic_vector (how_fast downto 0);
--begin
--process(clk)
--begin
--if rising_edge(clk) then			
--	   internal_clock <= internal_clock+1;
--end if;

--end process;	
--divided_clk <= internal_clock(internal_clock'left); 
---- the leftmost bit of internal_clock
--end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDividerN is
	generic(divFactor : positive);
	port(reset	: in  std_logic;
		  clkIn	: in  std_logic;
		  clkOut	: out std_logic);
end ClkDividerN;

architecture Behavioral of ClkDividerN is

	signal s_divCounter : natural;

begin
	process(reset, clkIn)
	begin
		if (reset = '1') then
			clkOut		 <= '0';
			s_divCounter <= 0;
		elsif (rising_edge(clkIn)) then
			if (s_divCounter = divFactor - 1) then
				clkOut		 <= '0';
				s_divCounter <= 0;
			else
				if (s_divCounter = (divFactor / 2 - 1)) then
					clkOut <= '1';
				end if;
				s_divCounter <= s_divCounter + 1;
			end if;
		end if;
	end process;
end Behavioral;
