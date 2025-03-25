----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 04:48:46 PM
-- Design Name: Unsigned 4x4 Multiplier TB VHDL Code
-- Module Name: Unsigned_4x4_Multiplier_TB - Behavioral
-- Project Name: Computer Project 2
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

entity Unsigned_4x4_Multiplier_TB is
--  Port ( );
end Unsigned_4x4_Multiplier_TB;

architecture Behavioral of Unsigned_4x4_Multiplier_TB is
signal X_TB, Y_TB:std_logic_vector(3 downto 0);
signal Z_TB: std_logic_vector(7 downto 0);
component Unsigned_4x4_Multiplier is
    Port ( X : in std_logic_vector(3 downto 0);
           Y : in std_logic_vector(3 downto 0);
           Z : out std_logic_vector(7 downto 0));
end component Unsigned_4x4_Multiplier;
begin
UUT: Unsigned_4x4_Multiplier port map(
X=> X_TB, Y=> Y_TB, Z=> Z_TB);
process
begin
for X in 0 to 15 loop
for Y in 0 to 15 loop
X_TB <= std_logic_vector(to_unsigned(X, 4));
Y_TB <= std_logic_vector(to_unsigned(Y, 4));
wait for 20 ns;

end loop;
end loop;
wait;
end process;
end Behavioral;