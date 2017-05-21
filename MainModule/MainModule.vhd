----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:53:38 04/17/2017 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

use work.MyPackage.all;
use work.my_Package.all;
use work.Alu_Package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			  DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));
end MainModule;

architecture Behavioral of MainModule is

SIGNAL temp_pc_out: STD_LOGIC_VECTOR (31 DOWNTO 0) := (others => '0');
SIGNAL memory_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL ALU_out: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL tmp_reg_out1: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL tmp_reg_out2: STD_LOGIC_VECTOR (31 DOWNTO 0);
--signal pcout : STD_LOGIC_VECTOR(5 downto 0);

 -- instruction memeory 
SIGNAL rs: STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL rt: STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL rd: STD_LOGIC_VECTOR (4 DOWNTO 0);
SIGNAL operation_out: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal instruction15_0 :STD_LOGIC_VECTOR (15 DOWNTO 0);
signal After_extension :STD_LOGIC_VECTOR (31 DOWNTO 0);

signal condition_writable : STD_LOGIC;  
 
 -- control unit singals
signal  instuction_opcode :std_logic_vector (5 downto 0);
signal  RegDes :   STD_LOGIC;
signal  Jump :   STD_LOGIC;
signal  Branch :   STD_LOGIC;
signal  MemRead : STD_LOGIC;
signal  MemtoReg :  STD_LOGIC;
signal  AluOp : STD_LOGIC_VECTOR (1 downto 0);
signal  MemWrite :   STD_LOGIC;
signal  AluSrc :  STD_LOGIC;
signal  RegWrite :  STD_LOGIC;
-- register file
signal input_write_reg : std_logic_vector (4 downto 0);
signal result_mux_alu_input :STD_LOGIC_VECTOR (31 DOWNTO 0);
signal write_data :STD_LOGIC_VECTOR (31 DOWNTO 0);
--- Data memory
signal output_data_mem :STD_LOGIC_VECTOR (31 DOWNTO 0);

-- pc reg
--signal pc_input :STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
 signal pc_input:std_logic_vector (31 downto 0) := (others => '0');
 signal pc_out :std_logic_vector (31 downto 0 );
 signal pc_out_plus_4 :std_logic_vector (31 downto 0 );
 signal branch_address :std_logic_vector (31 downto 0 );
 signal out_mux_branch :std_logic_vector (31 downto 0 );
 signal check_brach :std_logic;
 signal zero_flag :std_logic;
signal c_flag :std_logic;
signal branch_not_equal :std_logic;
signal jump_address :std_logic_vector (31 downto 0);
signal branch_signal :std_logic;
signal branchNe_signal : std_logic;
signal shift_tmp :std_logic_vector (31 downto 0);
begin

mux_jump_second : Mux_2x1_6bits generic map (32) port map(out_mux_branch,jump_address,Jump,pc_input);
jump_address <= pc_out_plus_4(31 downto 28) &memory_out(25 downto 0) & "00";

branch_signal<= Branch and zero_flag;
branchNe_signal<=branch_not_equal and zero_flag;
check_brach<=branch_signal or branchNe_signal ;
pc  :Reg generic map (32) port map(pc_input,CLK,START,'0','0',pc_out); -- - again
mux_brach_first : Mux_2x1_6bits generic map (32) port map(pc_out_plus_4,branch_address,check_brach,out_mux_branch);
pc_out_plus_4 <= pc_out+"00000000000000000000000000000100";
shift_tmp<=(After_extension(29 downto 0)&"00");
branch_address<=pc_out_plus_4+ shift_tmp;
Mux_Data_mem_out : Mux_2x1_6bits generic map (32) port map(ALU_out,output_data_mem,MemtoReg,write_data);
Data_m :DATAMEMORY port map (not (START),tmp_reg_out2,output_data_mem,MemRead,MemWrite,ALU_out,CLK );
Mux_Alu_input :Mux_2x1_6bits generic map (32) port map(tmp_reg_out2,After_extension,AluSrc,result_mux_alu_input);
Reg_file : RegisterFile port map( rs,rt,input_write_reg,RegWrite,CLK,write_data,tmp_reg_out1 ,tmp_reg_out2 );
  
Mux_write_reg :Mux_2x1_6bits generic map (5)  PORT MAP (rt,rd,RegDes,input_write_reg); -- 5bits not 6
Big_ALU : ALU port map (tmp_reg_out1 ,result_mux_alu_input ,operation_out ,operation_out(2),ALU_out,c_flag,zero_flag);

Alu_C : Alu_control port map ( AluOp,memory_out(5 downto 0),operation_out);
S_E : Sign_extend port map( memory_out(15 downto 0),After_extension);
Control_unit : CU port map(instuction_opcode,RegDes ,Jump,Branch,MemRead,MemtoReg,AluOp,MemWrite,AluSrc,RegWrite,branch_not_equal);
memory : INSTRMEMORY port map(not(START),memory_out,pc_out,CLK);

instuction_opcode <=memory_out(31 downto 26);
rs<=memory_out(25 downto 21);
rt<=memory_out(20 downto 16);
rd<=memory_out(15 downto 11);
instruction15_0<=memory_out(15 downto 0);

ALUOut<=ALU_out;
RegFileOut1<=tmp_reg_out1;
RegFileOut2<=tmp_reg_out2;
PCout<=pc_out;
DataMemOut<=output_data_mem;
--cflag: out std_logic;
--zflag: out std_logic;
--oflag: out std_logic););		
		 
end Behavioral;

