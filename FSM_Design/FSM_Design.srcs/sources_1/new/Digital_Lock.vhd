----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/23/2024 06:00:09 PM
-- Design Name: Digital Lock - FSM Design
-- Module Name: Digital_Lock - Behavioral
-- Project Name: Computer Project 5
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

entity Digital_Lock is
    Port ( newV, reset, clock : in STD_LOGIC;
           value : in std_logic_vector(3 downto 0);
           openLock : out STD_LOGIC;
           CurrentState_out, NextState_out : out std_logic_vector(2 downto 0));
end Digital_Lock;

architecture Behavioral of Digital_Lock is
    type state_type is (S0, S1, S2, S3, S4, S5); -- define states
    signal state_reg, state_next : state_type;
begin
    -- State register process
    process(clock, reset)
    begin
        if reset = '1' then
            state_reg <= S0; -- initial state
        elsif rising_edge(clock) then
            state_reg <= state_next; -- state transition
        end if;
    end process;

    -- Next state logic process
    process(state_reg, value, newV)
    begin
        case state_reg is
            when S0 =>
                if newV = '1' and value = "0000" then
                    state_next <= S1;
                else
                    state_next <= S0;
                end if;
            when S1 =>
                if newV = '1' and value = "0010" then
                    state_next <= S2;
                else
                    state_next <= S0;
                end if;
            when S2 =>
                if newV = '1' and value = "0110" then
                    state_next <= S3;
                else
                    state_next <= S0;
                end if;
            when S3 =>
                if newV = '1' and value = "1001" then
                    state_next <= S4;
                else
                    state_next <= S0;
                end if;
            when S4 =>
                if newV = '1' and value = "1010" then
                    state_next <= S5;
                else
                    state_next <= S0;
                end if;
            when S5 =>
                if newV = '1' and value = "0110" then
                    state_next <= S0;
                else
                    state_next <= S0;
                end if;
        end case;
    end process;

    -- Output logic
    process(state_reg)
    begin
        case state_reg is
            when S0 => openLock <= '0';
            when S1 => openLock <= '0';
            when S2 => openLock <= '0';
            when S3 => openLock <= '0';
            when S4 => openLock <= '0';
            when S5 => openLock <= '1'; -- lock opens
        end case;
    end process;

    -- Output current and next state
    CurrentState_out <= std_logic_vector(to_unsigned(state_reg, 3));
    NextState_out <= std_logic_vector(to_unsigned(state_next, 3));
end Behavioral;
