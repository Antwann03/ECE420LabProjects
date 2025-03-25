----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2025 06:46:24 PM
-- Design Name: 
-- Module Name: FAdder_TB - Behavioral
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

entity FAdder_TB is
--  Port ( );
end FAdder_TB;

architecture Behavioral of FAdder_TB is

component FAdder is
  Port (X,Y,Carry_In : in std_logic;
        Sum, Carry_Out: out std_logic);
end component FAdder;
-----------------------------------------
---------------SIGNALS-------------------
-----------------------------------------
signal X_TB, Y_TB, Carry_In_TB, Sum_TB, Carry_Out_TB: std_logic;
begin

UUT: FAdder port map(
X => X_TB, Y => Y_TB, Carry_In => Carry_In_TB, Sum => Sum_TB, Carry_Out => Carry_Out_TB);
-----------------------------------------
---------------SIMULATION----------------
-----------------------------------------
Simu_process: process
begin
X_TB <= '0'; Y_TB <= '0'; Carry_In_TB <= '0'; wait for 10 ns; -- 0
X_TB <= '0'; Y_TB <= '0'; Carry_In_TB <= '1'; wait for 10 ns; -- 1
X_TB <= '0'; Y_TB <= '1'; Carry_In_TB <= '0'; wait for 10 ns; -- 2
X_TB <= '0'; Y_TB <= '1'; Carry_In_TB <= '1'; wait for 10 ns; --3
X_TB <= '1'; Y_TB <= '0'; Carry_In_TB <= '0'; wait for 10 ns; --4
X_TB <= '1'; Y_TB <= '0'; Carry_In_TB <= '1'; wait for 10 ns; --5
X_TB <= '1'; Y_TB <= '1'; Carry_In_TB <= '0'; wait for 10 ns; --6
X_TB <= '1'; Y_TB <= '1'; Carry_In_TB <= '1'; wait for 10 ns; -- 7
wait;
end process;

end Behavioral;
