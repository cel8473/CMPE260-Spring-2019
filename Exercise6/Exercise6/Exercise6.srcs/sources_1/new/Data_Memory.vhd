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


library IEEE ;
use IEEE . STD_LOGIC_1164 .ALL ;
use IEEE . STD_LOGIC_UNSIGNED .ALL;
use IEEE . NUMERIC_STD .ALL;

entity data_memory is
    generic (
            width : integer := 32;  -- width of each section of memory
            addr_space : integer := 10);    -- number of bits available for addressing
    port (
            clk,w_en : in std_logic;    -- clock, write enable
            addr : in std_logic_vector(addr_space-1 downto 0);  -- address to write/read from
            d_in : in std_logic_vector(width-1 downto 0);   -- data to be written to mem
            d_out : out std_logic_vector(width-1 downto 0));    -- data being read from addr            
end data_memory;

architecture behav of data_memory is
    type mips_mem is array(0 to (2**addr_space)-1) of std_logic_vector(width-1 downto 0); -- 2^10 size array, checking the first 10 bits of addr
    signal mip_mem : mips_mem;  -- tied to signal for assignment
begin
    process(clk,w_en,addr,d_in)
    begin
        if rising_edge(clk) and w_en = '1' then -- synchronous write
            mip_mem(to_integer(unsigned(addr))) <= d_in;
        end if;
    end process;
    d_out <= mip_mem(to_integer(unsigned(addr)));   -- asynchronous read
end behav;