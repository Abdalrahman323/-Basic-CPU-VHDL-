----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:50:20 05/03/2017 
-- Design Name: 
-- Module Name:    Mux_2x1_6bits - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_2x1_6bits is
 GENERIC(n:NATURAL := 5);
    Port ( input1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           input2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           S : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (n-1 downto 0));
end Mux_2x1_6bits;

architecture Behavioral of Mux_2x1_6bits is
SIGNAL temp_out: STD_LOGIC_VECTOR (n-1 DOWNTO 0) := (others => 'Z');
begin

temp_out<= input1 when S='0' else
         input2  when S='1' ;
	     
output<=temp_out;

end Behavioral;

