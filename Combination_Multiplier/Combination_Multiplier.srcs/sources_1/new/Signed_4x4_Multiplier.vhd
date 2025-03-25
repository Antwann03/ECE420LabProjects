----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/10/2024 06:36:00 PM
-- Design Name: Signed 4x4 Muliplier VHDL Code
-- Module Name: Signed_4x4_Multiplier - Behavioral
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

entity Signed_4x4_Multiplier is
    Port ( X : in std_logic_vector(3 downto 0);
           Y : in std_logic_vector(3 downto 0);
           Z : out std_logic_vector(7 downto 0));
end Signed_4x4_Multiplier;

architecture Behavioral of Signed_4x4_Multiplier is
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
component HS is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Difference : out STD_LOGIC;
           Borrow : out STD_LOGIC);
end component HS;
component FS is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Borrow_in : in STD_LOGIC;
           Borrow : out STD_LOGIC;
           Difference : out STD_LOGIC);
end component FS;

signal X0Y0, X0Y1, X0Y2, X0Y3:STD_LOGIC;
signal X1Y0, X1Y1, X1Y2, X1Y3:STD_LOGIC;
signal X2Y0, X2Y1, X2Y2, X2Y3:STD_LOGIC;
signal X3Y0, X3Y1, X3Y2, X3Y3:STD_LOGIC;

signal C00, C01, C02, C03, C04, C05, C06:STD_LOGIC;
signal C10, C11, C12, C13, C14, C15:STD_LOGIC;

signal S00, S01, S02, S03, S04, S05, S06:STD_lOGIC;
signal S10, S11, S12, S13, S14, S15:STD_lOGIC;

signal B20, B21, B22, B23, B24:STD_lOGIC;
signal D20, D21, D22, D23, D24:STD_lOGIC;

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

Path00:HA port map (
A=>X1Y0, B=>X0Y1, Sum=> S00, Cout=> C00);

Path01:FA port map (
A=>X2Y0, B=>X1Y1, Cin=> C00, Sum=> S01, Cout=> C01);

Path02:FA port map (
A=>X3Y0, B=>X2Y1, Cin=> C01, Sum=> S02, Cout=> C02);

Path03:FA port map (
A=>X3Y0, B=>X3Y1, Cin=> C02, Sum=> S03, Cout=> C03);

Path04:FA port map (
A=>X3Y0, B=>X3Y1, Cin=> C03, Sum=> S04, Cout=> C04);

Path05:FA port map (
A=>X3Y0, B=>X3Y1, Cin=> C04, Sum=> S05, Cout=> C05);

Path06:FA port map (
A=>X3Y0, B=>X3Y1, Cin=> C05, Sum=> S06, Cout=> C06);
--Second Row 
Path10:HA port map (
A=>S01, B=>X0Y2, Sum=> S10, Cout=> C10);

Path11:FA port map (
A=>S02, B=>X1Y2, Cin=> C10, Sum=> S11, Cout=> C11);

Path12:FA port map (
A=>S03, B=>X2Y2, Cin=> C11, Sum=> S12, Cout=> C12);

Path13:FA port map (
A=>S04, B=>X3Y2, Cin=> C12, Sum=> S13, Cout=> C13);

Path14:FA port map (
A=>S05, B=>X3Y2, Cin=> C13, Sum=> S14, Cout=> C14);

Path15:FA port map (
A=>S06, B=>X3Y2, Cin=> C14, Sum=> S15, Cout=> C15);

--Third Row 
Path20:HS port map (
A=>S11, B=>X0Y3, Borrow=> B20, Difference=> D20);

Path21: FS port map (
A=> S12, B=>X1Y3, Borrow_in=> B20, Borrow=>B21, Difference=> D21);

Path22: FS port map (
A=> S13, B=>X2Y3, Borrow_in=> B21, Borrow=>B22, Difference=> D22);

Path23: FS port map (
A=> S14, B=>X3Y3, Borrow_in=> B22, Borrow=>B23, Difference=> D23);

Path24: FS port map (
A=> S15, B=>X3Y3, Borrow_in=> B23, Borrow=>B24, Difference=> D24);

Z(0)<= X0Y0;
Z(1)<= S00;
Z(2)<= S10;
Z(3)<= D20;
Z(4)<= D21;
Z(5)<= D22;
Z(6)<= D23;
Z(7)<= D24;
end Behavioral;