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
             dataOut   : out    std_logic_vector(bits-1 downto 0));
end SliceMemory;

architecture Behavioral of SliceMemory is
    signal address_s : std_logic_vector(log_words-1 downto 0) := (others => '0');
begin
    process(clock)
    begin
        if (rising_edge(clock)) then
            address_s <= std_logic_vector(unsigned(address_s) + 1); 
        end if;
    end process;
    
    process
    begin
        for i in 0 to words-1 loop
            dataOut <= dataIn((i+1)*bits-1 downto i*bits);
        end loop;
    end process;
    
    address <= address_s;
end Behavioral;