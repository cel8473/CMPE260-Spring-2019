----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 03:39:21 PM
-- Design Name: 
-- Module Name: dec_tb - Behavioral
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

entity dec_tb is
--  Port ( );
end dec_tb;

architecture Behavioral of dec_tb is
    Component instr_decode is
        Port(
                Instr, RegDataA, RegDataB : in std_logic_vector(31 downto 0);
                
                Jump, MemWr, MemRd, RegEnWb : out std_logic;
                JumpAddr : out std_logic_vector(27 downto 0);
                ALUOp : out std_logic_vector(3 downto 0);
                ValA, ValB : out std_logic_vector(31 downto 0);
                RegIdxA, RegIdxB, RegIdxWb : out std_logic_vector(4 downto 0)
                );
    end Component;
    
    signal Instr, RegDataA, RegDataB : std_logic_vector(31 downto 0);
                    
    signal Jump, MemWr, MemRd, RegEnWb : std_logic;
    signal JumpAddr : std_logic_vector(27 downto 0);
    signal ALUOp : std_logic_vector(3 downto 0);
    signal ValA, ValB : std_logic_vector(31 downto 0);
    signal RegIdxA, RegIdxB, RegIdxWb : std_logic_vector(4 downto 0);
   
    type test_vector is record
        Instr, RegDataA, RegDataB : std_logic_vector(31 downto 0);
    end record;
    type test_vectors is array (0 to 5) of test_vector;
    constant test_vector_table : test_vectors :=(
        (Instr => "00000011111010101010100000100000" , RegDataA => "00000000000000000000000000000001", RegDataB => "00000000000000000000000000000001"), --r-type add
        (Instr => "00100011111010100000000000000001" , RegDataA => "00000000000000000000000000000010", RegDataB => "00000000000000000000000000000010"), --i-type addi
        (Instr => "00000011111010101010100000100100" , RegDataA => "00000000000000000000000000001001", RegDataB => "00000000000000000000000000001001"),  --r-type and
        (Instr => "00111111111010100000000000000001" , RegDataA => "00000000000000000000000000000011", RegDataB => "00000000000000000000000000000011"), --i-type sw add
        (Instr => "10001111111010100000000000000001" , RegDataA => "00000000000000000000000000000100", RegDataB => "00000000000000000000000000000100"), --i type lw add
        (Instr => "00001100000000000000000000000001" , RegDataA => "00000000000000000000000000000101", RegDataB => "00000000000000000000000000000101") --j type jump
        );
begin
    dec : instr_decode PORT MAP(
        Instr => Instr,
        RegDataA => RegDataA,
        RegDataB => RegDataB,
        Jump => Jump,
        MemWr => MemWr,
        MemRd => MemRd,
        RegEnWb => RegEnWb,
        JumpAddr => JumpAddr,
        ALUOp => ALUOp,
        ValA => ValA,
        ValB => ValB,
        RegIdxA => RegIdxA,
        RegIdxB => RegIdxB,
        RegIdxWb => RegIdxWb
    );
    testing: process
    begin
        Instr <= "00000000000000000000000000000000";
        RegDataA <= "00000000000000000000000000000000";
        RegDataB <= "00000000000000000000000000000000";
        wait for 20 ns;
        for i in 0 to 5 loop
            Instr <= test_vector_table(i).Instr;
            RegDataA <= test_vector_table(i).RegDataA;
            RegDataB <= test_vector_table(i).RegDataB;
            wait for 40ns;
        end loop;
        report "End simulation" severity failure;
        wait;
    end process;
end Behavioral;
