-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : Chris Larson
--
-- Create Date : 2/19/19
-- Design Name : instruction_memory
-- Module Name : instruction_memory - behavioral
-- Project Name : exercise3
-- Target Devices : Basys3
--
-- Description :  instruction memory which holds the instructions to later fetch 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity instruction_memory is
--  Port ( );
    PORT (
            addrIM : IN std_logic_vector(27 downto 0);
            d_out : OUT std_logic_vector(31 downto 0)
          );  
end instruction_memory;

architecture Behavioral of instruction_memory is
    type mem_type is array(0 to 1023) of std_logic_vector(31 downto 0);
    signal mem: mem_type := (0 => x"12345678", 1 => x"12345679", 2 => x"12345680", 3 => x"11111111", 4 => x"22222222", 5 => x"33333333",
                             6 =>x"42042069", 7 => x"76667364", 8 => x"87654321", 9 => x"10001000", 10 => x"10011001", others => x"00000000");  
begin
    d_out <= mem(to_integer(unsigned(addrIM(9 downto 0))));        
end Behavioral;