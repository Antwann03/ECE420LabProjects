----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 02/08/2025 12:31:58 PM
-- Design Name: 
-- Module Name: HAdder_TB - Behavioral
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

entity HAdder_TB is
--  Port ( );
end HAdder_TB;

architecture Behavioral of HAdder_TB is
component HAdder is
  Port (X: in std_logic;
        Y: in std_logic;
        Sum: out std_logic;
        Carry_Out: out std_logic );
end component HAdder; 
-----------------------------------------
---------------SIGNALS-------------------
-----------------------------------------
signal x_TB, y_TB, Sum_TB, Carry_Out_TB: std_logic;
begin

UUT: HAdder port map(
X => X_TB, Y => Y_TB, Sum => Sum_TB, Carry_Out => Carry_Out_TB);
-----------------------------------------
---------------SIMULATION-------------------
-----------------------------------------
Simualtion_procces: process
begin
X_TB <= '0'; Y_TB <= '0'; wait for 10 ns;--0
X_TB <= '0'; Y_TB <= '1'; wait for 10 ns;--1
X_TB <= '1'; Y_TB <= '0'; wait for 10 ns;--1
X_TB <= '1'; Y_TB <= '1'; wait for 10 ns;--0
wait;
end process;

end Behavioral;
