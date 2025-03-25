----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/07/2024 01:29:20 AM
-- Design Name: 
-- Module Name: Digital_Lock_FSM - Behavioral
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

entity Digital_Lock_FSM is
  Port ( reset,clock, newV:in STD_LOGIC;
  value: in std_logic_vector(3 downto 0);
  dOpen: out std_logic);
end Digital_Lock_FSM;

architecture Behavioral of Digital_Lock_FSM is
type stateType is (S0, S1, S2, S3, ERR);
signal CurrentState, NextState: stateType;
constant MUXFIRST: std_logic_vector( 3 downto 0):= "1001";
constant MUXSECOND: std_logic_vector( 3 downto 0) := "0110";
constant MUXTHIRD : std_logic_vector( 3 downto 0) := "0011";
begin
process(newV, CurrentState)
begin
case CurrentState is 
when S0=> 
if newV = '1' and value = MUXFIRST then
NextState <= S1;
elsif newV = '1' and value /= MUXFIRST then
NextState <= ERR;
else
NextState <= S0;
end if;

when S1=>
if newV = '1' and value = MUXSECOND then
NextState <= S2;
elsif newV = '1' and value /= MUXSECOND then
NextState <= ERR;
else
NextState <= S1;
end if;

when S2=>
if newV = '1' and value = MUXTHIRD then
NextState <= S3;
elsif newV = '1' and value /= MUXTHIRD then
NextState <= ERR;
else
NextState <= S2;
end if;

when S3=> 
NextState <= S3;
when ERR =>
NextState <= ERR;
end case;
end process;

process(clock, reset)
begin
if rising_edge(clock) then
CurrentState <= NextState;
elsif reset = '1' then 
CurrentState <= S0;
else
CurrentState <= CurrentState;
end if;
end process;

with CurrentState select
dOpen <= '1' when S3,
'0' when others;
end Behavioral;
