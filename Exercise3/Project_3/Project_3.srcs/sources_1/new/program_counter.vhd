----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2019 06:11:42 PM
-- Design Name: 
-- Module Name: program_counter - Behavioral
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

entity program_counter is
    Port(
        rstPC : in std_logic;
        clkPC : in std_logic;
        input : in std_logic_vector(27 downto 0);
        output : out std_logic_vector(27 downto 0) 
        );
end program_counter;

architecture Behavioral of program_counter is
signal address: std_logic_vector (27 downto 0);
begin
    process(clkPC, rstPC) is begin
        if rstPC = '1' then
            address <= "0000000000000000000000000000";
        elsif rising_edge(clkPC) then
            address <= input;    
        end if;
    end process;
    output <= address;
end Behavioral;
