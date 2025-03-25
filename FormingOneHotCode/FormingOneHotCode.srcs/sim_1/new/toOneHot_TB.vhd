----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2024 01:57:01 AM
-- Design Name: 
-- Module Name: toOneHot_TB - Behavioral
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

entity toOneHot_TB is
--  Port ( );
end toOneHot_TB;

architecture Behavioral of toOneHot_TB is

component toOneHot is
 Port (clock,reset: in STD_LOGIC;
 input_integer: in integer;
 onehot_code_out: out std_logic_vector(15 downto 0));
end component toOneHot;
signal clock_TB, reset_TB: STD_LOGIC:= '0';
signal input_integer_TB:integer:= 0;
signal onehot_code_out_TB:std_logic_vector(15 downto 0);
begin
UUT: toOneHot port map(
clock=>clock_TB, reset=>reset_TB, input_integer=>input_integer_TB,
onehot_code_out=>onehot_code_out_TB);
process
begin
clock_TB<= '0';
wait for 10 ns;
clock_TB<= '1';
wait for 10 ns;
end process;
process
begin
reset_TB<= '1';
wait for 10 ns;
reset_TB<= '0';
input_integer_TB<=0;
wait for 20 ns;
input_integer_TB<=1;
wait for 20 ns;
input_integer_TB<=2;
wait for 20 ns;
input_integer_TB<=3;
wait for 20 ns;
input_integer_TB<=4;
wait for 20 ns;
input_integer_TB<=5;
wait for 20 ns;
input_integer_TB<=6;
wait for 20 ns;
input_integer_TB<=7;
wait for 20 ns;
input_integer_TB<=8;
wait for 20 ns;
input_integer_TB<=9;
wait for 20 ns;
input_integer_TB<=10;
wait for 20 ns;
input_integer_TB<=11;
wait for 20 ns;
input_integer_TB<=12;
wait for 20 ns;
input_integer_TB<=13;
wait for 20 ns;
input_integer_TB<=14;
wait for 20 ns;
input_integer_TB<=15;
wait for 20 ns;
wait;
end process;
end Behavioral;