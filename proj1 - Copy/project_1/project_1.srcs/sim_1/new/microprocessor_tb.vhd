-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : <Thomas Mountford > (<txm1717>)
--
-- Create Date : <4-1>
-- Design Name : MipsTb
-- Module Name : MIPS 
-- Project Name : Project 1
-- Target Devices : Basys3
--
-- Description : The test bench for the main MIps process
-- --------------------------------------------------------------------------------

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MIPS_tb is
end;

architecture bench of MIPS_tb is

  component MIPS
      Port (clkin:in std_logic;
            rstn: in std_logic;
            wixtest: out std_logic         
             );
  end component;

signal clkin: std_logic;
signal rstn: std_logic;
signal wixtest: std_logic;
constant clock_period: time := 10 ns;


begin

  uut: MIPS port map ( clkin   => clkin,
                       rstn    => rstn
                       --wixtest => wixtest
                       );

  stimulus: process
  begin
  
    rstn <= '1';
    wait for 8*clock_period;
    rstn <='0';
    wait for 50*clock_period;

    -- Put test bench stimulus code here

    
    wait;
  end process;

  clocking: process
  begin
      clkin <= '0';
      wait for clock_period/2;
      clkin <= '1'; 
      wait for clock_period/2;
    
  end process;

end;
  
