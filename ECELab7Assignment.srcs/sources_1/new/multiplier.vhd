----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2025 11:18:14 AM
-- Design Name: 
-- Module Name: multiplier - Behavioral
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
use  STD.textio.all
process
variable v_LINE: line;
variable v_ONLINE:line;
variable v_SPACE: character;
variable v_ADD_TERM1: std_logic_vector(c_WIDTH - 1 downto 0);
variable v_ADD_TERM2: std_logic_vector(c_WIDTH - 1downto 0);

begin
    file_open(file_VECTORS, "input_vectors.txt", read_mode);
    file_open(file_RESULTS, "output_vectors.txt", write_mode);
entity multiplier is
--  Port ( );
end multiplier;

architecture Behavioral of multiplier is

begin


end Behavioral;
