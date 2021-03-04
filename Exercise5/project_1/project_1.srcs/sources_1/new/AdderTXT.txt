----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 06:12:57 PM
-- Design Name: 
-- Module Name: Adder - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Adder is
  Port (
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Cout : out std_logic;
        Sum : out std_logic);
end Full_Adder;

architecture Behavioral of Full_Adder is
begin
    sum <= A XOR B XOR Cin;
    Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B);
end Behavioral;
