----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2024 07:36:10 PM
-- Design Name: 
-- Module Name: two_multipliers_TB - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity two_multipliers_TB is
--  Port ( );
end two_multipliers_TB;

architecture Behavioral of two_multipliers_TB is
component two_multipliers is
generic (WIDTH: integer);
    Port ( a : in std_logic_vector(WIDTH - 1 downto 0);
           b : in std_logic_vector(WIDTH - 1 downto 0);
           prod_uns : out std_logic_vector(2*WIDTH - 1 downto 0);
           prod_sig : out std_logic_vector(2*WIDTH - 1 downto 0));
end component two_multipliers;
signal a_TB:std_logic_vector(3 downto 0);
signal b_TB:std_logic_vector(3 downto 0);
signal prod_uns_TB:std_logic_vector(7 downto 0);
signal prod_sig_TB:std_logic_vector(7 downto 0);
begin
UUT: two_multipliers
generic map(WIDTH => 4)
port map(
a => a_TB,
b => b_TB,
prod_uns => prod_uns_TB,
prod_sig => prod_sig_TB);
process
begin
a_TB <= "0111"; --7
b_TB <= "1000"; --8
wait for 80 ns;

a_TB <= "0111"; --7
b_TB <= "0110"; --6
wait for 80 ns;

a_TB <= "1000"; --8
b_TB <= "1000"; --8
wait for 80 ns;

a_TB <= "1000"; --8
b_TB <= "1111"; -- 15 or -1
wait for 80 ns;

a_TB <= "1000"; --8
b_TB <= "0111";--7
wait for 80 ns;

wait;
end process;
end Behavioral;
