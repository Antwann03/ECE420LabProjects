----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/20/2024 02:30:40 PM
-- Design Name: 
-- Module Name: Leading_Ones_Counter - Behavioral
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
use IEEE.MATH_REAL.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Leading_Ones_Counter is
generic ( BITS_IN: integer := 8);
    Port ( x : in std_logic_vector(BITS_IN - 1 downto 0);
           y : out std_logic_vector(integer(ceil(log2(real(BITS_IN + 1)))) - 1 downto 0);
           ssd : out std_logic_vector(7 downto 0));
end Leading_Ones_Counter;

architecture Behavioral of Leading_Ones_Counter is 
constant BITS_OUT: integer := integer(ceil(log2(real(BITS_IN + 1))));
signal count: integer := 0;
begin
process(x)
variable temp_count: integer := 0;
begin
temp_count := 0;
for i in 0 to BITS_IN - 1 loop
if x(BITS_IN - 1 - i) = '1' then
temp_count := temp_count + 1;
else
exit;
end if;
end loop;
--output
y <= std_logic_vector(to_unsigned(temp_count, BITS_OUT));
--conversion applied
ssd <= std_logic_vector(to_unsigned(temp_count, 8));
end process;
end Behavioral;