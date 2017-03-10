library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity use_display_control is
    Port ( clk       	: in std_logic;
              sw        	: in STD_LOGIC_VECTOR (15 downto 0);
              seg       	: out STD_LOGIC_VECTOR (6 downto 0);
              sel_disp 	: out STD_LOGIC_VECTOR (7 downto 0));
end use_display_control;

architecture Behavioral of use_display_control is
	signal count        : std_logic_vector(15 downto 0) := (others => '0');
	signal divided_clk  : std_logic;
begin

count <= count+1 when divided_clk'event and divided_clk='1';  -- rising_edge(divided_clk); 

disp_cont: entity work.EightDisplayControl 
    port map ( clk=>clk,leftL=>sw(15 downto 12),near_leftL=>sw(11 downto 8),near_rightL=>sw(7 downto 4),rightL=>sw(3 downto 0),
	leftR=>count(15 downto 12),near_leftR=>count(11 downto 8),near_rightR=>count(7 downto 4),rightR=>count(3 downto 0),
	select_display=>sel_disp, segments=>seg);

clk_div: entity work.clock_divider
             generic map 	(how_fast => 26  )		
             port map	( clk, divided_clk);

end Behavioral;
