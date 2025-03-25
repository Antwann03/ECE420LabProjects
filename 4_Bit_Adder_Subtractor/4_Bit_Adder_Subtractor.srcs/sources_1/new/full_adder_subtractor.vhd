----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/16/2024 07:17:46 PM
-- Design Name: Computer_Project1
-- Module Name: full_adder_subtractor - Behavioral
-- Project Name: Full_Adder_Subtractor
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

entity full_adder_subtractor is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           K : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out std_logic_vector(3 downto 0);
           Cout : out STD_LOGIC);
end full_adder_subtractor;

architecture Behavioral of full_adder_subtractor is
component full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
--           K : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component full_adder;

signal B_temp : std_logic_vector(3 downto 0);
signal Cout_temp : std_logic_vector(2 downto 0);
begin
B_temp <= B xor (K & K & K & K);

FA0: full_adder port map(
A(0), B_temp(0),Cin, Sum(0), Cout_temp(0));

FA1:full_adder port map(
A(1), B_temp(1),Cout_temp(0), Sum(1), Cout_temp(1));

FA2: full_adder port map(
A(2), B_temp(2),Cout_temp(1), Sum(2), Cout_temp(2));

FA3: full_adder port map(
A(3), B_temp(3),Cout_temp(2), Sum(3), Cout);
end Behavioral;