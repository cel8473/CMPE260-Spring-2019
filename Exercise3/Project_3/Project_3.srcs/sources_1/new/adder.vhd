-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : Chris Larson
--
-- Create Date : 2/19/19
-- Design Name : adder
-- Module Name : adder - behavioral
-- Project Name : exercise3
-- Target Devices : Basys3
--
-- Description : adder incrementing program counter by 1
-- --------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder is
--  Port ( );
    Port(
            AddrAdder : IN std_logic_vector(27 downto 0);
            nextAddr : OUT std_logic_vector(27 downto 0)
        );    
end adder;

architecture behavioral of adder is
begin
    nextAddr <= std_logic_vector(unsigned(AddrAdder) + 1);
end behavioral;
