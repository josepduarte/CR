----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 10:35:05 PM
-- Design Name: 
-- Module Name: full_addr - Behavioral
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

entity full_addr is
    Port ( A, B, cin : in STD_LOGIC;
           result, cout : out STD_LOGIC);
end full_addr;

architecture Shell of full_addr is
    signal s1, s2, s3 : std_logic;
begin
    half_addr1 : entity work.half_adder(Behavioral)
               port map(A => A,
                        B => B,
                        result => s1,
                        cout => s2);
    
    half_addr2 : entity work.half_adder(Behavioral)
               port map(A => s1,
                        B => cin,
                        result => result,
                        cout => s3);
    
    cout <= s2 or s3;
    
end Shell;
