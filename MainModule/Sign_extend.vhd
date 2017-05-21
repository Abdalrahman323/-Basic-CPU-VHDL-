----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:42:13 04/26/2015 
-- Design Name: 
-- Module Name:    Sign_extend - Behavioral 
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

entity Sign_extend is
 port(immediate : in  STD_LOGIC_VECTOR (15 downto 0);
       address : out  STD_LOGIC_VECTOR (31 downto 0));
end Sign_extend;

architecture Behavioral of Sign_extend is

begin

address <= ("0000000000000000"&immediate) when (immediate(15)='0') else 
           ("1111111111111111"&immediate) when (immediate(15)='1') ;

end Behavioral;

