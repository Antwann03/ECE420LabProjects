----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/08/2025 12:46:27 PM
-- Design Name: 
-- Module Name: FAdder - Behavioral
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

entity FAdder is
  Port (X,Y,Carry_In : in std_logic;
        Sum, Carry_Out: out std_logic);
end FAdder;

architecture Behavioral of FAdder is
component HAdder is
    Port (
        X : in std_logic;
        Y : in std_logic;
        Sum : out std_logic;
        Carry_Out : out std_logic
    );
end component;

component simple_or is
    Port (
        A : in std_logic;
        B : in std_logic;
        C : out std_logic
    );
end component;

signal sum_HA, carry_HA1,carry_HA2: std_logic;

begin
HA1: HAdder port map(
    X => X, 
    Y => Y, 
    Sum => sum_HA, 
    Carry_Out => carry_HA1
);

HA2: HAdder port map(
    X => sum_HA, 
    Y => Carry_In, 
    Sum => Sum, 
    Carry_Out => carry_HA2
);

OR_Carry: simple_or port map(
    A => carry_HA1, 
    B => carry_HA2, 
    C => Carry_Out
);

end Behavioral;