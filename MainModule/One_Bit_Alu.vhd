----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:16 04/06/2017 
-- Design Name: 
-- Module Name:    One_Bit_Alu - Behavioral 
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
library work;
use IEEE.STD_LOGIC_1164.ALL;
use work.Alu_Package.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity One_Bit_Alu is

port(
data1 : in std_logic;
data2 : in std_logic;
Less  : in std_logic;
aluop : in std_logic_vector (3 Downto 0) ;
dataout: out std_logic;
cin : in std_logic;
cflag: out std_logic;
set: out std_logic
);

end One_Bit_Alu;

architecture Behavioral of One_Bit_Alu is

signal Or_result : std_logic;
signal And_result : std_logic;
signal data1_out : std_logic;
signal data2_out : std_logic;
signal data_1 : std_logic;
Signal data_2 : std_logic;
signal carry_flag : std_logic;
signal alu_operation:std_logic_vector(1 downto 0);
signal alu_opa : std_logic;
signal alu_opb : std_logic;


begin

alu_operation<=aluop(1 downto 0);

alu_opa<=aluop(3);
alu_opb<=aluop(2);

M1:Mux_2X1 PORT MAP (data1,not(data1),alu_opa,data_1);

M2:Mux_2X1 PORT MAP (data2,not(data2),alu_opb,data_2);
			
Or_result <= data_1 or data_2;
And_result<=data_1 and data_2;	
	
A   :Adder  PORT MAP (data_1 ,data_2,cin,data1_out,carry_flag);
set<=data1_out;
Mux :Mux_4x1 PORT MAP (And_result,Or_result,data1_out,Less,data2_out,alu_operation);

dataout<=data2_out;
cflag<=carry_flag;


end Behavioral;

