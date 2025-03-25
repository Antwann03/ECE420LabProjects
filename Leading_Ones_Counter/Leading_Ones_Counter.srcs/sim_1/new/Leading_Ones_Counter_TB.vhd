----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/20/2024 03:23:46 PM
-- Design Name: 
-- Module Name: Leading_Ones_Counter_TB - Behavioral
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
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Leading_Ones_Counter_TB is
--  Port ( );
end Leading_Ones_Counter_TB;

architecture Behavioral of Leading_Ones_Counter_TB is

component Leading_Ones_Counter is
generic ( BITS_IN: integer := 8);
    Port ( x : in std_logic_vector(BITS_IN - 1 downto 0);
           y : out std_logic_vector(integer(ceil(log2(real(BITS_IN + 1)))) - 1 downto 0);
          ssd : out std_logic_vector(7 downto 0));
end component Leading_Ones_Counter;
signal x_TB: std_logic_vector(7 downto 0);
signal y_TB: std_logic_vector(3 downto 0);
signal ssd_TB: std_logic_vector(7 downto 0);
begin
UUT: Leading_Ones_Counter
generic map( BITS_IN => 8)
port map(
x => x_TB,
y => y_TB,
ssd =>ssd_TB);
process
begin 
--will use inputs thats based of Fig 11.6
x_TB <= "01110011";
wait for 80 ns;

x_TB <= "10100000";
wait for 80 ns;

x_TB <= "11111101";
wait for 80 ns;

x_TB <= "11111111";
wait for 80 ns;

wait;
end process;
end Behavioral;