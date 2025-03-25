----------------------------------------------------------------------------------
-- Company: California State Universtiy, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 02/08/2025 12:08:44 PM
-- Design Name: 
-- Module Name: HAdder - Behavioral
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

entity HAdder is
  Port (X: in std_logic;
        Y: in std_logic;
        Sum: out std_logic;
        Carry_Out: out std_logic );
end HAdder;

architecture Behavioral of HAdder is

component simple_xor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component simple_xor;

component simple_and is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end component simple_and;
begin

xor_input: simple_xor port map(
A => X, B => Y, C => Sum);

and_input: simple_and port map(
A => X, B => Y, C => Carry_Out);
end Behavioral;