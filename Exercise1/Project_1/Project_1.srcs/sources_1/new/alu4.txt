-- - --- --- --- -- --- --- --- --- --- --- -- --- --- --- --- --- --- -- --- --- --- --- --- --- -- --- --- --
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : <YOUR_NAME_HERE > ( < YOUR_EMAIL_HERE >)
--
-- Create Date : <CREATION_TIME_HERE >
-- Design Name : alu4
-- Module Name : alu4 - structural
-- Project Name : <PROJECT_NAME_HERE >
-- Target Devices : Basys3
--
-- Description : Partial 4 -bit Arithmetic Logic Unit
-- - --- --- --- -- --- --- --- --- --- --- -- --- --- --- --- --- --- -- --- --- --- --- --- --- -- --- --- --
library IEEE;
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity alu4 is
    GENERIC (N : INTEGER := 4); --bit width
    PORT (
            A : IN std_logic_vector (N -1 downto 0);
            B : IN std_logic_vector (N -1 downto 0);
            OP : IN std_logic;
            Y : OUT std_logic_vector (N -1 downto 0)
        );
end alu4;

architecture structural of alu4 is
-- Declare the inverter component
    Component notN is
        GENERIC ( N : INTEGER := 4); -- bit width
        PORT (
            A : IN std_logic_vector (N -1 downto 0);
            Y : OUT std_logic_vector (N -1 downto 0)
        );
    end Component;
    
-- Declare the shift left component
    Component sllN is
        GENERIC ( N : INTEGER := 4); --bit width
        PORT (
            A : IN std_logic_vector (N -1 downto 0);
            SHIFT_AMT : IN std_logic_vector (N -1 downto 0);
            Y : OUT std_logic_vector (N -1 downto 0)
        );
    end Component;
    
    signal not_result : std_logic_vector (3 downto 0);
    signal sll_result : std_logic_vector (3 downto 0);
    
begin

-- Instantiate the inverter
    not_comp : notN
        generic map ( N => 4)
        port map ( A => A , Y => not_result);
        
-- Instantiate the SLL unit
    sll_comp : sllN
        generic map ( N => 4)
        port map ( A => A , SHIFT_AMT => B , Y => sll_result);
        
    -- Use OP to control which operation to show / perform
    Y <= not_result when OP = '0' else -- NOT
         sll_result ; -- SLL
end structural ;
