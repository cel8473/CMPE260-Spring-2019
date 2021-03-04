----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 07:37:37 PM
-- Design Name: 
-- Module Name: multuTB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multuTB is
    constant N : integer := 4;
    constant Test : integer := 10;
end multuTB;

architecture Behavioral of multuTB is
    Component multu is
    GENERIC( N : INTEGER := 4);
    Port (
        A : in std_logic_vector(N-1 downto 0); 
        B : in std_logic_vector(N-1 downto 0);
        Prod : out std_logic_vector(N*2-1 downto 0)
    );
    end Component;
    signal A : std_logic_vector(N-1 downto 0);
    signal B : std_logic_vector(N-1 downto 0);
    signal Prod : std_logic_vector(N*2-1 downto 0);
    type test_vector is record
        A : std_logic_vector(N-1 downto 0);
        B : std_logic_vector(N-1 downto 0);
    end record;
    type test_vectors is array(0 to Test-1) of test_vector;
    constant test_vector_table : test_vectors :=(
        (A => "1111", B => "0100"), --60
        (A => "0001", B => "0000"),--0
        (A => "0001", B => "0011"), --3
        (A => "0011", B => "0011"), --9
        (A => "1111", B => "1111"), --225
        (A => "0000", B => "0000"), --0
        (A => "1001", B => "1001"), --64
        (A => "0001", B => "0001"), --1
        (A => "1111", B => "1101"), --195
        (A => "0101", B => "1010") --50
        );
begin
    multu_inst : multu PORT MAP(
        A => A, B => B, Prod => Prod);
    testing : process
        begin 
            for i in 0 to Test-1 loop
                A <= test_vector_table(i).A;
                B <= test_vector_table(i).B;
                wait for 20 ns;
            end loop;
        end process;     
end Behavioral;
