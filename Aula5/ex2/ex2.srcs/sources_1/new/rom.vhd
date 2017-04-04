----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 11:26:57 AM
-- Design Name: 
-- Module Name: rom - Behavioral
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

entity rom is
    Port ( dataout : out STD_LOGIC_VECTOR (2047 downto 0));
end rom;

architecture Behavioral of rom is

begin

    dataout <= x"246491845720448363234320918139641183926606108956339119321204156302227128493193731643123130206991700930548251832903632539127731125325932694089962488321942283325779103049983230322952719123214452217330368582308859838105801571824052182411677524049702180817525916145772952417227156212561424886491415871177592576111276257646483273730326312474588293293771651419882528183461519325693159622888019654596878291642675438012696894811984224282470228412314902102930242242262327432603167153081331554745823756124441861154449492384327291340433011806154497929754332024746313232242541581049310774614322522116920676"; 
    
end Behavioral;
