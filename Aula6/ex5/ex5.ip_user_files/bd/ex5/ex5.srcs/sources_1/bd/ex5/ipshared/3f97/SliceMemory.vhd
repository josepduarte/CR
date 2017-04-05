library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SliceMemory is
    generic( bits      : integer  := 8; 
             words     : integer := 16;
             log_words : integer := 4);
    port (   clock     : in     std_logic;
             dataIn    : in     std_logic_vector(bits*words-1 downto 0);
             address   : out    std_logic_vector(log_words-1 downto 0);
             finished  : out   std_logic;
             dataOut   : out    std_logic_vector(bits-1 downto 0));
end SliceMemory;

architecture Behavioral of SliceMemory is
    signal address_s : std_logic_vector(log_words-1 downto 0) := (others => '0');
    signal finished_s: std_logic := '0';
begin
    process(clock)
    variable allOnes : std_logic_vector(log_words-1 downto 0) := (others => '1');
    begin
        if (rising_edge(clock)) then
            address_s <= std_logic_vector(unsigned(address_s) + 1); 
            dataOut <= dataIn((to_integer(unsigned(address_s))+1)*bits-1 downto to_integer(unsigned(address_s))*bits);
            if address_s = allOnes then
                finished_s <= '1';
            end if;
        end if;
    end process;
    finished <= finished_s;
    address <= address_s;
end Behavioral;