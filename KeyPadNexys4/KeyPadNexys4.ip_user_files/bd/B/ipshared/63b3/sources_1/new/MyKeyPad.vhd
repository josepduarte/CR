library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity InterfaceKeypad is
	port ( clk       : in STD_LOGIC;
	       TwoDigits : out std_logic_vector(7 downto 0);
		   btn       : in std_logic_vector(0 downto 0);
		   din       : in std_logic_vector(3 downto 0);
		   dout      : out std_logic_vector(3 downto 0)	   );
end InterfaceKeypad;

architecture Behavioral of InterfaceKeypad is
    signal rst       : std_logic;
begin
	
rst <= btn(0);
					
keypad: entity work.Take_Data_from_KP
        port map (  digits               => TwoDigits,
                    rst                  => rst,
                    clk                  => clk,
                    Row                  => din,
                    Col                  => dout   );
                   
end Behavioral;