----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 06:17:16 PM
-- Design Name: Full Subtractor VHDL TB Code
-- Module Name: FS_TB - Behavioral
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

entity FS_TB is
--  Port ( );
end FS_TB;

architecture Behavioral of FS_TB is
signal A_TB, B_TB, Borrow_in_TB, Borrow_TB, Difference_TB: STD_LOGIC;

component FS is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Borrow_in : in STD_LOGIC;
           Borrow : out STD_LOGIC;
           Difference : out STD_LOGIC);
end component FS;
begin
UUT: FS port map (
A=> A_TB, B=> B_TB,
Borrow_in=> Borrow_in_TB,
Borrow=> Borrow_TB,
Difference=> Difference_TB);
process
begin
for A in 0 to 1 loop
for B in 0 to 1 loop
for Borrow_in in 0 to 1 loop

if A = 1 then A_TB <= '1';
else A_TB <= '0';
end if;

if B = 1 then B_TB <= '1';
else B_TB <= '0';
end if;

if Borrow_in = 1 then Borrow_in_TB <= '1';
else Borrow_in_TB <= '0';
end if;

wait for 20 ns;
end loop;
end loop;
end loop;
wait;
end process;
end Behavioral;
