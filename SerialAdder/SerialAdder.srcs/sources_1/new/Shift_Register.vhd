----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/23/2024 09:39:29 PM
-- Design Name: 
-- Module Name: Shift_Register - Behavioral
-- Project Name: 
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

entity Shift_Register is
generic (WIDTH: integer := 16);
    Port ( D, clock, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end Shift_Register;

architecture Behavioral of Shift_Register is
signal temp_Signal: std_logic_vector(WIDTH - 1 downto 0);
begin
process(clock, reset)
begin
if (reset = '1') then
temp_Signal <= (others => '0');
elsif rising_edge(clock) then
for i in 0 to WIDTH-2 loop
temp_Signal (i+1) <= temp_Signal(i);
end loop;
temp_Signal(0) <= D;
end if;
end process;
Q<= temp_Signal(WIDTH-1);
end Behavioral;