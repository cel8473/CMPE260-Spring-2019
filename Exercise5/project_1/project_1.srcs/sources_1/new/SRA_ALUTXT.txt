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
-- Description: N- bit arithmetic right shift (SRA) unit
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SRA_ALU is
    GENERIC (N : INTEGER := 4); --bit width
    PORT (
            A           : IN std_logic_vector(N-1 downto 0);
            SHIFT_AMT   : IN std_logic_vector(N-1 downto 0);
            Y           : OUT std_logic_vector(N-1 downto 0)
            );
end SRA_ALU;

architecture behavioral of SRA_ALU is
begin
    process(A, SHIFT_AMT) is
        variable int_shamt : integer;
    begin
        int_shamt := to_integer(unsigned(SHIFT_AMT));
        for i in N-1 downto 0 loop
            if (i + int_shamt <= N-1) then
                Y(i) <= A(i + int_shamt);
             else
                Y(i) <= A(N - 1);
             end if;
         end loop;
     end process;
end behavioral;