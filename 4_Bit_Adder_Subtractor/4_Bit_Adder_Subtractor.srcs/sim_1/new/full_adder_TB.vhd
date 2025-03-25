----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/16/2024 06:49:04 PM
-- Design Name: full_adder_subtractor
-- Module Name: full_adder_TB - Behavioral
-- Project Name: Computer_Project_1
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

entity full_adder_TB is
--  Port ( );
end full_adder_TB;

architecture Behavioral of full_adder_TB is
component full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
--           K : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component full_adder;
signal A_TB: std_logic;
signal B_TB: std_logic;
signal Cin_TB: std_logic;
signal Sum_TB: std_logic;
signal Cout_TB: std_logic;

begin
UUT:full_adder port map(
A => A_TB, B => B_TB, Cin => Cin_TB,
Sum => Sum_TB,Cout => Cout_TB);

process
begin
--000
A_TB <='0';
B_TB <='0';
Cin_TB <='0';
wait for 10ns; 
--001
A_TB <='0';
B_TB <='0';
Cin_TB <='1';
wait for 10ns;
--010
A_TB <='0';
B_TB <='1';
Cin_TB <='0';
wait for 10ns;
--011
A_TB <='0';
B_TB <='1';
Cin_TB <='1';
wait for 10ns;
--100
A_TB <='1';
B_TB <='0';
Cin_TB <='0';
wait for 10ns;
--101
A_TB <='1';
B_TB <='0';
Cin_TB <='1';
wait for 10ns;
--110
A_TB <='1';
B_TB <='1';
Cin_TB <='0';
wait for 10ns;
--111
A_TB <='1';
B_TB <='1';
Cin_TB <='1';
wait;
end process;
end Behavioral;