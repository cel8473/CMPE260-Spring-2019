-- --------------------------------------------------------------------------------
-- Company : Rochester Institute of Technology (RIT )
-- Engineer : <Thomas Mountford > (<txm1717>)
--
-- Create Date : <4-1>
-- Design Name : Mips
-- Module Name : MIPS 
-- Project Name : Project 1
-- Target Devices : Basys3
--
-- Description : The main MIps process
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MIPS is
    Port (clkin:in std_logic;
          rstn: in std_logic;
          wixtest: out std_logic       
          );
end MIPS;

architecture Behavioral of MIPS is
---------------------------------------------- signals
signal clk_out1          : std_logic;
signal  reset             : std_logic;
signal  clk_in1           : std_logic;
signal locked: std_logic;
signal s1_jump,s2_jump : std_logic;
signal s0_pc_addr: std_logic_vector (27 downto 0):= (others => '0');
signal s1_pc_addr_plus4: std_logic_vector (27 downto 0):= (others => '0');
signal s0_jmp_addr,s2_jmp_addr,s3_jum_addr,s4_jmp_addr:std_logic_vector (27 downto 0);
signal s1_instruction,ALUresult,MemWrData: std_logic_vector(31 downto 0);
signal RegDataA_T,RegDataA1,RegDataB1,RegDataB_T,Din: std_logic_vector(31 downto 0); 
signal RegEnWB_T,memWR_T,memRD,we_T, ExWbEn,ExMemRd,ExMemWr : std_logic;
signal ValA1,ValB1 :std_logic_vector(31 downto 0);
signal AluopCode :std_logic_vector(3 downto 0);
signal RegIdxA,RegIdxA1,RegIdxB1,RegIdxB,RegIdxWb,wr_T,exWbIdx :std_logic_vector(4 downto 0);
signal WbIdx:std_logic_vector (4 downto 0);
signal MemRD2,MemWr2: std_logic;
signal  RegData,MemData: std_logic_vector(31 downto 0);

signal WbIdx1:  std_logic_vector(4 downto 0);
signal WbEn :  std_logic; 
signal WbData:  std_logic_vector(31 downto 0);
signal a1,a11,a21,a2,a12,a22,b1,b11,b21,b12,b22,b2,b30,a30,b88 :std_logic_vector (31 downto 0);
signal a4,a14,b14,b4:   std_logic_vector(27 downto 0):= (others => '0');
signal a3,b3 :std_logic_vector(3 downto 0);
signal a5,a15,a25,b5,b15,b25: std_logic_vector(4 downto 0);
signal a6,a17,a27,a7,a8,a18,a28,a9,b6,b7,b17,b27,b8,b9,b18,b28: std_logic;
signal b31,a31: std_logic := '1';
signal a32,b32 : std_logic_vector(4 downto 0):="00100";
component instr_fetch is
    port(clk,rst,jump : in std_logic;
        jumpaddr,PCSrc: in std_logic_vector(27 downto 0);
        PCNext: out std_logic_vector(27 downto 0);
        Instruction: out std_logic_vector(31 downto 0));
end component  instr_fetch;
--component clk_wiz_0
--port
-- (-- Clock in ports
--  -- Clock out ports
--  clk_out1          : out    std_logic;
--  -- Status and control signals
--  reset             : in     std_logic;
--  clk_in1           : in     std_logic
-- );
--end component;
component register_file is
	PORT (
		rst, clk, we : IN STD_LOGIC;
		rd1, rd2, wr : IN STD_LOGIC_VECTOR(4 downto 0);
		din          : IN STD_LOGIC_VECTOR(31 downto 0);
		out1, out2   : OUT STD_LOGIC_VECTOR(31 downto 0)
	);
end component register_file;
component instr_decode is
    port( RegDataA,RegDataB,Instruction: in std_logic_vector(31 downto 0); 
           Jump,RegEnWB,memWR,memRD : out std_logic;
           ValA,ValB : out std_logic_vector(31 downto 0);
           Aluop : out std_logic_vector(3 downto 0);
           RegIdxA,RegIdxB,RegIdxWb : out std_logic_vector(4 downto 0);
           Jumpaddr : out std_logic_vector(27 downto 0));
end component instr_decode;
component execute is
        Port (Aluop : in std_logic_vector (3 downto 0);
		  Idexa,Idexb :  in std_logic_vector (31 downto 0);
		  IdexWbIdx : in std_logic_vector (4 downto 0);
		  IdExWbEn,IdExMemRd,IdExMemWr : in std_logic;
		  
		  ALUresult,MemWrData :  out std_logic_vector (31 downto 0);
		  exMemWbIdx : out std_logic_vector (4 downto 0);
		  ExMemWbEn,ExMemRd,ExMemWr : out std_logic);
end component execute;
component mem_stage is
    port(clk,ExmemWr,ExmemRD : in std_logic;
        ALUresult,MemWrData: in std_logic_vector(31 downto 0);
        ExMemWbIdx : in std_logic_vector (4 downto 0);
        
        RegData,MemData: out std_logic_vector(31 downto 0);        
        WbIdx: out std_logic_vector (4 downto 0);
        MemRD,MemWr: out std_logic);
end component mem_stage;
component wb_stage is
   port(memWr,memRd : in std_logic;
        MemWbIdx: in std_logic_vector(4 downto 0);
        Memdata,Regdata : in std_logic_vector (31 downto 0);
        WbIdx: out std_logic_vector(4 downto 0);
        WbEn : out std_logic; 
        WbData: out std_logic_vector(31 downto 0));
end component wb_stage;
begin
--your_instance_name : clk_wiz_0
--   port map ( 
--  -- Clock out ports  
--   clk_out1 => clk_out1,
--  -- Status and control signals                
--   reset => rstn,
--   -- Clock in ports
--   clk_in1 => clkin
-- );
ff: process(clkin,rstn)
    begin
    if rstn = '1' then
        b1 <= (others => '0');
        b2 <= (others => '0');
        b3 <= (others => '0');
        b4 <= (others => '0');
        b5 <= (others => '0');
        b6 <= '0';
        --b7 <= a7;
        b8 <= '0';
        b9 <= '0';
        
        b11 <= (others => '0');
        b12 <= (others => '0');
        
        b14 <= (others => '0');       
        b15 <= (others => '0');
       
        b17 <= '0';
        b18 <= '0';
               
        b21 <= (others => '0');
        b22 <= (others => '0');
        b25 <= (others => '0');        
        b27 <='0';
        b28 <= '0';
        b30 <= (others => '0');
        b31 <= '1';
        b32 <= "00100";
        b88<=(others => '0');
        
        RegIdxA1<=(others => '0');
        RegIdxB1<=(others => '0'); 
        RegDataA_T <= (others => '0');
        RegDataB_T <= (others => '0');
        
        end if;
    
    if rising_edge(clkin) then   
     
        b1 <= s1_instruction;
        b2 <= a2;
        b3 <= a3;
        b4 <= a4;
        b5 <= a5;
        b6 <= a6;
        --b7 <= a7;
        b8 <= a8;
        b9 <= a9;
        b88<=ValA1;
        
        b11 <= a11;
        b12 <= a12;
        
        b14 <= s1_pc_addr_plus4;       
        b15 <= a15;
       
        b17 <= a17;
        b18 <= a18;
               
        b21 <= a21;
        b22 <= a22;
        b25 <= a25;        
        b27 <= a27;
        b28 <= a28;
        
        b30 <= WbData;
        b31 <= a31;
        b32 <= a32;
       
    
--        RegIdxA1<=RegIdxA;
--        RegIdxB1<=RegIdxB; 
--        RegDataA_T <= RegDataA1;
--        RegDataB_T <= RegDataB1;     
       
    end if;    
    end process;
--------
sif: instr_fetch port map (clk =>clkin,rst=>rstn ,jump=>b6 ,jumpaddr=>b4 ,PCSrc=>b14 ,PCNext=> s1_pc_addr_plus4,Instruction=>s1_instruction);
--a1 <= s1_instruction;
--a14 <= s1_pc_addr_plus4;

------- 
rf: register_file port map(rst =>rstn,clk =>clkin,we=>b31,rd1=>RegIdxA,rd2=>RegIdxB,wr=>b32,din=>b30,out1=>RegDataA1,out2=>RegDataB1);
                   
id: instr_decode  port map( RegDataA=>RegDataA1,RegDataB =>RegDataB1 ,Instruction=> b1,
Jump=> s2_jump,RegEnWB=>RegEnWB_T,memWR=>memWR_T,memRD=>memRD,ValA=>ValA1,ValB=>ValB1,Aluop=>AluopCode,RegIdxA=>RegIdxA,RegIdxB=>RegIdxB,RegIdxWb=>RegIdxWb,Jumpaddr=>s3_jum_addr);
--RegIdxA1<=RegIdxA;
--RegIdxB1<=RegIdxB; 

--RegDataA_T <= RegDataA1;
--RegDataB_T <= RegDataB1;


a2<=ValB1;
a3<=AluopCode;
a5<=RegIdxWb;
a4<=s3_jum_addr;
a6<=s2_jump;
--a7<=RegEnWB_T; -- this does not matter
a8<=memWR_T;
a9<=memRD;


----


ex: execute Port map(Aluop=>b3,Idexa=>b88,Idexb=>b2,IdexWbIdx=>b5,IdExWbEn=>b8,IdExMemRd=>b9,IdExMemWr=>b8,
ALUresult=>ALUresult,MemWrData=>MemWrData,exmemWbIdx=>exWbIdx,ExmemWbEn=>ExWbEn,ExMemRd=>ExMemRd,ExMemWr=>ExMemWr);

a11<=ALUresult;
a12<=MemWrData;
a15<=exWbIdx;

a17<=ExMemRd;
a18<=ExMemWr;

----
---send s0_jump_addr
--- send jump

mem: mem_stage port map (clk => clkin,ExmemWr=>b18,ExmemRD=>b17,ALUresult=>b11,MemWrData=>b12,ExMemWbIdx=>b15,
                        RegData=>RegData,MemData=>MemData,WbIdx=>WbIdx,MemRD=>MemRD2,MemWr=>MemWr2);
                        
                        
a21<=RegData;
a22<=MemData;
a25<=WbIdx;
a27<=MemRd2;
a28<=MemWr2;

-----
wb:  wb_stage port map(memWr=>b28,memRd=>b27,MemWbIdx=>b25,Memdata=>b22,Regdata=>b21,
        WbIdx=>WbIdx1,WbEn=>WbEn,WbData=>WbData);
a32<=WbIdx1;
a31<=WbEn;

--wixtest <= clk_out1;


end Behavioral;
