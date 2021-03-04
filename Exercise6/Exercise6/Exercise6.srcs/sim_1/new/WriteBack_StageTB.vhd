library IEEE ;
use IEEE . STD_LOGIC_1164 .ALL ;
use IEEE . STD_LOGIC_UNSIGNED .ALL;
use IEEE . NUMERIC_STD .ALL;

entity WriteBack_stagetb is
end entity;

architecture behav of WriteBack_stagetb is
    component WriteBack_Stage is
        port (
            MemWbIdx : in std_logic_vector(4 downto 0); -- writeback idx
            MemWr,MemRd : in std_logic; -- bit that determines to write / data was read
            RegData,MemData : in std_logic_vector(31 downto 0); -- data passed in from reg / from memory
            WbData : out std_logic_vector(31 downto 0); -- data to be written back 
            WbIdx : out std_logic_vector(4 downto 0);   -- writeback idx
            WbEn : out std_logic);  -- bit that determines if anything was written back            
    end component;
    --constant delay : time := 
    signal MemWbIdx : std_logic_vector(4 downto 0) := (others => '0');
    signal MemWr,MemRd : std_logic := '0';
    signal RegData,MemData : std_logic_vector(31 downto 0) := (others => '0');
    signal WbData : std_logic_vector(31 downto 0);
    signal WbEn : std_logic;
    signal WbIdx : std_logic_vector(4 downto 0);
    constant delay : time := 150 ns;
begin
    wb_stage_inst : WriteBack_stage
    port map (
        MemWbIdx => MemWbIdx,
        MemWr => MemWr,
        MemRd => MemRd,
        RegData => RegData,
        MemData => MemData,
        WbData => WbData,
        WbIdx => WbIdx,
        WbEn => WbEn);
    process is
    begin
        MemWbIdx <= "00000";
        assert WbIdx = "00000"
        report "WbIdx FAILED in wb_stage";  -- WbIdx tied to MemWbIdx
        wait for delay;
        MemWbIdx <= "11111";
        wait for delay;
        assert WbIdx = "11111"
        report "WbIdx FAILED in wb_stage";
        
        MemWr <= '0';
        wait for delay;
        assert WbEn = '0'
        report "WbEn FAILED in wb_stage";   -- WbEn tied to MemWr
        MemWr <= '1';
        wait for delay;
        assert WbEn = '1'
        report "WbEn FAILED in wb_stage";
    
        MemRd <= '0';
        RegData <= x"55555555";
        MemData <= x"AAAAAAAA";
        wait for delay;
        assert WbData = x"55555555"
        report "WbData FAILED with reg = 55555555 in wb_stage"; -- writeback data should be from register
        MemRd <= '1';
        wait for delay;
        assert WbData = x"AAAAAAAA"
        report "WbData FAILED in mem = AAAAAAAA in wb_stage";   -- writeback data should be from memory
    end process;
end behav;