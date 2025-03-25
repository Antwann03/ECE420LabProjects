----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/16/2024 07:34:48 PM
-- Design Name: Fuller_Adder_Subtractor
-- Module Name: full_adder_subtractor_TB - Behavioral
-- Project Name: Computer_Project1
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

entity full_adder_subtractor_TB is
--  Port ( );
end full_adder_subtractor_TB;

architecture Behavioral of full_adder_subtractor_TB is

component full_adder_subtractor is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           K : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out std_logic_vector(3 downto 0);
           Cout : out STD_LOGIC);
end component full_adder_subtractor;

signal A_TB:std_logic_vector(3 downto 0);
signal B_TB:std_logic_vector(3 downto 0);
signal Sum_TB: std_logic_vector(3 downto 0);
signal K_TB, Cin_TB, Cout_TB: STD_LOGIC;

begin
UUT:full_adder_subtractor
port map(
A => A_TB, B => B_TB, K => K_TB,
Sum => Sum_TB,Cin => Cin_TB, Cout => Cout_TB);

process 
begin 
-- 3 + 6; K =0
A_TB <= "0011";
B_TB <= "0110";
K_TB <= '0';
Cin_TB <= '0';
wait for 10 ns;
--7 - 3; K =1
A_TB <= "0111";
B_TB <= "0011";
K_TB <= '1';
Cin_TB <= '0';
wait for 10 ns;
--4+4; K = 0
A_TB <= "0100";
B_TB <= "0100";
K_TB <= '0';
Cin_TB <= '0';
wait for 10 ns;
--13+1; K=0
A_TB <= "1101";
B_TB <= "0001";
K_TB <= '0';
Cin_TB <= '0';
wait for 10 ns;
wait;
end process;
end Behavioral;
