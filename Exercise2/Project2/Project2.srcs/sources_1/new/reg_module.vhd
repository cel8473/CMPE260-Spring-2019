-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 22 Jan 2019
-- Design Name: reg_module
-- Module Name: reg_module - behaviorial
-- Project Name: Exercise 2
-- Target Devices: Basys3
--
-- Description: 3 to 8 decoder
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_module is
    GENERIC(N: INTEGER);
    PORT(
        input : IN std_logic_vector(N-1 downto 0);
        clk : IN std_logic;
        we : IN std_logic;
        rst : IN std_logic;
        output : OUT std_logic_vector(N-1 downto 0)
     );
end reg_module;

architecture behavioral of reg_module is
signal stored: std_logic_vector(N-1 downto 0);
begin
    process(clk, rst)
        begin
            if rst = '1' then 
                stored <= (others => '0');
            elsif rising_edge(clk) then
                if we = '1' then
                    stored <= input;
                end if;
            end if;
    end process;
    output <= stored;         
end behavioral;