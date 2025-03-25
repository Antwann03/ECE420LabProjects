----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 05:32:15 PM
-- Design Name: Half Subtractor VHDL Code
-- Module Name: HS - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HS is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Difference : out STD_LOGIC;
           Borrow : out STD_LOGIC);
end HS;
architecture Behavioral of HS is
begin
Difference <= A xor B;
Borrow <= (not A) and B;
end Behavioral;