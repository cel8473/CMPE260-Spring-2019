----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2019 06:36:37 PM
-- Design Name: 
-- Module Name: Rip_Car_Adder - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rip_Car_Adder is
    GENERIC(N : INTEGER := 4);
    Port (
        S : in std_logic;
        A : in std_logic_vector(N-1 downto 0);
        B : in std_logic_vector(N-1 downto 0);
        Sout : out std_logic_vector(N-1 downto 0);
        Cout : out std_logic
     );
end Rip_Car_Adder;

architecture Struct of Rip_Car_Adder is
    Component Full_Adder is
        Port (
            A : in std_logic;
            B : in std_logic;
            Cin : in std_logic;
            Cout : out std_logic;
            Sum : out std_logic);
    end Component;
    
signal c : std_logic_vector(N-1 downto 0);    
signal b_comp : std_logic_vector(N-1 downto 0);

begin
    b_comp(0) <= B(0) xor s;
    adder0 : Full_adder PORT MAP (A => A(0),B => b_comp(0),Cin => '0',Cout => C(0),Sum => Sout(0));
    adders: for i in 1 to N-1 generate
        b_comp(i) <= B(i) xor s;
        adder : Full_adder PORT MAP (A => A(i),B => b_comp(i),Cin => C(i-1),Cout => C(i),Sum => Sout(i));
    end generate adders;    
end Struct;
