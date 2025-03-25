----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/11/2024 08:02:32 PM
-- Design Name: Combination Barrel Shift and Rotator
-- Module Name: MUX01_TB - Behavioral
-- Project Name: Computer Project 3
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

entity MUX01_TB is
--  Port ( );
end MUX01_TB;

architecture Behavioral of MUX01_TB is
signal a_TB, y_TB:std_logic_vector(15 downto 0);
signal selecting_TB:STD_LOGIC;
component MUX01 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end component MUX01;
begin
UUT: MUX01 port map (
a=> a_TB, selecting=>selecting_TB,
y=>y_TB);

process
begin

a_TB<= b"0101_0010_1110_0001";
selecting_TB<= '0';
wait for 20 ns;
a_TB<= b"0101_0010_1110_0001";
selecting_TB<= '1';
wait for 20 ns;

a_TB<= b"1001_0001_1001_0000";
selecting_TB<= '0';
wait for 20 ns;
a_TB<= b"1001_0001_1001_0000";
selecting_TB<= '1';
wait for 20 ns;

a_TB<= b"0111_1000_0110_0000";
selecting_TB<= '0';
wait for 20 ns;
a_TB<= b"0111_1000_0110_0000";
selecting_TB<= '1';
wait for 20 ns;

wait;
end process;
end Behavioral;