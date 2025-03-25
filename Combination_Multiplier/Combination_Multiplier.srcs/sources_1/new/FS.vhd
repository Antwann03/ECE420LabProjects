----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 06:04:01 PM
-- Design Name: Full Subtractorr VHDL Code
-- Module Name: FS - Behavioral
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

entity FS is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Borrow_in : in STD_LOGIC;
           Borrow : out STD_LOGIC;
           Difference : out STD_LOGIC);
end FS;
architecture Behavioral of FS is
begin
Borrow <= ((not A) and B) or ((A xor (not b)) and Borrow_in);
Difference <= (A xor B) xor Borrow_in;
end Behavioral;
