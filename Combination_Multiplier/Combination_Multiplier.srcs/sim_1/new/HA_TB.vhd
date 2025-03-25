----------------------------------------------------------------------------------
-- Company: California State University Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 12:47:22 PM
-- Design Name: Half Adder TB VHDL Code
-- Module Name: HA_TB - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity HA_TB is
--  Port ( );
end HA_TB;

architecture Behavioral of HA_TB is
signal A_TB, B_TB, Sum_TB, Cout_TB: std_logic;

component HA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component HA;
begin
UUT: HA port map(
A => A_TB, B => B_TB,
Sum => Sum_TB, Cout => Cout_TB);
process
begin
for A in 0 to 1 loop
for B in 0 to 1 loop

if A = 1 then A_TB <= '1';
else A_TB <= '0';
end if;

if B = 1 then B_TB <= '1';
else B_TB <= '0';
end if;

wait for 100ns;
end loop; -- Ends Loop for B
end loop; -- Ends Loop for A
wait;
end process;
end Behavioral;