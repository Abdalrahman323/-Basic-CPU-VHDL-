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
----------------------------------------------
package Alu_Package is
component Adder is    
PORT(
     A : IN STD_LOGIC;
	  B :IN STD_LOGIC;
	  CIN :IN STD_LOGIC;
	  S :OUT STD_LOGIC;
	  Carry_out :OUT STD_LOGIC

    );
end component;
-----------------------------------------------
component Mux_4x1 is    
PORT(	I_0: 	IN STD_LOGIC;
		I_1: 	IN STD_LOGIC;
		I_2: 	IN STD_LOGIC;
		I_3: 	IN STD_LOGIC;
      O :   OUT STD_LOGIC ;
	   S :IN STD_LOGIC_VECTOR(1 DOWNTO 0));
end component;
------------------------------------------------
component Mux_2X1 is  
PORT(
      A :in std_logic;
		B :in std_logic;
		S : in std_logic;
		R :out std_logic
		
);
end component;
-------------------------------------------------
component One_Bit_Alu is
port(
data1 : in std_logic;
data2 : in std_logic;
LESS : IN STD_LOGIC;
aluop : in std_logic_vector (3 Downto 0) ;
dataout: out std_logic;
cin : in std_logic;
cflag: out std_logic;
set: out std_logic

);
 end component;
--------------------------------------------------

end Alu_Package;
