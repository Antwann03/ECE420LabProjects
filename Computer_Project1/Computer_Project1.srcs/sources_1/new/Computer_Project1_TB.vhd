----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/10/2024 07:28:51 PM
-- Design Name: Computer Project1
-- Module Name: Computer_Project1_TB - Behavioral
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
entity Computer_Project1_TB is
end Computer_Project1_TB;

architecture Behavioral of Computer_Project1_TB is
component Computer_Project1 is
    Port ( A3 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A0 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S3 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component Computer_Project1;
--9 inputs TB
signal A3_TB: std_logic;
signal A2_TB: std_logic;
signal A1_TB: std_logic;
signal A0_TB: std_logic;
signal B3_TB: std_logic;
signal B2_TB: std_logic;
signal B1_TB: std_logic;
signal B0_TB: std_logic;
signal Cin_TB: std_logic;
--5 outputs TB
signal S3_TB: std_logic;
signal S2_TB: std_logic;
signal S1_TB: std_logic;
signal S0_TB: std_logic;
signal Cout_TB: std_logic;

begin 
UUT : Computer_Project1 port map(
A3 => A3_TB,A2 => A2_TB,
A1 => A1_TB,A0 => A0_TB,
B3 => B3_TB,B2 => B2_TB,
B1 => B1_TB,B0 => B0_TB,
Cin => Cin_TB,
--5 outputs of TB
S3 => S3_TB,S2 => S2_TB,
S1 => S1_TB,S0 => S0_TB,
Cout => Cout_TB);

process
begin 
-- A = 0000; B = 0000, Cin = 0
A3_TB <= '0'; A2_TB <= '0';
A1_TB <= '0'; A0_TB <= '0';
B3_TB <= '0'; B2_TB <= '0';
B1_TB <= '0'; B0_TB <= '0';
Cin_TB <= '0';
wait for 10ns;
--A = 1011; B = 1100, Cin = 0
A3_TB <= '1'; A2_TB <= '0';
A1_TB <= '1'; A0_TB <= '1';
B3_TB <= '1'; B2_TB <= '1';
B1_TB <= '0'; B0_TB <= '0';
Cin_TB <= '0';
wait for 10ns;
--A = 0111; B = 1011; Cin = 1
A3_TB <= '0'; A2_TB <= '1';
A1_TB <= '1'; A0_TB <= '1';
B3_TB <= '1'; B2_TB <= '0';
B1_TB <= '1'; B0_TB <= '1';
Cin_TB <= '1';
wait for 10ns;
--A = 0001; B = 0101;Cin = 1
A3_TB <= '0'; A2_TB <= '0';
A1_TB <= '0'; A0_TB <= '1';
B3_TB <= '0'; B2_TB <= '1';
B1_TB <= '0'; B0_TB <= '1';
Cin_TB <= '1';
wait for 10ns;
wait;

end process;
end Behavioral;
