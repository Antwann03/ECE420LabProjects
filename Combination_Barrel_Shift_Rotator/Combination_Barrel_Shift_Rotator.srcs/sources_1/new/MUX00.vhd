----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/11/2024 05:40:22 PM
-- Design Name: Combination Barrel Shift & Rotator
-- Module Name: MUX00 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX00 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end MUX00;
architecture Behavioral of MUX00 is
begin
--Rotate Right by 1 bit 
y <= (a(0) & a(15 downto 1)) when selecting = '1' else a;

end Behavioral;