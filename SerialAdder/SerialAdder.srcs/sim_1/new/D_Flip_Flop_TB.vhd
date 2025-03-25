----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/28/2024 05:06:40 PM
-- Design Name: serial Adder
-- Module Name: D_Flip_Flop_TB - Behavioral
-- Project Name: Computer Project 4
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

entity D_Flip_Flop_TB is
--  Port ( );
end D_Flip_Flop_TB;

architecture Behavioral of D_Flip_Flop_TB is

component D_Flip_Flop is
Port (
      D, clock, reset: in STD_LOGIC;
      Q: out STD_LOGIC);
end component D_Flip_Flop;
signal D_TB, clock_TB, reset_TB, Q_TB: STD_LOGIC;
constant cp: time:= 10 ns;
begin
UUT: D_Flip_Flop port map(
D=> D_TB, clock=> clock_TB, reset=> reset_TB, Q=> Q_TB);
process
begin
clock_TB <= '1';
wait for cp/2;
clock_TB <= '0';
wait for cp/2;
end process;
process
begin
D_TB<= '0';
reset_TB<= '0';
wait for cp;
D_TB<= '0';
reset_TB<='1';
wait for cp;
D_TB<= '1';
reset_TB<= '0';
wait for cp;
D_TB<= '1';
reset_TB<= '0';
wait for cp;
end process;
end Behavioral;
