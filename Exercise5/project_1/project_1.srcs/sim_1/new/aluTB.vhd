----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2019 06:12:07 PM
-- Design Name: 
-- Module Name: aluTB - Behavioral
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

entity aluTB is
    constant N : integer := 32;
    constant Test : integer := 9;
end aluTB;

architecture Behavioral of aluTB is
    Component ALU is
        Port(
           in1 : in std_logic_vector(N-1 downto 0);
           in2 : in std_logic_vector(N-1 downto 0);
           control : in std_logic_vector(3 downto 0);
           out1 : out std_logic_vector(N-1 downto 0)
        );
    end Component;
    signal in1, in2: std_logic_vector(N-1 downto 0);
    signal out1: std_logic_vector(N-1 downto 0);
    signal control: std_logic_vector(3 downto 0);
    type test_vector is record
        control : std_logic_vector(3 downto 0);
        in1,in2 : std_logic_vector(N-1 downto 0);
        out1 : std_logic_vector(N-1 downto 0);
    end record;
    type test_vectors is array(0 to Test-1) of test_vector;
    constant add_op : std_logic_vector(3 downto 0) := "0100";
    constant and_op : std_logic_vector(3 downto 0) := "1010";
    constant multu : std_logic_vector(3 downto 0) := "0110";
    constant or_op : std_logic_vector(3 downto 0) := "1000";
    constant xor_op : std_logic_vector(3 downto 0) := "1011";
    constant sll_op : std_logic_vector(3 downto 0) := "1100";
    constant sra_op : std_logic_vector(3 downto 0) := "1110";
    constant srl_op : std_logic_vector(3 downto 0) := "1101";
    constant sub_op : std_logic_vector(3 downto 0) := "0101";
    constant mul_op : std_logic_vector(3 downto 0) := "0110";
    constant test_vector_table : test_vectors :=(
        (control => add_op, in1 => x"00000001", in2 => x"00000001", out1 => x"00000002"), 
        (control => and_op, in1 => x"00000000", in2 => x"0000000F", out1 => x"0000000F"),
        (control => or_op, in1 => x"00000003", in2 => x"00000003", out1 => x"00000000"),
        (control => xor_op, in1 => x"00000002", in2 => x"00000005", out1 => x"00000007"),
        (control => sll_op, in1 => x"00000001", in2 => x"00000001", out1 => x"00000002"),
        (control => sra_op, in1 => x"F0000000", in2 => x"00000001", out1 => x"F8000000"),
        (control => srl_op, in1 => x"00000006", in2 => x"00000002", out1 => x"00000001"),
        (control => sub_op, in1 => x"00000002", in2 => x"00000001", out1 => x"00000001"),
        (control => mul_op, in1 => x"00000003", in2 => x"00000003", out1 => x"00001001")
        );       
begin
    alu_inst : alu 
        PORT MAP (in1 => in1, in2 => in2, control => control, out1 => out1);
    testing : process
    begin 
        for i in 0 to Test-1 loop
            control <= test_vector_table(i).control;
            in1 <= test_vector_table(i).in1;
            in2 <= test_vector_table(i).in2;
            wait for 20 ns;
        end loop;
    end process;
end Behavioral;
