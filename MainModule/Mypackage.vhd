--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package Mypackage is

-----------------------------------------------------------
component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

------------------------------------------------------------
component Mux_2x1_6bits is
GENERIC(n:NATURAL);
    Port ( input1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           input2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           S : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end component;
------------------------------------------------------------
component Transilation_control_circuit is
    Port ( funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component ;
-----------------------------------------------------------------
component CU is
    Port ( Opcode : in  STD_LOGIC_VECTOR (5 downto 0);
	 
           RegDes : out  STD_LOGIC;
			  Jump : out  STD_LOGIC;
			  Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           AluOpcode : out STD_LOGIC_VECTOR (1 downto 0);
           MemWrite : out  STD_LOGIC;
           AluSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
		   Branchneq : out  STD_LOGIC
		   );
         
end component;
---------------------------------------------------------------
component Sign_extend is
    Port ( immediate : in  STD_LOGIC_VECTOR (15 downto 0);
           address : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
---------------------------------------------------------------
component Alu_control is
    Port ( AluOP : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
---------------------------------------------------------------

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
	 end component ;
-------------------------------------------------------------------
component ALU is
port(
data1 : in std_logic_vector(31 downto 0);
data2 : in std_logic_vector(31 downto 0);
aluop : in std_logic_vector(3 downto 0);
cin : in std_logic;
dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end component ;
---------------------------------------------------------------------
component RegisterFile is
GENERIC(n : NATURAL:= 32);
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component ;
---------------------------------------------------------------------
component reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
end component ;
---------------------------------------------------------------------
component Reg32_0 IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end component;

end Mypackage;