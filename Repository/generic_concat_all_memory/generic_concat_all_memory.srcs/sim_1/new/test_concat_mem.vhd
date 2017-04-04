----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2017 02:52:06 PM
-- Design Name: 
-- Module Name: test_concat_mem - Behavioral
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

entity test_concat_mem is
--  Port ( );
end test_concat_mem;

architecture Behavioral of test_concat_mem is
    type ROM is array (0 to 127) of integer(15 downto 0);
    constant memory : ROM := 24649, 1845, 7204, 4836, 32343, 20918, 13964, 11839, 26606, 10895, 6339, 1193, 21204, 15630, 22271, 28493, 19373, 16431, 23130, 20699, 17009, 30548, 25183, 29036, 32539, 12773, 11253, 2593, 26940, 8996, 2488, 32194, 22833, 25779, 10304, 9983, 23032, 29527, 19123, 21445, 22173, 30368, 582, 30885, 9838, 10580, 15718, 24052, 18241, 16775, 2404, 970, 21808, 17525, 916, 14577, 29524, 17227, 15621, 25614, 24886, 4914, 15871, 17759, 25761, 11276, 25764, 648, 32737, 30326, 3124, 7458, 8293, 29377, 16514, 1988, 2528, 18346, 15193, 25693, 15962, 28880, 1965, 4596, 878, 29164, 26754, 3801, 26968, 9481, 1984, 22428, 24702, 28412, 31490, 21029, 30242, 24226, 23274, 32603, 16715, 30813, 31554, 7458, 23756, 12444, 18611, 5444, 949, 23843, 27291, 3404, 330, 11806, 1544, 9792, 9754, 3320, 24746, 31323, 22425, 4158, 10493, 10774, 6143, 2252, 21169, 20676;
    --constant aROM : std_logic_vector(2047 downto 0) := std_logic_vector(to_unsigned(246491845720448363234320918139641183926606108956339119321204156302227128493193731643123130206991700930548251832903632539127731125325932694089962488321942283325779103049983230322952719123214452217330368582308859838105801571824052182411677524049702180817525916145772952417227156212561424886491415871177592576111276257646483273730326312474588293293771651419882528183461519325693159622888019654596878291642675438012696894811984224282470228412314902102930242242262327432603167153081331554745823756124441861154449492384327291340433011806154497929754332024746313232242541581049310774614322522116920676, 2048))
    signal s_clk : std_logic;
    signal s_data_in : std_logic_vector(15 downto 0);
    signal s_address : STD_LOGIC_VECTOR (6 downto 0);
    signal s_data_out : STD_LOGIC_VECTOR (2047 downto 0));
begin    
    uut:            entity work.concat_memory(Behavioral)
                    port map (clk => s_clk,
                              data_in => s_data_in,
                              address => s_address,
                              data_out => s_data_out);

    clock_proc:     process
                    begin
                        s_clk <= '0';
                        wait for 50 ns;
                        s_clk <= '1';
                        wait for 50 ns;
                    end process;
                    
--     comb_proc1:    process(s_data_in, s_address, s_data_out)
--                    begin
                        
--                    end process; 
                    
     rom:           process
                    begin
                        s_data_in <= std_logic_vector(to_unsigned(memory(s_address), 16));                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <
                    end process;              
end Behavioral;
