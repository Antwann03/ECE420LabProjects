----------------------------------------------------------------------------------
-- Company: California State University, Northridge
-- Engineer: Antonio Anzora Jr
-- 
-- Create Date: 11/23/2024 07:26:20 PM
-- Design Name: Digital Lock - FSM Machine
-- Module Name: Digital_Lock_TB - Behavioral
-- Project Name: Computer Project 5
-- Target Devices: 
-- Tool Versions: 
-- Description: Testbench for Digital Lock FSM
-- 
-- Dependencies: Digital_Lock entity
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Digital_Lock_TB is
end Digital_Lock_TB;

architecture Behavioral of Digital_Lock_TB is
    component Digital_Lock is
        Port ( newV, reset, clock : in STD_LOGIC;
               value : in std_logic_vector(3 downto 0);
               openLock : out STD_LOGIC;
               CurrentState_out, NextState_out : out std_logic_vector(2 downto 0));
    end component;

    signal newV_TB, reset_TB, clock_TB, openLock_TB: STD_LOGIC;
    signal value_TB: std_logic_vector(3 downto 0);
    signal CurrentState_out_TB, NextState_out_TB: std_logic_vector(2 downto 0);

begin
    UUT: Digital_Lock port map(
        newV => newV_TB, reset => reset_TB,
        clock => clock_TB, openLock => openLock_TB,
        value => value_TB,
        CurrentState_out => CurrentState_out_TB,
        NextState_out => NextState_out_TB
    );

    -- Clock generation
    process
    begin
        clock_TB <= '1';
        wait for 20 ns;
        clock_TB <= '0';
        wait for 20 ns;
    end process;

    -- Test process
    process
    begin
        -- Initial conditions
        reset_TB <= '1'; newV_TB <= '0'; value_TB <= "0000"; wait for 20 ns;
        reset_TB <= '0'; newV_TB <= '1'; value_TB <= "0000"; wait for 20 ns;

        -- Test sequence
        newV_TB <= '0'; value_TB <= "0010"; wait for 20 ns;
        newV_TB <= '1'; value_TB <= "0010"; wait for 20 ns;

        newV_TB <= '0'; value_TB <= "0110"; wait for 20 ns;
        newV_TB <= '1'; value_TB <= "0110"; wait for 20 ns;

        newV_TB <= '0'; value_TB <= "1001"; wait for 20 ns;
        newV_TB <= '1'; value_TB <= "1001"; wait for 20 ns;

        newV_TB <= '0'; value_TB <= "1010"; wait for 20 ns;
        newV_TB <= '1'; value_TB <= "1010"; wait for 20 ns;

        newV_TB <= '0'; value_TB <= "0110"; wait for 20 ns;
        newV_TB <= '1'; value_TB <= "0110"; wait for 20 ns;

        wait;
    end process;
end Behavioral;
