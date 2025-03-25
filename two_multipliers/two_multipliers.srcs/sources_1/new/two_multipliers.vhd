----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/20/2024 07:27:30 PM
-- Design Name: 
-- Module Name: two_multipliers - Behavioral
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

entity two_multipliers is
generic (WIDTH: integer:= 4);
    Port ( a : in std_logic_vector(WIDTH - 1 downto 0);
           b : in std_logic_vector(WIDTH - 1 downto 0);
           prod_uns : out std_logic_vector(2*WIDTH - 1 downto 0);
           prod_sig : out std_logic_vector(2*WIDTH - 1 downto 0));
end two_multipliers;

architecture Behavioral of two_multipliers is
signal a_signed: signed(WIDTH - 1 downto 0);
signal b_signed: signed(WIDTH - 1 downto 0);
begin
a_signed <=signed(a);
b_signed <=signed(b);
--unsigned multiplier 
prod_uns <= std_logic_vector(unsigned(a) * unsigned(b));
--signed multiplier
prod_sig <= std_logic_vector(signed(a) * signed(b));

end Behavioral;
