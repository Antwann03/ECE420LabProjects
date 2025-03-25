----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 01:47:38 AM
-- Design Name: 
-- Module Name: Digital_Lock_FSM_TB - Behavioral
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

entity Digital_Lock_FSM_TB is
--  Port ( );
end Digital_Lock_FSM_TB;

architecture Behavioral of Digital_Lock_FSM_TB is
component Digital_Lock_FSM is
  Port ( reset,clock, newV:in STD_LOGIC;
  value: in std_logic_vector(3 downto 0);
  dOpen: out STD_LOGIC);
end component Digital_Lock_FSM;
signal reset_TB, clock_TB, newV_TB,dOpen_TB: STD_LOGIC;
signal value_TB: std_logic_vector(3 downto 0);
begin
UUT: Digital_Lock_FSM port map(
reset=>reset_TB, clock=>clock_TB, newV=>newV_TB,
dOpen=>dOpen_TB, value=>value_TB);

process
begin
clock_TB <= '1';
wait for 10 ns;
clock_TB <= '0';
wait for 10 ns;
end process;

process
begin
reset_TB<= '1';
wait for 20 ns;
reset_TB<= '0';
wait for 10 ns;
newV_TB <= '1'; 
value_TB <= "1001"; 
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "0110"; 
wait for 20 ns;
       
newV_TB <= '1'; 
value_TB <= "0011"; 
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "1100"; --
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "1001"; 
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "0110"; 
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "0011"; 
wait for 20 ns;

newV_TB <= '1'; 
value_TB <= "1010"; 
wait for 20 ns;

reset_TB <= '1'; 
wait for 20 ns;
reset_TB<= '0';

wait;
end process;

end Behavioral;