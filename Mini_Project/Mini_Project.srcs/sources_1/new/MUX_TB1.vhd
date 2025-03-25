----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2024 04:15:37 PM
-- Design Name: 
-- Module Name: MUX_TB1 - Behavioral
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

entity MUX_TB1 is
end MUX_TB1;

architecture Behavioral of MUX_TB1 is
component MUX is

    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           F : out STD_LOGIC);
end component MUX;
signal D0_TB1: std_logic;
signal D1_TB1: std_logic;
signal D2_TB1: std_logic;
signal D3_TB1: std_logic;
signal S1_TB1: std_logic;
signal S0_TB1: std_logic;
signal F_TB1: std_logic;

begin
UUT: MUX port map
(D0 => D0_TB1,
 D1 => D1_TB1,
 D2 => D2_TB1,
 D3 => D3_TB1,
 S1 => S1_TB1,
 S0 => S0_TB1,
 F => F_TB1);

process
begin
D0_TB1 <= '1';
D1_TB1 <= '0';
D2_TB1 <= '0';
D3_TB1 <= '0';
S1_TB1 <= '0';
S0_TB1 <= '0';
wait for 10ns;

D0_TB1 <= '0';
D1_TB1 <= '1';
D2_TB1 <= '0';
D3_TB1 <= '0';
S1_TB1 <= '0';
S0_TB1 <= '1';
wait for 10ns;

D0_TB1 <= '0';
D1_TB1 <= '0';
D2_TB1 <= '1';
D3_TB1 <= '0';
S1_TB1 <= '1';
S0_TB1 <= '0';
wait for 10ns;

D0_TB1 <= '0';
D1_TB1 <= '0';
D2_TB1 <= '0';
D3_TB1 <= '1';
S1_TB1 <= '1';
S0_TB1 <= '1';
wait;
end process;
end Behavioral;
