----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora
-- 
-- Create Date: 11/10/2024 01:31:10 PM
-- Design Name: Full Adder VHDL TB Code
-- Module Name: FA_TB - Behavioral
-- Project Name: Computer Project 2
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

entity FA_TB is
--  Port ( );
end FA_TB;

architecture Behavioral of FA_TB is
signal A_TB, B_TB, Cin_TB, Sum_TB, Cout_TB: std_logic;
component FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component FA;
begin
UUT: FA port map(
A => A_TB, B => B_TB, Cin => Cin_TB,
Sum => Sum_TB, Cout => Cout_TB);
process
begin
for A in 0 to 1 loop
for B in 0 to 1 loop
for Cin in 0 to 1 loop

if A = 1 then A_TB <= '1';
else A_TB <= '0';
end if;

if B = 1 then B_TB <= '1';
else B_TB <= '0';
end if;

if Cin  = 1 then Cin_TB <= '1';
else Cin_TB <= '0';
end if;

wait for 100 ns;

end loop;
end loop;
end loop;
wait;
end process;
end Behavioral;