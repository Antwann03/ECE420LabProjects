----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2024 05:43:25 PM
-- Design Name: 
-- Module Name: Function_Formula - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Function_Formula is
generic (Bit:natural:= 8);
  Port (x,y: in std_logic_vector(Bit -1 downto 0);
        F:out std_logic_vector(Bit-1 downto 0) );
end Function_Formula;

architecture Behavioral of Function_Formula is
signal sel:STD_LOGIC;
signal a,b:std_logic_vector(Bit-1 downto 0);
begin
a<=std_logic_vector(unsigned(x)+unsigned(y)/2);
b<=std_logic_vector(unsigned(y)-unsigned(x) /8);
sel<= '1' when a<= b else '0';
process(a,b,sel)
begin
if sel='1' then 
F<=a;
else
F<=b;
end if;
end process;
end Behavioral;
