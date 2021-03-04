-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 15 Jan 2019
-- Design Name: notN
-- Module Name: notN - dataFlow
-- Project Name: Exercise 1
-- Target Devices: Basys3
--
-- Description: N- bit bitwise NOT unit
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notN is
    GENERIC (N : INTEGER := 4); --bit width
    PORT (
            A : IN std_logic_vector(N-1 downto 0);
            Y : OUT std_logic_vector(N-1 downto 0)
           );
end notN;

architecture dataflow of notN is
begin
    Y <= not A;
end dataflow;