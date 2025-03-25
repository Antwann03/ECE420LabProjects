----------------------------------------------------------------------------------
-- Company: California State University, Northridege
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 01/23/2025 06:14:37 PM
-- Design Name: Antonio Anzora Jr
-- Module Name: Counters - Behavioral
-- Project Name: Pre Course - Orientation
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counters is
  Port (
  reset, clock, up_down: in STD_LOGIC;
  count: out std_logic_vector(3 downto 0));
end Counters;

architecture Behavioral of Counters is
signal count_sig: std_logic_vector(3 downto 0);
begin
process(reset, clock)
begin
if (reset = '1') then 
count_sig <= "0000";
elsif (clock'event and clock = '0') then
--rising_edge(clock)
if (up_down = '1') then
count_sig <= count_sig - 1;
else count_sig <= count_sig + 1;

end if;
end if;
end process;
count<= count_sig;
end Behavioral;