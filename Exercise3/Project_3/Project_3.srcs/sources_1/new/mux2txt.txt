----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2019 07:12:35 PM
-- Design Name: 
-- Module Name: program_count - Behavioral
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

entity mux2 is
--  Port ( );
    PORT(
        jumpAddrMux : IN std_logic_vector(27 downto 0);
        pcSrcMux : IN std_logic_vector(27 downto 0);
        en : IN std_logic;
        pcAddr : OUT std_logic_vector(27 downto 0)
        );
end mux2;

architecture Behavioral of mux2 is
begin
    with en select
      pcAddr <= jumpAddrMux when '1',
           pcSrcMux when others;        
end Behavioral;