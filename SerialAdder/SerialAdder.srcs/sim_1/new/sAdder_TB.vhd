----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/28/2024 03:39:12 PM
-- Design Name: serial Adder
-- Module Name: sAdder_TB - Behavioral
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

entity sAdder_TB is
--  Port ( );
end sAdder_TB;

architecture Behavioral of sAdder_TB is

component sAdder is
    Port ( x, y, clock, reset, START: in STD_LOGIC;
           s, END1: out STD_LOGIC);
end component sAdder;
signal x_TB, y_TB, clock_TB, reset_TB, START_TB: STD_LOGIC;
signal s_TB, END1: STD_LOGIC;
constant cp: time := 10 ns;
begin

UUT1: sAdder port map (
x=> X_TB, y=> y_TB, clock=> clock_TB,
reset=> reset_TB, s=> s_TB, END1=> END1, START=> START_TB);
process
begin
clock_TB <= '1';
wait for cp/2;
clock_TB <= '0';
wait for cp/2;
end process;

process
begin
reset_TB <= '1';
wait for cp;
reset_TB <='0';
wait;
end process;
process begin
--0+0
x_TB<= '0';
y_TB<= '0';
wait for cp;
--0+1
x_TB<= '0';
y_TB<= '1';
wait for cp;
--1+1
x_TB<= '1';
y_TB<= '1';
wait for cp;
--1+1
x_TB<= '0';
y_TB<= '0';
wait for cp;
--0+1
x_TB<= '1';
y_TB<= '1';
wait for cp;
x_TB<= '0';
y_TB<= '1';
wait for cp;
x_TB<= '1';
y_TB<= '0';
wait for cp;
x_TB<= '1';
y_TB<= '0';
wait for cp;

x_TB<= '1';
y_TB<= '1';
wait for cp;
x_TB<= '1';
y_TB<= '1';
wait for cp;
x_TB<= '0';
y_TB<= '1';
wait for cp;
x_TB<= '1';
y_TB<= '0';
wait for cp;

x_TB<= '0';
y_TB<= '0';
wait for cp;
x_TB<= '0';
y_TB<= '0';
wait for cp;
x_TB<= '1';
y_TB<= '1';
wait for cp;
x_TB<= '0';
y_TB<= '0';
wait for cp;
x_TB<= '1';
y_TB<= '1';
wait for cp;
x_TB<= '0';
y_TB<= '0';
wait;
end process;
end Behavioral;