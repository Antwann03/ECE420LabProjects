----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 02:05:02 PM
-- Design Name: Unsigned 4x4 Bit Multiplier
-- Module Name: Unsigned_4x4_Multiplier - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Unsigned_4x4_Multiplier is
    Port ( X : in std_logic_vector(3 downto 0);
           Y : in std_logic_vector(3 downto 0);
           Z : out std_logic_vector(7 downto 0));
end Unsigned_4x4_Multiplier;
architecture Behavioral of Unsigned_4x4_Multiplier is

component HA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component HA;
component FA is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component FA;
signal X0Y0, X0Y1, X0Y2, X0Y3: STD_LOGIC;
signal X1Y0, X1Y1, X1Y2, X1Y3: STD_LOGIC;
signal X2Y0, X2Y1, X2Y2, X2Y3: STD_LOGIC;
signal X3Y0, X3Y1, X3Y2, X3Y3: STD_LOGIC;

signal S00, S01, S02, S03: STD_LOGIC;
signal S10, S11, S12, S13: STD_LOGIC;
signal S20, S21, S22, S23: STD_LOGIC;
signal S30, S31, S32, S33: STD_LOGIC;

signal C00, C01, C02, C03: STD_LOGIC;
signal C10, C11, C12, C13: STD_LOGIC;
signal C20, C21, C22, C23: STD_LOGIC;
signal C30, C31, C32, C33: STD_LOGIC;

begin
X0Y0 <= x(0) and y(0);
X0Y1 <= x(0) and y(1);
X0Y2 <= x(0) and y(2);
X0Y3 <= x(0) and y(3);

X1Y0 <= x(1) and y(0);
X1Y1 <= x(1) and y(1);
X1Y2 <= x(1) and y(2);
X1Y3 <= x(1) and y(3);

X2Y0 <= x(2) and y(0);
X2Y1 <= x(2) and y(1);
X2Y2 <= x(2) and y(2);
X2Y3 <= x(2) and y(3);

X3Y0 <= x(3) and y(0);
X3Y1 <= x(3) and y(1);
X3Y2 <= x(3) and y(2);
X3Y3 <= x(3) and y(3);
--GREEN Row 0
Path00:HA port map(
A=> X3Y1, B=> C01, Sum=> S00, Cout=> C00);
Path01:FA port map(
A=> X3Y0, B=> X2Y1, Cin=> C02, Sum=> S01, Cout=> C01);
Path02:FA port map(
A=> X2Y0, B=> X1Y1, Cin=> C03, Sum=> S02, Cout=> C02);
Path03:HA port map(
A=> X1Y0, B=> X0Y1, Sum=> S03, Cout=> C03);
--GREEN Row 1
Path10:FA port map(
A => C00, B => X3Y2, Cin => C11, Sum => S10, Cout => C10);
Path11:FA port map(
A=> S00, B=> X2Y2, Cin=> C12, Sum=> S11, Cout=> C11);
Path12:FA port map(
A=> S01, B=> X1Y2, Cin=> C13, Sum=> S12, Cout=> C12);
Path13:HA port map(
A=> S02, B=> X0Y2, Sum=> S13, Cout=> C13);
--Gren Row 2
Path20:FA port map(
A=> C10, B=> X3Y3, Cin=> C21, Sum=> S20, Cout=> C20);
Path21:FA port map(
A=> S10, B=> X2Y3, Cin=> C22, Sum=> S21, Cout=> C21);
Path22:FA port map(
A=> S11, B=> X1Y3, Cin=> C23, Sum=> S22, Cout=> C22);
Path23:HA port map(
A=> S12, B=> X0Y3, Sum=> S23, Cout=> C23);

Z(0) <= X(0) and Y(0);
Z(1) <= S03;
Z(2) <= S13;
Z(3) <= S23;
Z(4) <= S22;
Z(5) <= S21;
Z(6) <= S20;
Z(7) <= C20;
end Behavioral;
