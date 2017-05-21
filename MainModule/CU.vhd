----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:44 05/03/2017 
-- Design Name: 
-- Module Name:    CU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU is
    Port ( 
	       Opcode : in  STD_LOGIC_VECTOR (5 downto 0); 
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
         
end CU;

architecture Behavioral of CU is
 signal R_format , lw , sw , beq , ALUOpcode1 , ALUOpcode0 : std_logic;
begin

R_format <= (not Opcode(0)) and (not Opcode(1)) and (not Opcode(2)) and (not Opcode(3)) and (not Opcode(4)) and (not Opcode(5));
lw <= Opcode(0) and Opcode(1) and (not Opcode(2)) and (not Opcode(3)) and (not Opcode(4)) and Opcode(5); 
sw <= Opcode(0) and Opcode(1) and (not Opcode(2)) and Opcode(3) and (not Opcode(4)) and Opcode(5); 
beq <= (not Opcode(0)) and (not Opcode(1)) and Opcode(2) and (not Opcode(3)) and (not Opcode(4)) and (not Opcode(5));
RegDes <= R_format;
ALUSrc <= lw or sw;
MemtoReg <= lw;
RegWrite <= R_format or lw;
MemRead <= lw;
MemWrite <= sw;
Branch <= beq;
ALUOpcode1 <= R_format;
ALUOpcode0 <= beq;
ALUOpcode <= ALUOpcode1 & ALUOpcode0;
Jump <= (not Opcode(0)) and Opcode(1) and (not Opcode(2)) and (not Opcode(3)) and (not Opcode(4)) and (not Opcode(5));
Branchneq <= ( not(Opcode(5) )  and   ( not Opcode(4) )  and ( not Opcode(3) ) and  (Opcode(2))  and  ( not Opcode(1) ) and (Opcode(0)) ) ;
	
end Behavioral;

