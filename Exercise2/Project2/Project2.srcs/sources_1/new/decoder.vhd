-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 22 Jan 2019
-- Design Name: decoder
-- Module Name: decoder - behaviorial
-- Project Name: Exercise 2
-- Target Devices: Basys3
--
-- Description: 3 to 8 decoder
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder is
    GENERIC (
        M : INTEGER;
        N : INTEGER
    );
    PORT (
            input : IN std_logic_vector(N-1 downto 0);
            output : OUT std_logic_vector(M-1 downto 0);
            clk : IN std_logic;
            rst : in std_logic
           );
end decoder;

architecture behavioral of decoder is
begin
    process(clk)
    begin 
        if rst = '1' then
            output <= std_logic_vector(to_unsigned(0, output'length));
        else
            for i in 0 to M-1 loop
                if (i = to_integer(unsigned(input))) then
                    output(i) <= '1';
                else
                    output(i) <= '0';
                end if;
            end loop;
        end if;
    end process;    
end behavioral;