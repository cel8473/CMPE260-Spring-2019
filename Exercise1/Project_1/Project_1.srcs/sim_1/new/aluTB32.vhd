-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 15 Jan 2019
-- Design Name: notN
-- Module Name: notN - dataFlow
-- Project Name: Exercise 1
-- Target Devices: Basys3
--
-- Description: N- bit logical left shift (SLL) unit
-----------------------------------------



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aluTB32 is
    constant N: integer := 32;
    constant Test: integer := 23;
end aluTB32;

architecture Behavioral of aluTB32 is
    Component alu32 is
        PORT (
            A   : IN std_logic_vector (N-1 downto 0);
            B   : IN std_logic_vector (N-1 downto 0);
            OP  : IN std_logic_vector (3 downto 0) ;
            Y   : OUT std_logic_vector (N-1 downto 0)
        );
    end Component ;
    signal a,b: std_logic_vector(N-1 downto 0);
    signal y: std_logic_vector(N-1 downto 0);
    signal operation: std_logic_vector(3 downto 0);
    type test_vector is record
        operation : std_logic_vector(3 downto 0);
        a,b : std_logic_vector(N-1 downto 0);
        y : std_logic_vector(N-1 downto 0);
    end record;
    type test_vectors is array(0 to Test-1) of test_vector;
    constant and_op : std_logic_vector(3 downto 0) := "1000";
    constant or_op : std_logic_vector(3 downto 0) := "1010";
    constant xor_op : std_logic_vector(3 downto 0) := "1011";
    constant srl_op : std_logic_vector(3 downto 0) := "1101";
    constant sra_op : std_logic_vector(3 downto 0) := "1110";
    constant test_vector_table : test_vectors :=(
        (operation => srl_op, a => x"00000006", b => x"00000002", y => x"00000001"),
        (operation => sra_op, a => x"00000006", b => x"00000001", y => x"00000003"),
        (operation => sra_op, a => x"00000006", b => x"00000002", y => x"00000001"),
        (operation => sra_op, a => x"F0000000", b => x"00000001", y => x"f8000000"),
        (operation => or_op, a => x"00000000", b => x"00000000", y => x"00000000"),
        (operation => or_op, a => x"00000000", b => x"0000000F", y => x"0000000F"),
        (operation => or_op, a => x"0000000F", b => x"0000000F", y => x"0000000F"),
        (operation => or_op, a => x"00000005", b => x"0000000A", y => x"0000000F"),
        (operation => or_op, a => x"0000000A", b => x"00000005", y => x"0000000F"),
        (operation => xor_op, a => x"00000000", b => x"00000000", y => x"00000000"),
        (operation => xor_op, a => x"00000000", b => x"0000000F", y => x"0000000F"),
        (operation => xor_op, a => x"0000000F", b => x"00000000", y => x"0000000F"),
        (operation => xor_op, a => x"0000000F", b => x"0000000F", y => x"00000000"),
        (operation => xor_op, a => x"00000005", b => x"0000000A", y => x"0000000F"),
        (operation => xor_op, a => x"0000000A", b => x"00000005", y => x"0000000F"),
        (operation => and_op, a => x"00000000", b => x"00000000", y => x"00000000"),
        (operation => and_op, a => x"00000000", b => x"0000000F", y => x"0000000F"),
        (operation => and_op, a => x"0000000F", b => x"00000000", y => x"0000000F"),
        (operation => and_op, a => x"0000000F", b => x"0000000F", y => x"0000000F"),
        (operation => srl_op, a => x"00000005", b => x"00000002", y => x"00000001"),
        (operation => and_op, a => x"00000004", b => x"00000003", y => x"00000007"),
        (operation => or_op, a => x"00000003", b => x"00000004", y => x"00000000"),
        (operation => xor_op, a => x"00000002", b => x"00000005", y => x"00000007")
        );
          
begin
    alu_inst : alu32 PORT MAP (
        A => a,
        B => b,
        OP => operation,
        Y => y
    );
    testing: process
    begin
        for i in 0 to Test-1 loop
            operation <= test_vector_table(i).operation;
            a <= test_vector_table(i).a;
            b <= test_vector_table(i).b;
            wait for 20ns;
        end loop;
    end process;
end Behavioral;