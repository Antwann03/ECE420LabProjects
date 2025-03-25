----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 01/23/2025 06:33:02 PM
-- Design Name: Antonio Anzora Jr
-- Module Name: Counters_TB - Behavioral
-- Project Name: Pre-Course Orientation
-- Target Devices: Z - 700
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

entity Counters_TB is
--  Port ( );
end Counters_TB;

architecture Behavioral of Counters_TB is
component Counters is
  Port (
  reset, clock, up_down: in STD_LOGIC;
  count: out std_logic_vector(3 downto 0));
end component Counters;
signal clock_TB, reset_TB, up_down_TB: STD_LOGIC;
signal count_TB: std_logic_vector(3 downto 0);
begin
UUT: Counters port map(
clock=>clock_TB, reset=>reset_TB, up_down=>up_down_TB,
count=>count_TB);

clock_proc: process
begin 
clock_TB<= '0';
wait for 10 ns;
clock_TB <= '1';
wait for 10 ns;
end process;

stim_proc: process
begin
reset_TB <= '1';
wait for 20 ns;
reset_TB <= '0';
wait for 20 ns;
up_down_TB <= '1';
wait for 40 ns;
up_down_TB <= '0';
wait for 100 ns;
up_down_TB <= '1';
wait;
end process;
end Behavioral;
