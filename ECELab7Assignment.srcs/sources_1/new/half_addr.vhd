----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2025 10:29:37 AM
-- Design Name: 
-- Module Name: half_addr - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder is
  Port (x: in std_logic;
        y: in std_logic;
        sum: out std_logic;
        carry_out: out std_logic);
end half_adder;

architecture Behavioral of half_adder is
component simple_xor is 
    port (a: in std_logic;
          b: in std_logic;
          c: out std_logic);
end component;
component simple_and is 
    port (a: in std_logic;
          b: in std_logic;
          c: out std_logic);
end component;
begin

xor_i: simple_xor port map(
a => x, b => y, c=> sum);

and_i: simple_and port map(
a => x, b => y, c => carry_out);
end Behavioral;
