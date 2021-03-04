----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2019 07:36:44 PM
-- Design Name: 
-- Module Name: multu - Behavioral
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

entity multu is
    GENERIC( N : INTEGER := 32);
    Port (
        A : in std_logic_vector(N-1 downto 0); 
        B : in std_logic_vector(N-1 downto 0);
        Prod : out std_logic_vector(N*2-1 downto 0)
    );
end multu;

architecture Behavioral of multu is

type car is Array(n-2 downto 0) of std_logic_vector(n-1 downto 0);
type sm is Array(n-2 downto 0) of std_logic_vector(n-2 downto 0);
type inp is array (n-2 downto 0, n-1 downto 0, 2 downto 0) of std_logic;
signal carries : car;--:= (others =>(others =>'0'));
signal isum : sm;--:= (others =>(others =>'0'));
signal product : std_logic_vector(n*2-1 downto 0):= (others => '0');
signal input_abc: inp;
Component Full_Adder is
   Port (
     A : in std_logic;
     B : in std_logic;
     Cin : in std_logic;
     Cout : out std_logic;
     Sum : out std_logic);
end Component;
begin
    ---------------------------------------- input loop
    inpr:for i in 1 to n-2 generate --n-2
    input_abc(0,i,0) <= A(i+1) and B(0);
    input_abc(0,i,1) <= A(i) and B(0+1);
    input_abc(0,i,2) <= A(i-1) and B(0+2);    
    end generate inpr;
    input_abc(0,n-1,1) <= A(n-1) and B(1); --n-1
    input_abc(0,n-1,2) <= A(n-2) and B(2); --n-2
    input_abc(0,0,0) <= A(1) and B(0);
    input_abc(0,0,1) <= A(0) and B(1);
    inpmc :for j in 1 to n-3 generate --n-3     
    inpmr:for i in 1 to n-1 generate --n-1
    input_abc(j,i,0) <= A(i) and B(j+1);
    input_abc(j,i,1) <= A(i-1) and B(j+2);
    input_abc(j,i,2) <= '0';    
end generate inpmr;
end generate inpmc;    
input_abc(n-2,n-1,0) <= A(n-1) and B(n-1) ; --abc(n-2,n-1),n-1,n-1


product(0) <= A(0) and B(0);
    col1 :for j in 0 to n-2 generate 
        RowL: for i in 0 to n-1 generate 
    ------------------------------------------- first of the adders
          firstadder1:if (i = 0 and j= 0) generate                        
            Addl: full_adder port map (A =>input_abc(0,0,0) ,B =>input_abc(0,0,1),Cin => '0' , Sum => product(1),Cout =>carries(0)(0));
            end generate firstadder1;
          lastadder1: if ( i=n-1 and j =0) generate                
            AddN : full_adder port map ( A=>'0' , B=> input_abc(0,i,1) ,Cin=>input_abc(0,i,2),Sum => isum(0)(n-2), Cout => carries(0)(n-1));
          end generate lastadder1;
          genadder1:if (j = 0 and i>0 and i< n-1) generate
            AddN : full_adder port map ( A=>input_abc(0,i,0) , B=> input_abc(0,i,1) ,Cin=>input_abc(0,i,2),Sum => isum(0)(i-1), Cout => carries(0)(i));
          end generate genadder1; 
      
      ------------------------------------------- middle adders
          firstaddern:if (i = 0 and 0<j and j< n-2) generate
            Addl: full_adder port map (A =>isum(j-1)(0) ,B =>'0',Cin => carries(j-1)(0) , Sum => product(j+1),Cout =>carries(j)(0));
          end generate firstaddern;
          lastaddern: if ( i=n-1 and 0<j and j< n-2) generate
            AddN : full_adder port map ( A=>input_abc(j,i,0) , B=> input_abc(j,i,1) ,Cin=>carries(j-1)(n-1),Sum => isum(j)(n-2), Cout => carries(j)(n-1));
          end generate lastaddern;
          genaddern:if (0<i and i< n-1 and 0<j and j< n-2) generate
            AddN : full_adder port map ( A=>isum(j-1)(i) , B=> input_abc(j,i,1) ,Cin=>carries(j-1)(i),Sum => isum(j)(i-1), Cout => carries(j)(i));
          end generate genaddern; 
      
      ---------------------------------------- last of the adders
           firstaddern1:if (i = 0 and j= n-2) generate
             Addl: full_adder port map (A =>isum(j-1)(0) ,B =>carries(j-1)(0),Cin => '0' , Sum => product(n-1),Cout =>carries(j)(0));
          end generate firstaddern1;
          lastaddern1: if ( i=n-1 and j =n-2) generate
            AddN : full_adder port map ( A=>input_abc(j,i,0) , B=> carries(j-1)(n-1) ,Cin=>carries(j)(n-2),Sum => product(N*2-2), Cout => product(N*2-1));
          end generate lastaddern1;
          genaddern1:if (j = n-2 and 0 < i and i < n-1) generate
            AddN : full_adder port map ( A=>isum(j-1)(i) , B=> carries(j-1)(i) ,Cin=>carries(j)(i-1),Sum => product(n-1+i), Cout => carries(j)(i));
          end generate genaddern1;
  end generate;
end generate;

Prod <= product;
end Behavioral;
