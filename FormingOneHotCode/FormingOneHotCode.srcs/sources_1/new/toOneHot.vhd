----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2024 01:31:38 AM
-- Design Name: 
-- Module Name: toOneHot - Behavioral
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

entity toOneHot is
 Port (clock,reset: in STD_LOGIC;
 input_integer: in integer;
 onehot_code_out: out std_logic_vector(15 downto 0));
end toOneHot;
architecture Behavioral of toOneHot is
function integer_to_onehot(input_integer:integer)
return std_logic_vector is
variable onehot:std_logic_vector(15 downto 0);
begin
onehot:= (others=>'0');
if(input_integer >= 0 and input_integer <= 15) then
onehot(input_integer):='1';
end if;
return onehot;
end function integer_to_onehot;

begin
process(clock, reset)
begin
if reset = '1' then 
onehot_code_out<= "0000000000000000";
elsif rising_edge(clock) then
onehot_code_out <= integer_to_onehot(input_integer);
end if;
end process;
end Behavioral;