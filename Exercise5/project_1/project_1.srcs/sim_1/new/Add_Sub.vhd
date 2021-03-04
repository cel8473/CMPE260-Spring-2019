----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2019 07:15:19 PM
-- Design Name: 
-- Module Name: Add_Sub - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Add_Sub is
    GENERIC(N: INTEGER := 32);
    PORT(
        A : in std_logic_vector(N-1 downto 0);
        B : in std_logic_vector(N-1 downto 0);
        Sel : in std_logic;
        Sum : out std_logic_vector(N-1 downto 0)
         );
end Add_Sub;

architecture Behavioral of Add_Sub is
    Component Rip_Car_Adder is 
        Port (
            A : in std_logic_vector(N-1 downto 0);
            B : in std_logic_vector(N-1 downto 0);
            Sum : out std_logic_vector(N-1 downto 0)
         );
    end component;
    signal add_sub : std_logic_vector(N-1 downto 0);
          
begin
    with Sel select
        add_sub <= B when '0',
                std_logic_vector(to_unsigned((to_integer(unsigned(not B))) + 1, N-1)) when others;
    add_sub_comp : Rip_Car_Adder
    port map(A => A, B => add_sub, Sum => Sum);
end Behavioral;
