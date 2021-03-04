-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : <Thomas Mountford > (<txm1717>)
--
-- Create Date : <3-21>
-- Design Name : alu
-- Module Name : Execute stage
-- Project Name : <exersise 5 >
-- Target Devices : Basys3
--
-- Description : the alu
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.Numeric_Std.all;


entity alu is
    generic (N : integer:=32);
    port(in1,in2: in std_logic_vector(n-1 downto 0);
         control: in std_logic_vector(3 downto 0);
         out1 : out std_logic_vector(n-1 downto 0)
         );
  end alu;


architecture df of alu is 

component rip_car_Adder is
generic (n : integer := N);
port ( A,B :in std_logic_vector(n-1 downto 0);
        S: in std_logic;
        Cout: out std_logic;
        Sout : out std_logic_vector(n-1 downto 0));
end component;
component srl_alu is
    GENERIC (N : INTEGER := N); --bit width
    PORT (
            A : IN std_logic_vector (N -1 downto 0);
            SHIFT_AMT : IN std_logic_vector (N -1 downto 0);
            Y : OUT std_logic_vector (N -1 downto 0)
          );
end component ;
component sra_alu is
    GENERIC (N : INTEGER := N); --bit width
    PORT (
            A : IN std_logic_vector (N -1 downto 0);
            SHIFT_AMT : IN std_logic_vector (N -1 downto 0);
            Y : OUT std_logic_vector (N -1 downto 0)
          );
end component ;
component sll_alu is
    GENERIC (N : INTEGER := N); --bit width
    PORT (
            A : IN std_logic_vector (N -1 downto 0);
            SHIFT_AMT : IN std_logic_vector (N -1 downto 0);
            Y : OUT std_logic_vector (N -1 downto 0)
          );
end component ;
component multu is
 generic (n : integer := N/2);
 port( A,B: in std_logic_vector( n-1 downto 0);
        Prod : out std_logic_vector( n*2-1 downto 0)
        );
end component;

signal multio : std_logic_vector(n-1 downto 0);
signal addo : std_logic_vector(n-1 downto 0);
signal subo : std_logic_vector(n-1 downto 0);
signal srlo : std_logic_vector(n-1 downto 0);
signal srao : std_logic_vector(n-1 downto 0);
signal sllo : std_logic_vector(n-1 downto 0);
begin   
    add : rip_car_adder port map (A => in1, B => in2,S => '0',Cout =>open,Sout => addo);
    sub : rip_car_adder port map (A => in1, B => in2,S => '1',Cout =>open,Sout => subo);
    tsra: sra_alu port map(A => in1,Shift_amt =>in2, y => srao);
    tsrl: srl_alu port map(A => in1,Shift_amt =>in2, y => srlo);
    tsll: sll_alu port map(A => in1,Shift_amt =>in2, y => sllo);
    tmulti: multu port map(A => in1(n/2-1 downto 0),B => in2(n/2-1 downto 0), Prod => multio);
    
    process(control,in1,in2,addo,subo,srao,sllo,srlo,multio) is
    begin
    case control is    
    when "0100" => out1 <= addo; --add        
    when "1010" => out1 <= (in1 and in2);--and    
    when "0110" => out1 <= multio; --MultiU    
    when "1000" => out1 <= (in1 or in2);--or    
    when "1011" => out1 <= (in1 xor in2); -- xor    
    when "1100" => out1 <= sllo;--sll    
    when "1110" => out1 <= srao; -- sra    
    when "1101" => out1 <= srlo; -- srl   
    when "0101" => out1 <= subo+1; -- sub    
    when others => out1 <= (others => '0');
    end case;    
   end process;
end df;