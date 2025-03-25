----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/11/2024 06:53:16 PM
-- Design Name: Combination Barrel Shift and Rotator
-- Module Name: Rotating16Bits - Behavioral
-- Project Name:Computer Project 3 
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

entity Rotating16Bits is
    Port ( a : in std_logic_vector(15 downto 0);
           amt : in std_logic_vector(3 downto 0);
           yout : out std_logic_vector(15 downto 0));
end Rotating16Bits;
architecture Behavioral of Rotating16Bits is

signal a0, y0, y1, y2, y3:std_logic_vector(15 downto 0);
signal selecting0, selecting1, selecting2, selecting3: std_logic;

component MUX00 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end component MUX00;
component MUX01 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end component MUX01;
component MUX10 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end component MUX10;
component MUX11 is
    Port ( a : in std_logic_vector(15 downto 0);
           selecting : in STD_LOGIC;
           y : out std_logic_vector(15 downto 0));
end component MUX11;
begin
a0<=a;
selecting0<= amt(0);
selecting1<= amt(1);
selecting2<= amt(2);
selecting3<= amt(3);

ROR0: MUX00 port map(
a=>a0, selecting=> selecting0, y=> y0);
ROR1: MUX01 port map(
a=>y0, selecting=> selecting1, y=> y1);
ROR2: MUX10 port map(
a=>y1, selecting=> selecting2, y=> y2);
ROR3: MUX11 port map(
a=>y2, selecting=> selecting3, y=> y3);
yout<= y3;
end Behavioral;