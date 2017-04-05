library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Get2DigitsN is
	port ( clk         : in STD_LOGIC;
	       Digits      : out std_logic_vector(7 downto 0);
		   btn         : in std_logic_vector(0 downto 0);
		   din         : in std_logic_vector(3 downto 0);
		   dout        : out std_logic_vector(3 downto 0)	   );
end Get2DigitsN;

architecture Behavioral of Get2DigitsN is
    signal rst       : std_logic;
begin
	
rst <= btn(0);
					
keypad: entity work.Take_Data_from_KP
        port map (  digits               => Digits,
                    rst                  => rst,
                    clk                  => clk,
                    Row                  => din,
                    Col                  => dout   );
                   
end Behavioral;