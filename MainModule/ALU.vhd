----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:40 04/06/2017 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
port(
data1 : in std_logic_vector(31 downto 0);
data2 : in std_logic_vector(31 downto 0);
aluop : in std_logic_vector(3 downto 0);
cin : in std_logic;
dataout: out std_logic_vector(31 downto 0);
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic);
end ALU;

architecture Behavioral of ALU is

signal and1_flag : std_logic;
signal and2_flag :std_logic;
signal zero_flage :std_logic;

signal cout_1 : std_logic;
signal cout_2 : std_logic;
signal cout_3 : std_logic;
signal cout_4 : std_logic;
signal cout_5 : std_logic;
signal cout_6 : std_logic;
signal cout_7 : std_logic;
signal cout_8 : std_logic;
signal cout_9 : std_logic;
signal cout_10 : std_logic;
signal cout_11 : std_logic;
signal cout_12 : std_logic;
signal cout_13 : std_logic;
signal cout_14 : std_logic;
signal cout_15 : std_logic;
signal cout_16 : std_logic;
signal cout_17 : std_logic;
signal cout_18 : std_logic;
signal cout_19 : std_logic;
signal cout_20 : std_logic;
signal cout_21 : std_logic;
signal cout_22 : std_logic;
signal cout_23 : std_logic;
signal cout_24 : std_logic;
signal cout_25 : std_logic;
signal cout_26 : std_logic;
signal cout_27 : std_logic;
signal cout_28 : std_logic;
signal cout_29 : std_logic;
signal cout_30 : std_logic;
signal cout_31 : std_logic;
signal cout_32 : std_logic;
signal set_last_out : std_logic;

signal data_out : std_logic_vector(31 downto 0);

signal alu_operation : std_logic_vector(3 downto 0);

begin

alu_operation<= aluop;
ALU0  :One_Bit_Alu PORT MAP (data1(0),data2(0),set_last_out,alu_operation,data_out(0),cin,cout_1);
ALU1  :One_Bit_Alu PORT MAP (data1(1),data2(1),'0',alu_operation,data_out(1),cout_1,cout_2);
ALU2  :One_Bit_Alu PORT MAP (data1(2),data2(2),'0',alu_operation,data_out(2),cout_2,cout_3);
ALU3  :One_Bit_Alu PORT MAP (data1(3),data2(3),'0',alu_operation,data_out(3),cout_3,cout_4);
ALU4  :One_Bit_Alu PORT MAP (data1(4),data2(4),'0',alu_operation,data_out(4),cout_4,cout_5);
ALU5  :One_Bit_Alu PORT MAP (data1(5),data2(5),'0',alu_operation,data_out(5),cout_5,cout_6);
ALU6  :One_Bit_Alu PORT MAP (data1(6),data2(6),'0',alu_operation,data_out(6),cout_6,cout_7);
ALU7  :One_Bit_Alu PORT MAP (data1(7),data2(7),'0',alu_operation,data_out(7),cout_7,cout_8);
ALU8  :One_Bit_Alu PORT MAP (data1(8),data2(8),'0',alu_operation,data_out(8),cout_8,cout_9);
ALU9  :One_Bit_Alu PORT MAP (data1(9),data2(9),'0',alu_operation,data_out(9),cout_9,cout_10);
ALU10 :One_Bit_Alu PORT MAP (data1(10),data2(10),'0',alu_operation,data_out(10),cout_10,cout_11);
ALU11 :One_Bit_Alu PORT MAP (data1(11),data2(11),'0',alu_operation,data_out(11),cout_11,cout_12);
ALU12 :One_Bit_Alu PORT MAP (data1(12),data2(12),'0',alu_operation,data_out(12),cout_12,cout_13);
ALU13 :One_Bit_Alu PORT MAP (data1(13),data2(13),'0',alu_operation,data_out(13),cout_13,cout_14);
ALU14 :One_Bit_Alu PORT MAP (data1(14),data2(14),'0',alu_operation,data_out(14),cout_14,cout_15);
ALU15 :One_Bit_Alu PORT MAP (data1(15),data2(15),'0',alu_operation,data_out(15),cout_15,cout_16);
ALU16 :One_Bit_Alu PORT MAP (data1(16),data2(16),'0',alu_operation,data_out(16),cout_16,cout_17);
ALU17 :One_Bit_Alu PORT MAP (data1(17),data2(17),'0',alu_operation,data_out(17),cout_17,cout_18);
ALU18 :One_Bit_Alu PORT MAP (data1(18),data2(18),'0',alu_operation,data_out(18),cout_18,cout_19);
ALU19 :One_Bit_Alu PORT MAP (data1(19),data2(19),'0',alu_operation,data_out(19),cout_19,cout_20);
ALU20 :One_Bit_Alu PORT MAP (data1(20),data2(20),'0',alu_operation,data_out(20),cout_20,cout_21);
ALU21 :One_Bit_Alu PORT MAP (data1(21),data2(21),'0',alu_operation,data_out(21),cout_21,cout_22);
ALU22 :One_Bit_Alu PORT MAP (data1(22),data2(22),'0',alu_operation,data_out(22),cout_22,cout_23);
ALU23 :One_Bit_Alu PORT MAP (data1(23),data2(23),'0',alu_operation,data_out(23),cout_23,cout_24);
ALU24 :One_Bit_Alu PORT MAP (data1(24),data2(24),'0',alu_operation,data_out(24),cout_24,cout_25);
ALU25 :One_Bit_Alu PORT MAP (data1(25),data2(25),'0',alu_operation,data_out(25),cout_25,cout_26);
ALU26 :One_Bit_Alu PORT MAP (data1(26),data2(26),'0',alu_operation,data_out(26),cout_26,cout_27);
ALU27 :One_Bit_Alu PORT MAP (data1(27),data2(27),'0',alu_operation,data_out(27),cout_27,cout_28);
ALU28 :One_Bit_Alu PORT MAP (data1(28),data2(28),'0',alu_operation,data_out(28),cout_28,cout_29);
ALU29 :One_Bit_Alu PORT MAP (data1(29),data2(29),'0',alu_operation,data_out(29),cout_29,cout_30);
ALU30 :One_Bit_Alu PORT MAP (data1(30),data2(30),'0',alu_operation,data_out(30),cout_30,cout_31);
ALU31 :one_bit_alu PORT MAP (data1(31),data2(31),'0',alu_operation,data_out(31),cout_31,cout_32,set_last_out);



cflag<=cout_32;
and1_flag<=cout_31 and not(cout_32);
and2_flag<=not(cout_31) and cout_32;
oflag <= and1_flag or and2_flag;

zero_flage<= data_out(31) or data_out(30) or data_out(29) or data_out(28) or data_out(27) or data_out(26) or data_out(25)
or data_out(24)or data_out(23) or data_out(22) or data_out(21) or data_out(20) or data_out(19) or data_out(18) or data_out(17)
or data_out(16) or data_out(15) or data_out(14) or data_out(13) or data_out(14) or data_out(13) or data_out(12) or data_out(11)
or data_out(10) or data_out(9) or data_out(8) or data_out(7) or data_out(6) or data_out(5) or data_out(4) or data_out(3) or 
data_out(2) or data_out(1) or data_out(0);
zflag<=not(zero_flage);
dataout<=data_out;


end Behavioral;
