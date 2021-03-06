----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/05/2019 06:25:26 PM
-- Design Name: 
-- Module Name: instruction_fetch - Behavioral
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

entity instruction_fetch is
    Port (
            clk: in std_logic;
            rst: in std_logic;
            Jump : in std_logic;
            JumpAddr : in std_logic_vector(27 downto 0);
            PCSrc : in std_logic_vector(27 downto 0);
            PCNext : out std_logic_vector(27 downto 0);
            Instruction : out std_logic_vector(31 downto 0)
            );
end instruction_fetch;

architecture structural of instruction_fetch is
    Component instruction_memory is
        PORT(
            addrIM : IN std_logic_vector(27 downto 0);
            d_out : OUT std_logic_vector(31 downto 0)
            );
    end Component;
    
    Component adder is
        PORT(
               addrAdder : IN std_logic_vector(27 downto 0);
               nextAddr : OUT std_logic_vector(27 downto 0)
             );    
    end Component;
    
    Component program_counter is
        PORT(
            rstPC : in std_logic;
            clkPC : in std_logic;
            input : in std_logic_vector(27 downto 0);
            output : out std_logic_vector(27 downto 0) 
            );
    end Component;
    
    Component mux2 is 
        PORT(
            jumpAddrMux : IN std_logic_vector(27 downto 0);
            pcSrcMux : IN std_logic_vector(27 downto 0);
            en : IN std_logic;
            pcAddr : OUT std_logic_vector(27 downto 0)
            );
    end Component;
       
    signal muxSignal,pc_regSignal : std_logic_vector(27 downto 0);
     
begin    
    im_comp : instruction_memory
        port map(addrIM => pc_regSignal, d_out => Instruction);
        
    add_comp : adder
        port map(AddrAdder => pc_regSignal, nextAddr => PCNext);
        
    PC_comp : program_counter
        port map(rstPC => rst, clkPC => clk, input => muxSignal, output => pc_regSignal);
        
     mux_comp : mux2
        port map(jumpAddrMux => JumpAddr, PCSrcMux => PCSrc , en => Jump , pcAddr => muxSignal);
                 
end structural;
