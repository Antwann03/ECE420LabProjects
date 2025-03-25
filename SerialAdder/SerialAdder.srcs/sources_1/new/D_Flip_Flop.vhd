----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/23/2024 09:34:35 PM
-- Design Name: Serial Adder 
-- Module Name: D_Flip_Flop - Behavioral
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

entity D_Flip_Flop is
Port (
      D, clock, reset: in STD_LOGIC;
      Q: out STD_LOGIC);
end D_Flip_Flop;

architecture Behavioral of D_Flip_Flop is
begin
process(clock, reset)
begin
if reset = '1' then 
Q <= '0';
elsif rising_edge(clock) then
Q <= D;
end if;
end process;
end Behavioral;