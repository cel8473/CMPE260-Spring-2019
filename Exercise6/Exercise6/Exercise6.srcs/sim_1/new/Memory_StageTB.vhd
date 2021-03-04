----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2019 01:27:18 PM
-- Design Name: 
-- Module Name: Memory_StageTB - Behavioral
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

entity Memory_StageTB is
end entity;

architecture behav of Memory_StageTB is
    component memory_stage is
        port (
                clk : in std_logic;
                ALUResult,MemWrData : in std_logic_vector(31 downto 0);    -- result of ALU from execute, data to be written to data_mem // last 10 bits of aluresult is addr
                ExMemWr,ExMemRd : in std_logic; -- write/read bit from execute, passes to wb stage
                ExMemWbIdx : in std_logic_vector(4 downto 0); -- wb idx from execute, passes to wb stage
                RegData,MemData : out std_logic_vector(31 downto 0);   -- reg data from exec, data retrieved from data_mem
                MemWr,MemRd : out std_logic;    -- mem write/read bit
                WbIdx : out std_logic_vector(4 downto 0));    -- writeback idx
    end component;
    
    constant delay : time := 200 ns;
    constant clkperiod : time := 70 ns;
    signal clk,ExMemWr,ExMemRd,MemWr,MemRd : std_logic := '0';
    signal ExMemWbIdx,WbIdx : std_logic_vector(4 downto 0) := (others => '0');
    signal RegData,MemData,ALUResult,MemWrData : std_logic_vector(31 downto 0) := (others => '0');
begin
    mem_stage_inst : memory_stage
    port map (
            clk => clk,
            ALUResult => ALUResult,
            MemWrData => MemWrData,
            ExMemWr => ExMemWr,
            ExMemRd => ExMemRd,
            ExMemWbIdx => ExMemWbIdx,
            RegData => RegData,
            MemData => MemData,
            MemWr => MemWr,
            MemRd => MemRd,
            WbIdx => WbIdx);
    clk <= not clk after clkperiod / 2; -- clk process
    process is
    begin 
        ALUResult <= x"00000011";   -- read from this addr
        MemWrData <= x"11111111";   -- write this data
        ExMemWr <= '1';
        ExMemRd <= '0';
        ExMemWbIdx <= "00001";
        wait for delay;
        assert WbIdx = "00001" and RegData = x"00000011" and MemData = x"11111111" and MemWr = '1' and MemRd = '0'
        report "error";
        ExMemWr <= '0'; -- turn write off, show asynchronous read
        ExMemRd <= '1';
        wait for delay;
        assert WbIdx = "00001" and RegData = x"00000011" and MemData = x"11111111" and MemWr = '0' and MemRd = '1'
        report "error";
        wait for delay;
        MemWrData <= x"AAAAAAAA";   -- write new data to x01 address
        ExMemWr <= '1';
        wait for delay;
        assert WbIdx = "00001" and RegData = x"00000001" and MemData = x"AAAAAAAA"
        report "error";
        ALUResult <= x"00000011";   -- read from 11, turn write off -> should be first data written, 2_11111111
        ExMemWr <= '0';
        wait for delay;
        assert RegData = x"00000011" and MemData = x"11111111"
        report "error";
        wait;
    end process;
end behav;