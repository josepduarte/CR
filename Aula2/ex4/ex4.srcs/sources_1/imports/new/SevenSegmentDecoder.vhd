----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2017 11:06:44 PM
-- Design Name: 
-- Module Name: SevenSegmentDecoder - Behavioral
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

entity SevenSegmentDecoder is
    Port ( amount : in STD_LOGIC_VECTOR (3 downto 0);
           segments : out STD_LOGIC_VECTOR (6 downto 0));
end SevenSegmentDecoder;

architecture BehavioralConstant of SevenSegmentDecoder is
    type DISPLAY_ROM is array (0 to 15) of std_logic_vector(6 downto 0);
    constant decoderSegments : DISPLAY_ROM := ("1000000", "1111001", "0100100", "0110000", "0011001", 
                                               "0010010", "0000010", "1111000", "0000000", "0001000", 
                                               "0001000", "0000011", "1000110", "0100001", "0000110", "0001110");
begin
    segments <= decoderSegments(to_integer(unsigned(amount)));
end BehavioralConstant;

architecture BehavioralWhenElse of SevenSegmentDecoder is
begin
    segments <= "1000000" when amount = "0000" else		-- 0
                "1111001" when amount = "0001" else		-- 1
                "0100100" when amount = "0010" else		-- 2
                "0110000" when amount = "0011" else		-- 3
                "0011001" when amount = "0100" else		-- 4
                "0010010" when amount = "0101" else		-- 5
                "0000010" when amount = "0110" else		-- 6
                "1111000" when amount = "0111" else		-- 7
                "0000000" when amount = "1000" else		-- 8
                "0010000" when amount = "1001" else		-- 9
                "0001000" when amount = "1010" else  	-- a
                "0000011" when amount = "1011" else   	-- b
                "1000110" when amount = "1100" else   	-- c
                "0100001" when amount = "1101" else   	-- d
                "0000110" when amount = "1110" else   	-- e
                "0001110" when amount = "1111" else   	-- f
                "1111111";	                            -- turned off	
end BehavioralWhenElse;

architecture BehavioralCaseWhen of SevenSegmentDecoder is
begin
    process(amount)
    begin
        case amount is
            when "0000" =>
                segments <= "1000000";
            when "0001" =>
                segments <= "1111001";
            when "0010" =>
                segments <= "0100100";
            when "0011" =>
                segments <= "0110000";
            when "0100" =>
                segments <= "0011001";
            when "0101" =>
                segments <= "0010010";
            when "0110" =>
                segments <= "0000010";
            when "0111" =>
                segments <= "1111000";
            when "1000" =>
                segments <= "0000000";
            when "1001" =>
                segments <= "0010000";
            when "1010" =>
                segments <= "0001000";
            when "1011" =>
                segments <= "0000011";
            when "1100" =>
                segments <= "1000110";
            when "1101" =>
                segments <= "0100001";
            when "1110" =>
                segments <= "0000110";
            when "1111" =>
                segments <= "0001110";
            when others =>
                segments <= "1111111";
        end case;
    end process;
end BehavioralCaseWhen;

architecture BehavioralWithSelect of SevenSegmentDecoder is
begin
    with amount select segments <= 
        "1000000" when "0000",		-- 0
        "1111001" when "0001",		-- 1
        "0100100" when "0010",		-- 2
        "0110000" when "0011",		-- 3
        "0011001" when "0100",		-- 4
        "0010010" when "0101",		-- 5
        "0000010" when "0110",		-- 6
        "1111000" when "0111",		-- 7
        "0000000" when "1000",		-- 8
        "0010000" when "1001",		-- 9
        "0001000" when "1010",  	-- a
        "0000011" when "1011",   	-- b
        "1000110" when "1100",   	-- c
        "0100001" when "1101",   	-- d
        "0000110" when "1110",   	-- e
        "0001110" when "1111";   	-- f		
end BehavioralWithSelect;

architecture BehavioralIfElse of SevenSegmentDecoder is 
begin
process(amount)
begin
    if amount="0000" then segments <= "1000000";
    elsif amount="0001" then segments <= "1111001";
    elsif amount="0010" then segments <= "0100100";
    elsif amount="0011" then segments <= "0110000";
    elsif amount="0100" then segments <= "0011001";
    elsif amount="0101" then segments <= "0010010";
    elsif amount="0110" then segments <= "0000010";
    elsif amount="0111" then segments <= "1111000";
    elsif amount="1000" then segments <= "0000000";
    elsif amount="1001" then segments <= "0010000";
    elsif amount="1010" then segments <= "0001000"; 
    elsif amount="1011" then segments <= "0000011";
    elsif amount="1100" then segments <= "1000110";
    elsif amount="1101" then segments <= "0100001";
    elsif amount="1110" then segments <= "0000110";
    elsif amount="1111" then segments <= "0001110";
    else  segments <= "1000000";
end if;
end process;
end BehavioralIfElse;