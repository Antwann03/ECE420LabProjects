----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2024 05:55:14 PM
-- Design Name: 
-- Module Name: Function_Formula_TB - Behavioral
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

entity Function_Formula_TB is
--  Port ( );
end Function_Formula_TB;

architecture Behavioral of Function_Formula_TB is

component Function_Formula is
generic (Bit:natural:= 8);
  Port (x,y: in std_logic_vector(Bit -1 downto 0);
        F:out std_logic_vector(Bit-1 downto 0) );
end component Function_Formula;
signal x_TB, y_TB,F_TB:std_logic_vector(7 downto 0); 
begin
UUT: Function_Formula port map(
x=>x_TB, y=>y_TB,F=>F_TB);
process
begin
x_TB<="10000001";
y_TB<="00000000";
wait for 20 ns;

x_TB<="10010001";
y_TB<="10010001";
wait for 20 ns;

x_TB<="10000001";
y_TB<="10000001";
wait for 20 ns;
wait; 
end process;
end Behavioral;