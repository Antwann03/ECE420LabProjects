----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/16/2024 06:01:42 PM
-- Design Name: full_adder_subtractor
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
--           K : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;
architecture Behavioral of full_adder is
begin
Cout <= (A and B) or (A and Cin) or (B and Cin);
Sum <= A xor B xor Cin;
end Behavioral;
