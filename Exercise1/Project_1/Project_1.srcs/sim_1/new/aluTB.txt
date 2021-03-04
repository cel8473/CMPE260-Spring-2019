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
-- Description: N- bit logical left shift (SLL) unit
-----------------------------------------

library IEEE ;
use IEEE.STD_LOGIC_1164 .ALL ;
use IEEE.STD_LOGIC_UNSIGNED .ALL;
use IEEE.NUMERIC_STD .ALL;

entity aluTB is
end aluTB;

architecture Behavioral of aluTB is
-- Declare the ALU component
    Component alu4 is
        PORT (
            A   : IN std_logic_vector (3 downto 0);
            B   : IN std_logic_vector (3 downto 0);
            OP  : IN std_logic ;
            Y   : OUT std_logic_vector (3 downto 0)
        );
    end Component ;
    
    constant delay : time := 20 ns ;
    signal A,B,Y : std_logic_vector (3 downto 0) := (others => '0');
    signal OP : std_logic := '0';
    
begin
-- Instantiate an instance of the ALU
    alu_inst : alu4 PORT MAP (
        A => A,
        B => B,
        OP => OP,
        Y => Y
    );
    
    data_proc : process is
    begin
        for i in 0 to 7 loop
            wait for delay;
            A <= std_logic_vector (unsigned(A) + 1);
        end loop;
            
        wait for delay;
        OP <= '1';
        
        for i in 1 to 7 loop
            A <= std_logic_vector (unsigned(A) + 1);
            for j in 0 to 3 loop
                wait for delay;
                B <= std_logic_vector ((unsigned(B) + 1) mod 4);
            end loop;
        end loop;
        
        wait;
        
    end process;
end Behavioral;