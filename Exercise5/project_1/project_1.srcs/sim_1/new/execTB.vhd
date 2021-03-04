----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 06:53:59 PM
-- Design Name: 
-- Module Name: execTB - Behavioral
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

entity execTB is
    constant N : integer := 32;
    constant Test : integer := 9; 
end execTB;

architecture Behavioral of execTB is
    Component ExecuteStage is
        GENERIC( N : INTEGER := 32);
        Port (
            ALUOP : in std_logic_vector(3 downto 0);
            IdExA : in std_logic_vector(31 downto 0);
            IdExB : in std_logic_vector(31 downto 0);
            IdExWbIdx : in std_logic_vector(4 downto 0);
            IdExWbEn : in std_logic;
            IdExMemRd : in std_logic;
            IdExMemWr : in std_logic;
            MemWrData : out std_logic_vector(31 downto 0);
            ALUResult : out std_logic_vector(31 downto 0);
            ExMemWbIdx : out std_logic_vector(4 downto 0);
            ExMemWbEn : out std_logic;
            ExMemRd : out std_logic;
            ExMemWr : out std_logic 
             );
    end Component;
    signal ALUOP : std_logic_vector(3 downto 0);
    signal IdExA : std_logic_vector(31 downto 0);
    signal IdExB : std_logic_vector(31 downto 0);
    signal IdExWbIdx : std_logic_vector(4 downto 0);
    signal IdExWbEn : std_logic;
    signal IdExMemRd : std_logic;
    signal IdExMemWr : std_logic;
    signal MemWrData : std_logic_vector(31 downto 0);
    signal ALUResult : std_logic_vector(31 downto 0);
    signal ExMemWbIdx : std_logic_vector(4 downto 0);
    signal ExMemWbEn : std_logic;
    signal ExMemRd : std_logic;
    signal ExMemWr : std_logic;
    type test_vector is record
        ALUOP : std_logic_vector(3 downto 0);
        IdExA : std_logic_vector(31 downto 0);
        IdExB : std_logic_vector(31 downto 0);
        IdExWbIdx : std_logic_vector(4 downto 0);
        IdExWbEn : std_logic;
        IdExMemRd : std_logic;
        IdExMemWr : std_logic;
    end record;
    type test_vectors is array(0 to Test-1) of test_vector;
    constant add_op : std_logic_vector(3 downto 0) := "0100";
    constant and_op : std_logic_vector(3 downto 0) := "1010";
    constant multu_op : std_logic_vector(3 downto 0) := "0110";
    constant or_op : std_logic_vector(3 downto 0) := "1000";
    constant xor_op : std_logic_vector(3 downto 0) := "1011";
    constant sll_op : std_logic_vector(3 downto 0) := "1100";
    constant sra_op : std_logic_vector(3 downto 0) := "1110";
    constant srl_op : std_logic_vector(3 downto 0) := "1101";
    constant sub_op : std_logic_vector(3 downto 0) := "0101";
    constant test_vector_table : test_vectors :=(
        (ALUOP => add_op, IdExA => x"00000002", IdExB => x"00000003", IdExWbIdx => "00001", IdExWbEn => '1', IdExMemRd => '1', IdExMemWr => '0'),
        (ALUOP => and_op, IdExA => x"00000003", IdExB => x"00000003", IdExWbIdx => "00010",IdExWbEn => '0',IdExMemRd => '1',IdExMemWr => '0'),
        (ALUOP => or_op, IdExA => x"00000003", IdExB => x"00000004", IdExWbIdx => "00011",IdExWbEn => '1',IdExMemRd => '0',IdExMemWr => '1'),
        (ALUOP => xor_op, IdExA => x"00000006", IdExB => x"00000003", IdExWbIdx => "00100",IdExWbEn => '0',IdExMemRd => '0',IdExMemWr => '1'),
        (ALUOP => sll_op, IdExA => x"00000001", IdExB => x"00000001", IdExWbIdx => "00101",IdExWbEn => '1',IdExMemRd => '1',IdExMemWr => '0'),
        (ALUOP => sra_op, IdExA => x"F0000000", IdExB => x"00000001", IdExWbIdx => "00110",IdExWbEn => '0',IdExMemRd => '1',IdExMemWr => '0'),
        (ALUOP => srl_op, IdExA => x"00000006", IdExB => x"00000002", IdExWbIdx => "00111",IdExWbEn => '1',IdExMemRd => '0',IdExMemWr => '1'),
        (ALUOP => sub_op, IdExA => x"00000003", IdExB => x"00000001", IdExWbIdx => "01000",IdExWbEn => '0',IdExMemRd => '0',IdExMemWr => '1'),
        (ALUOP => multu_op, IdExA => x"00000003", IdExB => x"00000001", IdExWbIdx => "01000",IdExWbEn => '0',IdExMemRd => '0',IdExMemWr => '1')
        );    
begin
    exec_inst : ExecuteStage PORT MAP(
        ALUOP => ALUOP, IdExA => IdExA, IdExB => IdExB, IdExWbIdx => IdExWbIdx, IdExWbEn => IdExWbEn, IdExMemRd => IdExMemRd, IdExMemWr => IdExMemWr,
        MemWrData => MemWrData, ALUResult => ALUResult, ExMemWbIdx => ExMemWbIdx, ExMemWbEn => ExMemWbEn, ExMemRd => ExMemRd, ExMemWr => ExMemWr);
   testing : process
        begin 
            for i in 0 to Test-1 loop
                ALUOP <= test_vector_table(i).ALUOP;
                IdExA <= test_vector_table(i).IdExA;
                IdExB <= test_vector_table(i).IdExB;
                IdExWbIdx <= test_vector_table(i).IdExWbIdx;
                IdExWbEn <= test_vector_table(i).IdExWbEn;
                IdExMemRd <= test_vector_table(i).IdExMemRd;
                IdExMemWr <= test_vector_table(i).IdExMemWr;
                wait for 20 ns;
            end loop;
        end process; 
end Behavioral;
