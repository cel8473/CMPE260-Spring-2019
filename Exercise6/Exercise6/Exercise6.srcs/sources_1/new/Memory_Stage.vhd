----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2019 12:26:07 PM
-- Design Name: 
-- Module Name: Memory_Stage - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Memory_Stage is
    Port(
        clk : in std_logic;
        ALUResult : in std_logic_vector(31 downto 0);
        MemWrData : in std_logic_vector(31 downto 0);
        ExMemWr : in std_logic;
        ExMemRd : in std_logic;
        ExMemWbIdx : in std_logic_vector(4 downto 0);
        RegData : out std_logic_vector(31 downto 0);
        MemData : out std_logic_vector(31 downto 0);
        MemWr : out std_logic;
        MemRd : out std_logic;
        WbIdx : out std_logic_vector(4 downto 0)
         );
end Memory_Stage;

architecture Behavioral of Memory_Stage is
component data_memory is
        generic (
                width : integer := 32;  -- width of each section of memory
                addr_space : integer := 10);    -- number of bits available for addressing
        port (
                clk,w_en : in std_logic;    -- clock, write enable
                addr : in std_logic_vector(addr_space-1 downto 0);  -- address to write/read from
                d_in : in std_logic_vector(width-1 downto 0);   -- data to be written to mem
                d_out : out std_logic_vector(width-1 downto 0));    -- data being read from addr            
    end component;
begin
    data_mem_comp : data_memory
        generic map(
                width => 32, 
                addr_space => 10)
        port map(
                clk => clk,
                w_en => ExMemWr,
                addr => ALUResult(9 downto 0),
                d_in => MemWrData, 
                d_out => MemData);
        MemWr <= ExMemWr;   
        MemRd <= ExMemRd;
        WbIdx <= ExMemWbIdx;
        RegData <= ALUResult;
end Behavioral;
