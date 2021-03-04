library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity microprocessor is
    port (
        clkin,rst : in std_logic;
        ALUResult : out std_logic_vector(31 downto 0);
        wixtest : out std_logic);
end microprocessor;

architecture behav of microprocessor is
    component clk_wiz_0
        port
         (-- Clock in ports
          -- Clock out ports
          clk_out1          : out    std_logic;
          -- Status and control signals
          reset             : in     std_logic;
          clk_in1           : in     std_logic
         );
    end component;
    
    component register_file is
    	PORT (
        rst, clk, we : IN STD_LOGIC;
        rd1, rd2, wr : IN STD_LOGIC_VECTOR(4 downto 0);
        din          : IN STD_LOGIC_VECTOR(31 downto 0);

        out1, out2   : OUT STD_LOGIC_VECTOR(31 downto 0));
    end component;
    
    component instr_fetch is
        port (
            jumpAddr,pcSrc : in std_logic_vector(27 downto 0);
            jump,clk,rst : in std_logic;
            pcNext : out std_logic_vector(27 downto 0);
            instruction : out std_logic_vector(31 downto 0));
    end component;
    
    component instr_decode is
        port (
            instruction : in std_logic_vector(31 downto 0); -- opcode for instruction being decoded
            regDataA,regDataB : in std_logic_vector(31 downto 0);    -- data from the first/second reg file
            jump : out std_logic;   -- determines whether or not to jump
            jumpAddr : out std_logic_vector(27 downto 0);   -- address to jump to
            valA,valB : out std_logic_vector(31 downto 0);  -- first/second value for ALU to act on
            memWr : out std_logic;  -- tells if writing to memory
            memRd : out std_logic;  -- tells if reading from memory
            aluOP : out std_logic_vector(3 downto 0);   -- opcode specific to ALU
            regIdxA,regIdxB : out std_logic_vector(4 downto 0); -- index to access in first/second reg
            regIdxWb : out std_logic_vector(4 downto 0);    -- reg index for writeback, destination reg
            regEnWb : out std_logic); -- determines if register is being written to
    end component;
    component execute is
        generic(N : integer := 32);
        port (
                ALUOp : in std_logic_vector(3 downto 0);
                IdExA,IdExB : in std_logic_vector(N-1 downto 0);
                IdExWbIdx : in std_logic_vector(4 downto 0);
                IdExWbEn,IdExMemRd,IdExMemWr :  in std_logic;
                MemWrData : out std_logic_vector(N-1 downto 0);
                ALUResult : out std_logic_vector(N-1 downto 0);
                ExMemWbIdx : out std_logic_vector(4 downto 0);
                ExMemWbEn,ExMemRd,ExMemWr : out std_logic);
        end component;
    
    component mem_stage is
        generic (
                N : integer := 32;
                M : integer := 5);
        port (
                clk : in std_logic;
                ALUResult,MemWrData : in std_logic_vector(N-1 downto 0);    -- result of ALU from execute, data to be written to data_mem // last 10 bits of aluresult is addr
                ExMemWr,ExMemRd : in std_logic; -- write/read bit from execute, passes to wb stage
                ExMemWbIdx : in std_logic_vector(M-1 downto 0); -- wb idx from execute, passes to wb stage
                RegData,MemData : out std_logic_vector(N-1 downto 0);   -- reg data from exec, data retrieved from data_mem
                MemWr,MemRd : out std_logic;    -- mem write/read bit
                WbIdx : out std_logic_vector(M-1 downto 0));    -- writeback idx         
    end component;
    
    component wb_stage is
        port (
            MemWbIdx : in std_logic_vector(4 downto 0); -- writeback idx
            MemWr,MemRd : in std_logic; -- bit that determines to write / data was read
            RegData,MemData : in std_logic_vector(31 downto 0); -- data passed in from reg / from memory
            WbData : out std_logic_vector(31 downto 0); -- data to be written back 
            WbIdx : out std_logic_vector(4 downto 0);   -- writeback idx
            WbEn : out std_logic);  -- bit that determines if anything was written back   
    end component;
    signal clk_out1, reset, clk_in1 : std_logic;
    signal s0instruction  : std_logic_vector(31 downto 0);
    signal s1instruction : std_logic_vector(31 downto 0);
    signal s1pcAddr : std_logic_vector(27 downto 0); 
    signal s0jumpAddr : std_logic_vector(27 downto 0);
    signal s1jumpAddr : std_logic_vector(27 downto 0);
    signal s2jumpAddr : std_logic_vector(27 downto 0);
    signal s3jumpAddr  : std_logic_vector(27 downto 0);
    signal s1newjumpAddr : std_logic_vector(27 downto 0);
    signal s0jump, s1jump, s2jump, s3jump, SPnewjump: std_logic;
    signal s1out1, s1out2 : std_logic_vector(31 downto 0);
    signal S1memWr : std_logic;
    signal s1memRd : std_logic;
    signal s1regEnWb : std_logic;
    signal s1valA, s1valB : std_logic_vector(31 downto 0);
    signal s1aluOP : std_logic_vector(3 downto 0);
    signal s1rd1, S1rd2 :  std_logic_vector(4 downto 0);
    signal S1regIdxWb : std_logic_vector(4 downto 0);
    signal s0pcNext : std_logic_vector(27 downto 0) := (others => '0');
    signal s1pcNext : std_logic_vector(27 downto 0);    
    signal s2ALUOp : std_logic_vector(3 downto 0);
    signal s2IdExA, s2IdExB : std_logic_vector(31 downto 0);
    signal s2IdExWbIdx : std_logic_vector(4 downto 0);
    signal s2IdExWbEn, s2IdExMemRd, s2IdExMemWr : std_logic;
    signal s2MemWrData, s3MemWrData : std_logic_vector(31 downto 0);
    signal s2ALUResult, s3ALUResult : std_logic_vector(31 downto 0);
    signal s2ExMemWbIdx, s3ExMemWbIdx : std_logic_vector(4 downto 0);
    signal s2ExMemWbEn,s2ExMemRd,s2ExMemWr, s3ExMemWr, s3ExMemRd : std_logic;
    signal s3RegData, s3MemData, s4RegData, s4MemData : std_logic_vector(31 downto 0);
    signal s3MemWr, s3MemRd, s4MemWr, s4MemRd : std_logic;
    signal s3WbIdx, s4MemWbIdx : std_logic_vector(4 downto 0);
    signal SPdin : std_logic_vector(31 downto 0);
    signal SPwr : std_logic_vector(4 downto 0);
    signal SPwe : std_logic;
    signal aluresults : std_logic_vector(31 downto 0);
    signal s3regwr, s4regwr : std_logic;
begin
    your_instance_name : clk_wiz_0
       port map ( 
      -- Clock out ports  
       clk_out1 => clk_out1,
      -- Status and control signals                
       reset => rst,
       -- Clock in ports
       clk_in1 => clkin
     );
        
    fetchstage : instr_fetch
    port map(jumpAddr => s0jumpAddr,pcSrc => s0pcNext, jump => s0jump,clk => clkin, rst => rst, pcNext => s1pcNext, instruction => s0instruction);
    s0tos1 : process(clkin,rst) is begin
        if rst = '1' then
            s1jump <= '0';
            s1instruction <= (others => '0');
            s1jumpAddr <= (others => '0');
        elsif rising_edge(clkin) then
            s1instruction <= s0instruction;
            s0pcNext <= s1pcNext;
            s1jump <= s0jump;
            s1jumpAddr <= s0jumpAddr;
        end if;
    end process;
    
    decodestage : instr_decode
    port map(instruction => s1instruction, regDataA => s1out1, regDataB => s1out2, jump => spnewjump, jumpAddr => s1newjumpAddr,valA => s1valA,valB => s1valB,
        memWr => s1memWr,memRd => s1memRd,aluOP => s1aluOP,regIdxA => s1rd1,regIdxB => s1rd2,regIdxWb => s1regIdxWb,regEnWb => s1regEnWb);    

    s1tos2 : process(clkin,rst) is begin
        if rst = '1' then
            s2ALUOp <= (others => '0');
            s2IdExA <= (others => '0');
            s2IdExB <= (others => '0');
            s2IdExWbIdx <= (others => '0');  
            s2IdExWbEn <= '0';
            s2IdExMemRd <= '0';
            s2IdExMemWr <= '0';
            s2jump <= '0';
            s2jumpAddr <= (others => '0');
        elsif rising_edge(clkin) then
            s2ALUOp <= s1aluOP;
            s2IdExA <= s1valA;
            s2IdExB <= s1valB;
            s2IdExWbIdx <= s1regIdxWb;
            s2IdExWbEn <= s1regEnWb;
            s2IdExMemRd <= s1memRd;
            s2IdExMemWr <= s1memWr;
            s2jump <= spnewjump;
            s2jumpAddr <= s1newjumpAddr;
        end if;
    end process;

    executestage : execute
    generic map(N => 32)
    port map(ALUOp => s2ALUOp,
        IdExA => s2IdExA,IdExB => s2IdExB,IdExWbIdx => s2IdExWbIdx,IdExWbEn => s2IdExWbEn,IdExMemRd => s2IdExMemRd,IdExMemWr => s2IdExMemWr,MemWrData => s2MemWrData,ALUResult => s2ALUResult,
        ExMemWbIdx => s2ExMemWbIdx,ExMemWbEn => s2ExMemWbEn,ExMemRd => s2ExMemRd,ExMemWr => s2ExMemWr);
    s2tos3 : process(clkin,rst) is begin
        if rst = '1' then
            s3ALUResult <= (others => '0');
            s3MemWrData <= (others => '0');
            s3ExMemWr <= '0';
            s3ExMemRd <= '0';
            s3ExMemWbIdx <= (others => '0'); 
        elsif rising_edge(clkin) then
            s3ALUResult <= s2ALUResult;
            s3MemWrData <= s2MemWrData;
            s3ExMemWr <= s2ExMemWr;
            s3ExMemRd <= s2ExMemRd;
            s3ExMemWbIdx <= s2ExMemWbIdx;  
            s0jump <= s2jump;    
            s0jumpAddr <= s2jumpAddr;  
            ALUResult <= s2ALUResult;  
        end if;
    end process;

    memorystage : mem_stage
    generic map(N => 32, M => 5)
    port map(clk => clkin,
        ALUResult => s3ALUResult,MemWrData => s3MemWrData,ExMemWr => s3ExMemWr,ExMemRd => s3ExMemRd,ExMemWbIdx => s3ExMemWbIdx,
        RegData => s3RegData,MemData => s3MemData,MemWr => s3MemWr, MemRd => s3MemRd,WbIdx => s3WbIdx);

    s3tos4 : process(clkin,rst) is begin
        if rst = '1' then
            s4MemWbIdx <= (others => '0');
            s4MemWr <= '0';
            s4MemRd <= '0';
            s4RegData <= (others => '0');
            s4MemData <= (others => '0');
        elsif rising_edge(clkin) then
            s4MemWbIdx <= s3WbIdx;
            s4MemWr <= s3MemWr;
            s4MemRd <= s3MemRd;
            s4RegData <= s3RegData;
            s4MemData <= s3MemData;
        end if;
    end process;

    writebackstage : wb_stage
    port map(MemWbIdx => s4MemWbIdx,
        MemWr => s4MemWr,MemRd => s4MemRd,RegData => s4RegData,MemData => s4MemData,WbData => spdin,WbIdx => spwr,WbEn => spwe);

    regfile : register_file
    port map(rst => rst,clk => clkin,rd1 => s1rd1,rd2 => s1rd2,wr => spwr,din => spdin,we => spwe,out1 => s1out1,out2 => s1out2);
 wixtest <= clk_out1;       
end behav;