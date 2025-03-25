----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/11/2024 06:41:50 PM
-- Design Name: Combination Barrel Shift and Rotator
-- Module Name: MUX10 - Behavioral
-- Project Name: Computer Project 3
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

entity MUX10 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end MUX10;
architecture Behavioral of MUX10 is

begin
--Rotate Right by 4 bits
y<= (a(3 downto 0) & a(15 downto 4)) when selecting = '1' else a;
end Behavioral;