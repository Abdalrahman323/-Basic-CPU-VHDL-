----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:29:31 04/02/2017 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.my_Package.all;
use work.MyPackage.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
GENERIC(n : NATURAL:= 32);
    Port ( read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;
----------------------------------------------------
architecture Behavioral of RegisterFile is

signal data3 :std_logic_vector(31 downto 0);
signal data4 :std_logic_vector(31 downto 0);

signal out_dec :std_logic_vector(31 downto 0);

signal out_reg0 :std_logic_vector (31 downto 0);
signal out_reg1 :std_logic_vector (31 downto 0);
signal out_reg2 :std_logic_vector (31 downto 0);
signal out_reg3 :std_logic_vector (31 downto 0);
signal out_reg4 :std_logic_vector (31 downto 0);
signal out_reg5 :std_logic_vector (31 downto 0);
signal out_reg6 :std_logic_vector (31 downto 0);
signal out_reg7 :std_logic_vector (31 downto 0);
signal out_reg8 :std_logic_vector (31 downto 0);
signal out_reg9 :std_logic_vector (31 downto 0);
signal out_reg10 :std_logic_vector (31 downto 0);
signal out_reg11 :std_logic_vector (31 downto 0);
signal out_reg12 :std_logic_vector (31 downto 0);
signal out_reg13 :std_logic_vector (31 downto 0);
signal out_reg14 :std_logic_vector (31 downto 0);
signal out_reg15 :std_logic_vector (31 downto 0);
signal out_reg16 :std_logic_vector (31 downto 0);
signal out_reg17 :std_logic_vector (31 downto 0);
signal out_reg18 :std_logic_vector (31 downto 0);
signal out_reg19 :std_logic_vector (31 downto 0);
signal out_reg20:std_logic_vector (31 downto 0);
signal out_reg21 :std_logic_vector (31 downto 0);
signal out_reg22 :std_logic_vector (31 downto 0);
signal out_reg23 :std_logic_vector (31 downto 0);
signal out_reg24 :std_logic_vector (31 downto 0);
signal out_reg25 :std_logic_vector (31 downto 0);
signal out_reg26 :std_logic_vector (31 downto 0);
signal out_reg27 :std_logic_vector (31 downto 0);
signal out_reg28 :std_logic_vector (31 downto 0);
signal out_reg29 :std_logic_vector (31 downto 0);
signal out_reg30 :std_logic_vector (31 downto 0);
signal out_reg31 :std_logic_vector (31 downto 0);

signal LOAD0:std_logic;
signal LOAD1:std_logic;
signal LOAD2:std_logic;
signal LOAD3:std_logic;
signal LOAD4:std_logic;
signal LOAD5:std_logic;
signal LOAD6:std_logic;
signal LOAD7:std_logic;
signal LOAD8:std_logic;
signal LOAD9:std_logic;
signal LOAD10:std_logic;
signal LOAD11:std_logic;
signal LOAD12:std_logic;
signal LOAD13:std_logic;
signal LOAD14:std_logic;
signal LOAD15:std_logic;
signal LOAD16:std_logic;
signal LOAD17:std_logic;
signal LOAD18:std_logic;
signal LOAD19:std_logic;
signal LOAD20:std_logic;
signal LOAD21:std_logic;
signal LOAD22:std_logic;
signal LOAD23:std_logic;
signal LOAD24:std_logic;
signal LOAD25:std_logic;
signal LOAD26:std_logic;
signal LOAD27:std_logic;
signal LOAD28:std_logic;
signal LOAD29:std_logic;
signal LOAD30:std_logic;
signal LOAD31:std_logic;

begin
Dec_1 : Dec port map (write_sel,out_dec);

LOAD0<=write_ena AND out_dec(0);
LOAD1<=write_ena AND out_dec(1);
LOAD2<=write_ena AND out_dec(2);
LOAD3<=write_ena AND out_dec(3);
LOAD4<=write_ena AND out_dec(4);
LOAD5<=write_ena AND out_dec(5);
LOAD6<=write_ena AND out_dec(6);
LOAD7<=write_ena AND out_dec(7);
LOAD8<=write_ena AND out_dec(8);
LOAD9<=write_ena AND out_dec(9);
LOAD10<=write_ena AND out_dec(10); 
LOAD11<=write_ena AND out_dec(11);
LOAD12<=write_ena AND out_dec(12);
LOAD13<=write_ena AND out_dec(13);
LOAD14<=write_ena AND out_dec(14);
LOAD15<=write_ena AND out_dec(15);
LOAD16<=write_ena AND out_dec(16);
LOAD17<=write_ena AND out_dec(17);
LOAD18<=write_ena AND out_dec(18);
LOAD19<=write_ena AND out_dec(19);
LOAD20<=write_ena AND out_dec(20);
LOAD21<=write_ena AND out_dec(21);
LOAD22<=write_ena AND out_dec(22);
LOAD23<=write_ena AND out_dec(23); 
LOAD24<=write_ena AND out_dec(24);
LOAD25<=write_ena AND out_dec(25);
LOAD26<=write_ena AND out_dec(26);
LOAD27<=write_ena AND out_dec(27);
LOAD28<=write_ena AND out_dec(28);
LOAD29<=write_ena AND out_dec(29);
LOAD30<=write_ena AND out_dec(30);
LOAD31<=write_ena AND out_dec(31);


R0  :Reg32_0 generic map (n) port map(write_data,clk,LOAD0,'0','0',out_reg0);
R1  :reg32_1  port map(write_data,clk,LOAD1,'0','0',out_reg1);
R2  :Reg generic map (n) port map(write_data,clk,LOAD2,'0','0',out_reg2);
R3  :Reg generic map (n) port map(write_data,clk,LOAD3,'0','0',out_reg3);
R4  :Reg generic map (n) port map(write_data,clk,LOAD4,'0','0',out_reg4);
R5  :Reg generic map (n) port map(write_data,clk,LOAD5,'0','0',out_reg5);
R6  :Reg generic map (n) port map(write_data,clk,LOAD6,'0','0',out_reg6);
R7  :Reg generic map (n) port map(write_data,clk,LOAD7,'0','0',out_reg7);
R8  :Reg generic map (n) port map(write_data,clk,LOAD8,'0','0',out_reg8);
R9  :Reg generic map (n) port map(write_data,clk,LOAD9,'0','0',out_reg9);
R10 :Reg generic map (n) port map(write_data,clk,LOAD10,'0','0',out_reg10);
R11 :Reg generic map (n) port map(write_data,clk,LOAD11,'0','0',out_reg11);
R12 :Reg generic map (n) port map(write_data,clk,LOAD12,'0','0',out_reg12);
R13 :Reg generic map (n) port map(write_data,clk,LOAD13,'0','0',out_reg13);
R14 :Reg generic map (n) port map(write_data,clk,LOAD14,'0','0',out_reg14);
R15 :Reg generic map (n) port map(write_data,clk,LOAD15,'0','0',out_reg15);
R16 :Reg generic map (n) port map(write_data,clk,LOAD16,'0','0',out_reg16);
R17 :Reg generic map (n) port map(write_data,clk,LOAD17,'0','0',out_reg17);
R18 :Reg generic map (n) port map(write_data,clk,LOAD18,'0','0',out_reg18);
R19 :Reg generic map (n) port map(write_data,clk,LOAD19,'0','0',out_reg19);
R20 :Reg generic map (n) port map(write_data,clk,LOAD20,'0','0',out_reg20);
R21 :Reg generic map (n) port map(write_data,clk,LOAD21,'0','0',out_reg21);
R22 :Reg generic map (n) port map(write_data,clk,LOAD22,'0','0',out_reg22);
R23 :Reg generic map (n) port map(write_data,clk,LOAD23,'0','0',out_reg23);
R24 :Reg generic map (n) port map(write_data,clk,LOAD24,'0','0',out_reg24);
R25 :Reg generic map (n) port map(write_data,clk,LOAD25,'0','0',out_reg25);
R26 :Reg generic map (n) port map(write_data,clk,LOAD26,'0','0',out_reg26);
R27 :Reg generic map (n) port map(write_data,clk,LOAD27,'0','0',out_reg27);
R28 :Reg generic map (n) port map(write_data,clk,LOAD28,'0','0',out_reg28);
R29 :Reg generic map (n) port map(write_data,clk,LOAD29,'0','0',out_reg29);
R30 :Reg generic map (n) port map(write_data,clk,LOAD30,'0','0',out_reg30);
R31 :Reg generic map (n) port map(write_data,clk,LOAD31,'0','0',out_reg31);

Mux_1:Mux generic map(n) port map 
(out_reg0,out_reg1,out_reg2,out_reg3,out_reg4,out_reg5,out_reg6,out_reg7,out_reg8,out_reg9,out_reg10,
out_reg11,out_reg12,out_reg13,out_reg14,out_reg15,out_reg16,out_reg17,
out_reg18,out_reg19,out_reg20,out_reg21,out_reg22,out_reg23,out_reg24,
out_reg25,out_reg26,out_reg27,out_reg28,out_reg29,out_reg30,out_reg31,read_sel1,data3);

data1<= data3;

Mux_2:Mux generic map(n) port map 
(out_reg0,out_reg1,out_reg2,out_reg3,out_reg4,out_reg5,out_reg6,out_reg7,out_reg8,out_reg9,out_reg10,
out_reg11,out_reg12,out_reg13,out_reg14,out_reg15,out_reg16,out_reg17,
out_reg18,out_reg19,out_reg20,out_reg21,out_reg22,out_reg23,out_reg24,
out_reg25,out_reg26,out_reg27,out_reg28,out_reg29,out_reg30,out_reg31,read_sel2,data4);

data2<=data4;

end Behavioral;

