----------------------------------------------------------------------------------
-- Company: CSUN
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 10/10/2024 06:58:02 PM
-- Design Name: Computer Project1
-- Module Name: Computer_Project1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 4-bit Adder with Carry Out
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

entity Computer_Project1 is
    Port ( A3 : in STD_LOGIC;
           A2 : in STD_LOGIC;
           A1 : in STD_LOGIC;
           A0 : in STD_LOGIC;
           B3 : in STD_LOGIC;
           B2 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           S3 : out STD_LOGIC;
           S2 : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S0 : out STD_LOGIC;
           Cout : out STD_LOGIC);
end Computer_Project1;

architecture Behavioral of Computer_Project1 is
signal Cout0, Cout1, Cout2:STD_LOGIC;

begin
--Cout <= (A and B) or (A and Cin) or (B or Cin);
--Sum <= A xor B xor Cin;
S0 <= A0 xor B0 xor Cin;
Cout0 <= (A0 and B0) or (Cin and (A0 xor B0));

S1 <= A1 xor B1 xor Cout0;
Cout1 <= (A1 and B1) or (Cout0 and (A1 xor B1));

S2 <= A2 xor B2 xor Cout1;
Cout2 <= (A2 and B2) or (Cout1 and (A2 xor B2));

S3 <= A3 xor B3 xor Cout2;
Cout <= (A3 and B3) or (Cout2 and (A3 xor B3));

end Behavioral;