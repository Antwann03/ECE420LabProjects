----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2025 10:27:40 AM
-- Design Name: 
-- Module Name: unsigned_multiplier1_TB - Behavioral
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

use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_textio.all;
library STD;
use STD.textio.ALL;

entity unsigned_multiplier1_TB is
--  Port ( );
end unsigned_multiplier1_TB;

architecture Behavioral of unsigned_multiplier1_TB is
    signal x_TB: std_logic_vector(3 downto 0);
    signal y_TB:std_logic_vector(3 downto 0);
    signal z_TB:std_logic_vector(7 downto 0);
    file file_VECTORS:text;
    file file_RESULTS:text;

component unsigned_multiplier1 is
    port (
            x : in std_logic_vector(3 downto 0);
            y : in std_logic_vector(3 downto 0);
            z : out std_logic_vector(7 downto 0)
          );
end component ;

begin
DUT: unsigned_multiplier1 port map
(x=>x_TB, y=>y_TB, z=>z_TB);

process 
    variable v_ILINE: line;
    variable v_OLINE:line;
    variable v_SPACE: character;
    variable v_ADD_TERM1: integer;
    variable v_ADD_TERM2: std_logic_vector(3 downto 0);
    variable v_TOTAL_TERM3: std_logic_vector(7 downto 0);
--Input text file contains x_TB as decimals and y_TB as hexdecimals
-- We must mutliply them together
begin
--Reads the input.txt file thats within the folder project
file_open(file_VECTORS, "input.txt", read_mode);
--Will create a text fille called lab_7_results and write results
file_open(file_RESULTS, "lab_7_results.txt", write_mode);

while not endfile(file_VECTORS) loop
    readline(file_VECTORS,v_ILINE);
    read(v_ILINE,v_ADD_TERM1);
    read(v_ILINE,v_SPACE);
    hread(v_ILINE,v_ADD_TERM2);

    report "Read v_ADD_TERM1 (decimal): " & integer'image(v_ADD_TERM1);
    report "Read v_ADD_TERM2 (hexadecimal): " & integer'image(to_integer(unsigned(v_ADD_TERM2)));


        x_TB <= std_logic_vector(to_unsigned(v_ADD_TERM1,4));
        y_TB<=v_ADD_TERM2;
        wait for 30 ns;
        v_TOTAL_TERM3 := z_TB;
--We will now repeat the process but we will write it
        write(v_OLINE, v_ADD_TERM1);
        write(v_OLINE, v_SPACE);
        hwrite(v_OLINE,v_ADD_TERM2);
        write(v_OLINE, string'(" = "));
        hwrite(v_OLINE, v_TOTAL_TERM3);
        writeline(file_RESULTS, v_OLINE);
    end loop;
file_close(file_VECTORS);
file_close(file_RESULTS);
wait;
end process;

end Behavioral;
