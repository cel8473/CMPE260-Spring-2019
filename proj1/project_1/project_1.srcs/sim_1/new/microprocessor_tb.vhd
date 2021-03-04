library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity microprocessor_tb is
end microprocessor_tb;

architecture behav of microprocessor_tb is
component microprocessor is
    port (
    clkin,rst : in std_logic;
    ALUResult : out std_logic_vector(31 downto 0);
    wixtest : out std_logic);
end component;
    
    signal clk : std_logic := '0';
    signal rst : std_logic := '1';
    signal ALUResult : std_logic_vector(31 downto 0);
    signal wixtest : std_logic;
        
    constant delay : time := 50 ns;
begin
  
    mipsy : microprocessor
    port map(clk => clk,
        rst => rst,
        ALUResult => ALUResult,
        wixtest => wixtest);
  
    -- clk process
    clkin <= not clkin after delay / 2; 
  
    process is begin
    
        wait for delay;
        rst <= '0';
--        jump <= '1';

--        jumpAddr <=x"0000040";  -- fibonacci

        
--        jump <= '0';
        for i in 0 to 26 loop
            wait for delay;
        end loop;

        wait;
    end process;
end behav;
