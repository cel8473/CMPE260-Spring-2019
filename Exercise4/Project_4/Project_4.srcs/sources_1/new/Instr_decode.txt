----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2019 01:49:35 PM
-- Design Name: 
-- Module Name: instr_decode - Behavioral
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

entity instr_decode is
    Port( 
        Instr, RegDataA, RegDataB : in std_logic_vector(31 downto 0);
        
        Jump, MemWr, MemRd, RegEnWb : out std_logic;
        JumpAddr : out std_logic_vector(27 downto 0);
        ALUOp : out std_logic_vector(3 downto 0);
        ValA, ValB : out std_logic_vector(31 downto 0);
        RegIdxA, RegIdxB, RegIdxWb : out std_logic_vector(4 downto 0)
        );
end instr_decode;

architecture Behavioral of instr_decode is
signal opcode, func: std_logic_vector(5 downto 0);
signal rs, rt, rd, shft_amt : std_logic_vector(4 downto 0);
signal immed : std_logic_vector(15 downto 0);
signal address : std_logic_vector(25 downto 0);
signal didnt_work : std_logic := '0';
signal sign_ext : std_logic_vector(31 downto 0) := (others => '0');
begin  
    opcode <= Instr(31 downto 26);
    rs <= Instr(25 downto 21);
    rt <= Instr(20 downto 16);
    rd <= Instr(15 downto 11);
    shft_amt <= Instr(10 downto 6);
    func <= Instr(5 downto 0);
    immed <= Instr(15 downto 0);
    address <= Instr(25 downto 0);
    jump_process : process(instr, opcode)
    begin
        if opcode = "000010" or opcode = "000011" then
            Jump <= '1';
        else
            Jump <= '0';
        end if;
    end process;
    
    jump_add_process : process(instr, opcode) begin
        if opcode = "000010" or opcode = "000011" then
            JumpAddr <= "00" & address;
        else
            JumpAddr <= (others => '0');
        end if;
    end process;
    
    alu_op_process : process(instr, opcode, func) begin
         case func is
            when "100000" => ALUOp <= "0100"; --add
            when "100100" => ALUOp <= "1010"; --and
            when "011001" => ALUOp <= "0110"; --multu
            when "100101" => ALUOp <= "1000"; --or
            when "000000" => ALUOp <= "1100"; --sll
            when "000011" => ALUOp <= "1110"; --sra
            when "000010" => ALUOp <= "1101"; --srl
            when "100011" => ALUOp <= "0101"; --sub
            when "100110" => ALUOp <= "1011"; --xor
            when others => ALUOp <= "0000"; --wrong functions
        end case;
    end process;
    
    vala_process : process(instr, opcode) begin
        if opcode = "000000" or --rtype
            opcode = "001000" or --addi
            opcode = "001100" or --andi
            opcode = "001101" or --ori
            opcode = "001110" or --xori
            opcode = "001111" or --sw, add
            opcode = "100011" then --lw, add
            
            ValA <= RegDataA;
        else
            ValA <= (others => '0');
        end if;
    end process;
    
    valb_process : process(instr, opcode, immed) begin
        if opcode = "001000" or --addi
            opcode = "001100" or --andi
            opcode = "001101" or --ori
            opcode = "001110" or --xori
            opcode = "001111" or --sw, add
            opcode = "100011" then --lw, add
            
            ValB <= "0000000000000000" & immed;
        else
            ValB <= RegDataB;
        end if;
    end process;
    
    memwr_process : process(instr, opcode) begin
        if opcode = "001111" then
            MemWr <= '1';
        else
            MemWr <= '0';
        end if;
    end process;
    
    memrd_process : process(instr, opcode) begin
        if opcode = "100011" then
            MemRd <= '1';
        else
            MemRd <= '0';
        end if;
    end process;
    
    RegIdxA_process : process(instr, opcode) begin
        if opcode = "000000" or
            opcode = "001100" or --andi
                    opcode = "001101" or --ori
                    opcode = "001110" or --xori
                    opcode = "001111" or --sw, add
                    opcode = "100011" then --lw, add
                RegIdxA <= rs;
        else
            RegIdxA <= (others => '0');
        end if;
    end process;
    
    RegIdxB_process : process(instr, opcode) begin
        if opcode = "000000" then
            RegIdxB <= rt;
        else
            RegIdxB <= (others => '0');
        end if;
    end process;
    
    RegIdxWb_process : process(instr, opcode) begin
        if opcode = "000000" then
            RegIdxWb <= rd;
        elsif opcode = "000000" or
            opcode = "001100" or --andi
                    opcode = "001101" or --ori
                    opcode = "001110" or --xori
                    opcode = "001111" or --sw, add
                    opcode = "100011" then --lw, add
                RegIdxWb <= rt;
        else
            RegIdxWb <= (others => '0');
        end if;
    end process;
    
    RegEnWb_process : process(instr, opcode) begin
        if opcode = "100011" then
            RegEnWb <= '1';
        else
            RegEnWb <= '0';
        end if;
    end process;
end Behavioral;
