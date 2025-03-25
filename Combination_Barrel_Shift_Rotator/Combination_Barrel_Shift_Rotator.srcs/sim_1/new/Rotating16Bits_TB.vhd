----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/11/2024 09:11:21 PM
-- Design Name: Combination Barrel Shift and Rotator
-- Module Name: Rotating16Bits_TB - Behavioral
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

entity Rotating16Bits_TB is
--  Port ( );
end Rotating16Bits_TB;
architecture Behavioral of Rotating16Bits_TB is
signal a_TB, yout_TB: std_logic_vector(15 downto 0);
signal amt_TB: std_logic_vector(3 downto 0);

component Rotating16Bits is
    Port ( a : in std_logic_vector(15 downto 0);
           amt : in std_logic_vector(3 downto 0);
           yout : out std_logic_vector(15 downto 0));
end component Rotating16Bits;
begin
UUT: Rotating16Bits port map(
a=> a_TB, amt=> amt_TB, yout=> yout_TB);

process
begin
a_TB<= b"0010_1011_1111_0011";
amt_TB <="0000";-- Rotate 0 Bits
wait for 20 ns;
amt_TB <="0010";--Rotate 2 Bits
wait for 20 ns;
amt_TB<="0100";--Rotate 4 Bits
wait for 20 ns;
amt_TB<= "1000";--Rotate 8 Bits
wait for 20 ns;
amt_TB<= "1010";--Rotate 10 Bits
wait for 20 ns;
amt_TB<= "1100";--Rotate 12 Bits
wait for 20 ns;
amt_TB<= "1110";--Rotate 14 Bits
wait for 20 ns;
amt_TB<= "1111";--Rotate 16 Bits
wait for 20 ns;

wait;
end process;
end Behavioral;