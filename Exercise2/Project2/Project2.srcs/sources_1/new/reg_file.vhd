----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/29/2019 06:14:56 PM
-- Design Name: 
-- Module Name: reg_file - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL ;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_file is
    GENERIC(
            M : INTEGER := 8;
            N : INTEGER := 8;
            LOG : INTEGER := 3
            );
    Port(
        WR : IN std_logic_vector(LOG-1 downto 0);
        rd1 : IN std_logic_vector(LOG-1 downto 0);
        rd2 : IN std_logic_vector(LOG-1 downto 0);
        input : IN std_logic_vector(N-1 downto 0);
        clk : IN std_logic;
        we : IN std_logic;
        rst : IN std_logic;
        out1 : OUT std_logic_vector(N-1 downto 0);
        out2 : OUT std_logic_vector(N-1 downto 0)
        );
end reg_file;

architecture struct of reg_file is
    Component andN is
        PORT (
                A : IN std_logic;
                B : IN std_logic;
                Y : OUT std_logic
               );
    end Component;
    
    Component reg_module is
        GENERIC(N: INTEGER);
        PORT(
            input : IN std_logic_vector(N-1 downto 0);
            clk : IN std_logic;
            we : IN std_logic;
            rst : IN std_logic;
            output : OUT std_logic_vector(N-1 downto 0)
         );
    end Component;
    
    Component decoder is 
        GENERIC (
            M : INTEGER;
            N : INTEGER
        );
        PORT (
                input : IN std_logic_vector(LOG-1 downto 0);
                output : OUT std_logic_vector(M-1 downto 0);
                clk : IN std_logic;
                rst : in std_logic
               );
    end Component;
    
    Component mux is
        GENERIC (
                M : INTEGER := 8;
                LOG : INTEGER := 3
                ); --bit width
        PORT (
                In1    : IN std_logic_vector(M-1 downto 0);
                In2    : IN std_logic_vector(M-1 downto 0);
                In3    : IN std_logic_vector(M-1 downto 0);
                In4    : IN std_logic_vector(M-1 downto 0);
                In5    : IN std_logic_vector(M-1 downto 0);
                In6    : IN std_logic_vector(M-1 downto 0);
                In7    : IN std_logic_vector(M-1 downto 0);
                In0    : IN std_logic_vector(M-1 downto 0);
                sel    : IN std_logic_vector(LOG-1 downto 0);
                Output : OUT std_logic_vector(M-1 downto 0)
                );
    end Component;
    
    signal out_dec : std_logic_vector(M-1 downto 0);
    signal in_result0 : std_logic; 
    signal in_result1 : std_logic;
    signal in_result2 : std_logic; 
    signal in_result3 : std_logic; 
    signal in_result4 : std_logic; 
    signal in_result5 : std_logic; 
    signal in_result6 : std_logic; 
    signal in_result7 : std_logic; 
    signal out_result0 : std_logic_vector(N-1 downto 0);
    signal out_result1 : std_logic_vector(N-1 downto 0); 
    signal out_result2 : std_logic_vector(N-1 downto 0); 
    signal out_result3 : std_logic_vector(N-1 downto 0); 
    signal out_result4 : std_logic_vector(N-1 downto 0); 
    signal out_result5 : std_logic_vector(N-1 downto 0); 
    signal out_result6 : std_logic_vector(N-1 downto 0); 
    signal out_result7 : std_logic_vector(N-1 downto 0); 

begin
    decoder_comp : decoder
        generic map (M => M, N => LOG)
        port map( input => wr, output => out_dec, clk => clk, rst => rst);  
    and_comp0 : andN
        port map ( A => out_dec(0), B => we, Y => in_result0);
    and_comp1 : andN
        port map ( A => out_dec(1), B => we, Y => in_result1);
    and_comp2 : andN
        port map ( A => out_dec(2), B => we, Y => in_result2);
    and_comp3 : andN
        port map ( A => out_dec(3), B => we, Y => in_result3);            
    and_comp4 : andN
        port map ( A => out_dec(4), B => we, Y => in_result4);          
    and_comp5 : andN
        port map ( A => out_dec(5), B => we, Y => in_result5);                
    and_comp6 : andN
        port map ( A => out_dec(6), B => we, Y => in_result6);            
    and_comp7 : andN
        port map ( A => out_dec(7), B => we, Y => in_result7);                              
    reg_comp0 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result0, rst => rst, output => out_result0);
    reg_comp1 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result1, rst => rst, output => out_result1);
    reg_comp2 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result2, rst => rst, output => out_result2);
    reg_comp3 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result3, rst => rst, output => out_result3);
    reg_comp4 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result4, rst => rst, output => out_result4);
    reg_comp5 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result5, rst => rst, output => out_result5);
    reg_comp6 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result6, rst => rst, output => out_result6);
    reg_comp7 : reg_module 
        generic map ( N => N)
        port map ( input => input, clk => clk, we => in_result7, rst => rst, output => out_result7);
    mux_comp1 : mux
        generic map ( M => M)
        port map ( In0 => out_result0, In1 => out_result1, In2 => out_result2, In3 => out_result3,
                   In4 => out_result4, In5 => out_result5, In6 => out_result6, In7 => out_result7, sel => rd1, Output => out1);
    mux_comp2 : mux
        generic map ( M => M)
        port map ( In0 => out_result0, In1 => out_result1, In2 => out_result2, In3 => out_result3,
                           In4 => out_result4, In5 => out_result5, In6 => out_result6, In7 => out_result7, sel => rd2, Output => out2);                                               
end struct;
