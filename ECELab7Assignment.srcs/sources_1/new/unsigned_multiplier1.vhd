----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2025 10:23:03 AM
-- Design Name: 
-- Module Name: unsigned_multiplier1 - Behavioral
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
use IEEE.STD_LOGIC_1164.all;
entity unsigned_multiplier1 is
port (
x : in std_logic_vector(3 downto 0);
y : in std_logic_vector(3 downto 0);
z : out std_logic_vector(7 downto 0)
);
end unsigned_multiplier1;
architecture Behavioral of unsigned_multiplier1 is
component half_adder is
port (
x : in std_logic;
y : in std_logic;
carry_out : out std_logic;
sum : out std_logic
);
end component;
component full_adder is
port (x : in std_logic;
y : in std_logic;
carry_in : in std_logic;
sum : out std_logic;
carry_out : out std_logic);
end component;
signal x0y0 : std_logic;
signal x1y0 : std_logic;
signal x2y0 : std_logic;
signal x3y0 : std_logic;
signal x0y1 : std_logic;
signal x1y1 : std_logic;
signal x2y1 : std_logic;
signal x3y1 : std_logic;
signal x0y2 : std_logic;
signal x1y2 : std_logic;
signal x2y2 : std_logic;
signal x3y2 : std_logic;
signal x0y3 : std_logic;
signal x1y3 : std_logic;
signal x2y3 : std_logic;
signal x3y3 : std_logic;
signal ha1_carry : std_logic;
signal ha2_carry : std_logic;
signal ha3_carry : std_logic;
signal ha4_carry : std_logic;
signal ha2_sum : std_logic;
signal fa1_sum : std_logic;
signal fa2_sum : std_logic;
signal fa3_sum : std_logic;
signal fa4_sum : std_logic;
signal fa5_sum : std_logic;
signal fa1_carry_out : std_logic;
signal fa2_carry_out : std_logic;
signal fa3_carry_out : std_logic;
signal fa4_carry_out : std_logic;
signal fa5_carry_out : std_logic;
signal fa6_carry_out : std_logic;
signal fa7_carry_out : std_logic;

begin
x0y0 <= x(0) and y(0);
x1y0 <= x(1) and y(0);
x2y0 <= x(2) and y(0);
x3y0 <= x(3) and y(0);
x0y1 <= x(0) and y(1);
x1y1 <= x(1) and y(1);
x2y1 <= x(2) and y(1);
x3y1 <= x(3) and y(1);
x0y2 <= x(0) and y(2);
x1y2 <= x(1) and y(2);
x2y2 <= x(2) and y(2);
x3y2 <= x(3) and y(2);
x0y3 <= x(0) and y(3);
x1y3 <= x(1) and y(3);
x2y3 <= x(2) and y(3);
x3y3 <= x(3) and y(3);
-- Output bit 0 is just the and of the 2 lower bits of the input
z(0) <= x0y0;




-----------------------------------------


ha_1 : half_adder
port map (
x => x0y1,
y => x1y0,
sum => z(1), -- 2nd bit of output
carry_out => ha1_carry
);
fa_1 : full_adder
port map (
x => x1y1,
y => x2y0,
carry_in => ha1_carry,
sum => fa1_sum,
carry_out => fa1_carry_out
);
fa_2 : full_adder
port map (
x => x2y1,
y => x3y0,
carry_in => fa1_carry_out,
sum => fa2_sum,
carry_out => fa2_carry_out
);
ha_2 : half_adder
port map (
x => fa2_carry_out,
y => x3y1,
sum => ha2_sum,
carry_out => ha2_carry
);
-------------------------------
ha_3 : half_adder
port map (
x => x0y2,
y => fa1_sum,
sum => z(2), -- third output bit
carry_out => ha3_carry
);
fa_3 : full_adder
port map (
x => x1y2,
y => fa2_sum,
carry_in => ha3_carry,
sum => fa3_sum,
carry_out => fa3_carry_out
);
fa_4 : full_adder
port map (
x => x2y2,
y => ha2_sum,
carry_in => fa3_carry_out,
sum => fa4_sum,
carry_out => fa4_carry_out
);
fa_5 : full_adder
port map (
x => x3y2,
y => ha2_carry,
carry_in => fa4_carry_out,
sum => fa5_sum,
carry_out => fa5_carry_out
);
------------------------------------------------------------------------------
-- THIRD ROW
------------------------------------------------------------------------------
ha_4 : half_adder
port map (
x => x0y3,
y => fa3_sum,
sum => z(3), -- fourth bit of output
carry_out => ha4_carry
);
fa_6 : full_adder
port map (
x => x1y3,
y => fa4_sum,
carry_in => ha4_carry,
sum => z(4),
carry_out => fa6_carry_out
);
fa_7 : full_adder
port map (
x => x2y3,
y => fa5_sum,
carry_in => fa6_carry_out,
sum => z(5),
carry_out => fa7_carry_out
);
fa_8 : full_adder
port map (
x => x3y3,
y => fa5_carry_out,
carry_in => fa7_carry_out,
sum => z(6),
carry_out => z(7)
);
end Behavioral;