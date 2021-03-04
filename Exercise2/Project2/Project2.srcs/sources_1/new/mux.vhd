-----------------------------------------
-- Company: RIT
-- Engineer: Chris Larson (cel8473@g.rit.edu)
--
-- Create Date: 22 Jan 2019
-- Design Name: mux
-- Module Name: mux - behavioral
-- Project Name: Exercise 1
-- Target Devices: Basys3
--
-- Description: N to M mux
-----------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux is
    GENERIC (
            M : INTEGER;
            LOG : INTEGER
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
end mux;

architecture behavioral of mux is
begin
    process(in0, in1, in2, in3, in4, in5, in6, in7, sel)
        begin
            case sel is
              when "000" => Output <= In0;
              when "001" => Output <= In1;
              when "010" => Output <= In2;
              when "011" => Output <= In3;
              when "100" => Output <= In4;
              when "101" => Output <= In5;
              when "110" => Output <= In6;
              when "111" => Output <= In7;
              when others => Output <= (others => '0');
          end case;
    end process;
end behavioral;