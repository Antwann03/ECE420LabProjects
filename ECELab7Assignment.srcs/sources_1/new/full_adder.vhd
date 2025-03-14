----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2025 10:32:40 AM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity full_adder is
port (x : in std_logic;
y : in std_logic;
carry_in : in std_logic;
sum : out std_logic;
carry_out : out std_logic);
end full_adder;
architecture Behavioral of full_adder is
component half_adder is
port (x : in std_logic;
y : in std_logic;
sum : out std_logic;
carry_out : out std_logic);
end component;
signal ha1_sum : std_logic;
signal ha1_carry : std_logic;
signal ha2_carry : std_logic;
begin
ha1 : half_adder port map(
x => x,
y => y,
sum => ha1_sum,
carry_out => ha1_carry
);
ha2 : half_adder port map(
x => ha1_sum,
y => carry_in,
sum => sum,
carry_out => ha2_carry
);
carry_out <= ha1_carry or ha2_carry;
end Behavioral;

