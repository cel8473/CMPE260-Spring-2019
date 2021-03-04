-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : Chris Larson
--
-- Create Date : 2/19/19
-- Design Name : if_tb
-- Module Name : if_tb - behavioral
-- Project Name : exercise3
-- Target Devices : Basys3
--
-- Description : instruction fetch testbench  
-- --------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

entity if_tb is
end if_tb;

architecture behav of if_tb is
    component instruction_fetch is
        port (
                clk: in std_logic;
                rst: in std_logic;
                Jump : in std_logic;
                JumpAddr : in std_logic_vector(27 downto 0);
                PCSrc : in std_logic_vector(27 downto 0);
                PCNext : out std_logic_vector(27 downto 0);
                Instruction : out std_logic_vector(31 downto 0) 
        );
    end component;
    
    -- instantiate constants and signals
    constant delay : time := 125 ns;
    constant clkperiod : time := 70 ns;
    signal jumpAddr,pcSrc,pcNext : std_logic_vector(27 downto 0) := (others => '0');
    signal instruction : std_logic_vector(31 downto 0) := (others => '0');
    signal jump,clk,rst : std_logic := '0';
begin
    instr_fetch_inst : instruction_fetch
        port map (
            jumpAddr => jumpAddr,
            pcSrc => pcSrc,
            jump => jump,
            clk => clk,
            rst => rst,
            pcNext => pcNext,
            instruction => instruction
        );
        
        clk <= not clk after clkperiod / 2; -- clock process
        
        process is 
            begin
                rst <= '0';
                jump <= '0';
                jumpAddr <= x"0000000";
            for i in 0 to 7 loop
                pcSrc <= std_logic_vector(to_unsigned(i,28));
                wait for delay;
            end loop;
            jump <= '1';
            wait for delay;
            jumpAddr <= x"000000A";
            wait for delay;
            jump <= '0';
            pcSrc <= x"0000008";
            wait for delay;
            wait;
        end process;
end behav;
