----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2024 03:28:20 PM
-- Design Name: 
-- Module Name: MUX - Behavioral
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

entity MUX is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           F : out STD_LOGIC);
end MUX;

architecture Behavioral of MUX is
signal x: std_logic_vector(1 downto 0);
begin
x <= S1 & S0;
with x select 
F <=D0 when "00",
    D1 when "01",
    D2 when "10",
    D3 when "11", 
    '0' when others;
end Behavioral;
