----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/23/2024 09:29:51 PM
-- Design Name: Serial Adder
-- Module Name: sAdder - Behavioral
-- Project Name: Computer Project 4
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

entity sAdder is
    Port ( x, y, clock, reset, START : in STD_LOGIC;
           s, END1 : out STD_LOGIC);
end sAdder;
architecture Behavioral of sAdder is

component Shift_Register is
    Port ( D, clock, reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component Shift_Register;
component full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component full_adder;
component D_Flip_Flop is
Port (
      D, clock, reset: in STD_LOGIC;
      Q: out STD_LOGIC);
end component D_Flip_Flop;
signal Xi, Yi, Cin, Si, Cout: STD_LOGIC;
signal Enable, clockEnable: STD_LOGIC;
signal addingBitCount:unsigned(5 downto 0);

begin
clockEnable <= Enable and clock;
CoutDFF: D_Flip_Flop port map
(D=> Cout, clock => clockEnable, reset => reset, Q=>Cin);
Adder: full_adder port map 
(A=>Xi, B=>Yi, Cin=>Cin,Sum=>Si, Cout=>Cout);

XShift: Shift_Register port map
(D=> x, clock=> clockEnable, reset=> reset, Q=> Xi);
YShift: Shift_Register port map
(D => y, clock=> clockEnable, reset=> reset, Q=> Yi);
Shift: Shift_Register port map
(D=> Si, clock=>clockEnable, reset=> reset, Q=> s);

process(clock)
begin
if start = '1' then addingBitCount <=(others=>'0');
Enable <='1';
END1<='0';
elsif addingBitCount = to_unsigned(48,6) then 
END1 <= '1';
Enable<='0';
elsif rising_edge(clock) then
addingBitCount <= addingBitCount + "0001";
end if;
end process;
end Behavioral;