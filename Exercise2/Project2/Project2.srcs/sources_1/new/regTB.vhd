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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regtb is
    
--  Port ( );
end regtb;

architecture Behavioral of regtb is
    component reg_file is
        GENERIC(
                M : INTEGER := 8;
                N : INTEGER := 8;
                LOG : INTEGER := 3
                );
        Port (
                rd1, rd2, wr : IN std_logic_vector (2 downto 0);
                input : IN std_logic_vector(7 downto 0);
                clk, we, rst : IN std_logic;
                out1, out2 : OUT std_logic_vector(7 downto 0));
    end component;



Signal rd1, rd2, wr : std_logic_vector (2 downto 0) := "111";
Signal input : std_logic_vector (7 downto 0) := "11111111";
Signal clk, we, rst : std_logic := '1';
Signal out1, out2: std_logic_vector (7 downto 0) := "11111111";


begin
    --Instantiate register file
    registerFile: reg_file
    port map (rd1=>rd1, rd2=>rd2, wr=>wr, input=>input, clk=>clk, we=>we, rst=>rst, out1=>out1, out2=>out2);
    process
        begin
            rst <= '1';
            wait for 40 ns;
            rst <= '0';
            for i in 7 downto 0 loop
                input <= std_logic_vector(to_unsigned(i, 8));
                rd1 <= "000";
                rd2 <= "000";
                we <= '1';
                wr <= std_logic_vector(to_unsigned(i, 3));
                wait for 80 ns;       
            end loop;
            for i in 7 downto 0 loop
                we <= '0';
                wait for 80 ns;
                rd1 <=std_logic_vector(to_unsigned(i, 3));
                rd2 <= std_logic_vector(to_unsigned(i, 3));
                wait for 80 ns;
                assert out1 = std_logic_vector(to_unsigned(i, 7))
                Report "Error";
                assert out2 = std_logic_vector(to_unsigned(i, 7))
                Report "Error";
                wait for 80 ns;
            end loop;
      end process;
      process
        begin 
            clk <= '0';
            wait for 20 ns;
            clk <= '1';
            wait for 20 ns;
      end process;
end Behavioral;