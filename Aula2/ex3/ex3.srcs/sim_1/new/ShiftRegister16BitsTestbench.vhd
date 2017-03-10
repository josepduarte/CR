----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2017 11:12:19 AM
-- Design Name: 
-- Module Name: ShiftRegisterTestbench - Stimulus
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

entity ShiftRegister16BitsTestbench is
--  Port ( );
end ShiftRegister16BitsTestbench;

architecture Stimulus of ShiftRegister16BitsTestbench is
    signal s_clk : STD_LOGIC;
    signal s_enable_n : STD_LOGIC;
    signal s_reset : STD_LOGIC;
    signal s_set : STD_LOGIC;
    signal s_dir_left : STD_LOGIC;
    signal s_data_in : STD_LOGIC_VECTOR (15 downto 0);
    signal s_data_out : STD_LOGIC_VECTOR (15 downto 0);
begin
    uut:        entity work.ShiftRegister16Bits(Behavioral)
                port map (clk => s_clk,
                          enable_n => s_enable_n,
                          reset => s_reset,
                          set => s_set,
                          dir_left => s_dir_left,
                          data_in => s_data_in,
                          data_out => s_data_out);
    
    sync_pro1:  process
                begin
                    wait for 50 ns;
                    s_clk <= '0';
                    wait for 50 ns;
                    s_clk <= '1';
                end process;
                
    sync_pro2:  process
                begin
                    s_data_in <= "0101010101010101";
                    s_dir_left <= '0';
                    s_reset <= '0';
                    wait for 10 ns;
                    s_enable_n <= '0';
                    wait for 10 ns;
                    s_set <= '1';
                    wait for 10 ns;
                    s_set <= '0';
                    wait for 200 ns;
                    s_dir_left <= '1';
                    wait for 400 ns;
                    s_reset <= '1';
                    wait for 50 ns;
                    s_reset <= '0';
                    wait for 10 ns;
                    s_data_in <= "0000001111000000";
                    wait for 10 ns;
                    s_set <= '1';
                    wait for 100 ns;
                    s_dir_left <= '0';
                end process;

end Stimulus;
