----------------------------------------------------------------------------------
-- Company: California State University Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 12:43:12 PM
-- Design Name: Half Adder VHDL Code
-- Module Name: HA - Behavioral
-- Project Name: Computer Project 2
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
entity HA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end HA;
architecture Behavioral of HA is
begin
sum <= A xor B;
Cout <= A and B;

end Behavioral;