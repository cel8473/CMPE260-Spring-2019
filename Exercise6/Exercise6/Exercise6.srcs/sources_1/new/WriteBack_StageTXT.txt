----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2019 12:35:28 PM
-- Design Name: 
-- Module Name: Data_Memory - Behavioral
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
use IEEE . STD_LOGIC_UNSIGNED .ALL;
use IEEE . NUMERIC_STD .ALL;



entity WriteBack_Stage is
        port (
            MemWbIdx : in std_logic_vector(4 downto 0); -- writeback idx
            MemWr,MemRd : in std_logic; -- bit that determines to write / data was read
            RegData,MemData : in std_logic_vector(31 downto 0); -- data passed in from reg / from memory
            WbData : out std_logic_vector(31 downto 0); -- data to be written back 
            WbIdx : out std_logic_vector(4 downto 0);   -- writeback idx
            WbEn : out std_logic);  -- bit that determines if anything was written back            
end WriteBack_Stage;

architecture behav of WriteBack_Stage is
begin
    process(MemData,MemRd,RegData)
    begin
        if MemRd = '1' then
            WbData <= MemData;  
        else
            WbData <= RegData;  
        end if;           
    end process;
    WbIdx <= MemWbIdx; 
    WbEn <= not MemWr;
end behav;
