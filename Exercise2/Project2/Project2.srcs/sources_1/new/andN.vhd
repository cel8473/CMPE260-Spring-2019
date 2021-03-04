-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 15 Jan 2019
-- Design Name: and
-- Module Name: and - dataFlow
-- Project Name: Exercise 1
-- Target Devices: Basys3
--
-- Description: N- bit bitwise NOT unit
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andN is
    PORT (
            A : IN std_logic;
            B : IN std_logic;
            Y : OUT std_logic
           );
end andN;

architecture dataflow of andN is
begin
    Y <= A AND B;
end dataflow;