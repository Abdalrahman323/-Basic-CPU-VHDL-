----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:36 05/03/2017 
-- Design Name: 
-- Module Name:    Alu_control - Behavioral 
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

entity Alu_control is
    Port ( AluOP : in  STD_LOGIC_VECTOR (1 downto 0);
           funct : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end Alu_control;

architecture Behavioral of Alu_control is
-- may singals better
signal opr3 : std_logic;


begin

-- may not support chain
opr3 <= (Funct(0) and funct (1)) and ALUOp(1);
Operation(0) <= (not (opr3)) and (ALUOp(1) and (Funct(0) or Funct(3)));
Operation(1) <= (not ALUOp(1)) or (not Funct(2)); 
Operation(2) <= ALUOp(0) or (ALUOp(1) and Funct(1));
Operation(3) <= opr3;


end Behavioral;

