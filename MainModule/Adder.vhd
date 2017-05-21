----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:37 04/06/2017 
-- Design Name: 
-- Module Name:    Adder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Adder is
PORT(
     A : IN STD_LOGIC;
	  B :IN STD_LOGIC;
	  CIN :IN STD_LOGIC;
	  S :OUT STD_LOGIC;
	  Carry_out :OUT STD_LOGIC

    );
end Adder;

architecture Behavioral of Adder is

SIGNAL Temp_res: STD_LOGIC_VECTOR(1 DOWNTO 0);
begin
Temp_res<=('0' & A)+('0' & B)+('0' & CIN);
S <= Temp_res(0) ;
Carry_out <= Temp_res(1);

end Behavioral;

