----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:22 04/02/2017 
-- Design Name: 
-- Module Name:    Dec - Behavioral 
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

entity Dec is
PORT (
      I:IN  STD_LOGIC_VECTOR (4 DOWNTO 0);
		O:OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	  );

end Dec;

architecture Behavioral of Dec is

begin
O <= (0=>'1',OTHERS => '0') WHEN I="00000" ELSE
(1=>'1',OTHERS => '0') WHEN I="00001" ELSE
(2=>'1',OTHERS => '0') WHEN I="00010" ELSE
(3=>'1',OTHERS => '0') WHEN I="00011" ELSE
(4=>'1',OTHERS => '0') WHEN I="00100" ELSE
(5=>'1',OTHERS => '0') WHEN I="00101" ELSE
(6=>'1',OTHERS => '0') WHEN I="00110" ELSE
(7=>'1',OTHERS => '0') WHEN I="00111" ELSE
(8=>'1',OTHERS => '0') WHEN I="01000" ELSE
(9=>'1',OTHERS => '0') WHEN I="01001" ELSE
(10=>'1',OTHERS => '0') WHEN I="01010" ELSE
(11=>'1',OTHERS => '0') WHEN I="01011" ELSE
(12=>'1',OTHERS => '0') WHEN I="01100" ELSE
(13=>'1',OTHERS => '0') WHEN I="01101" ELSE
(14=>'1',OTHERS => '0') WHEN I="01110" ELSE
(15=>'1',OTHERS => '0') WHEN I="01111" ELSE
(16=>'1',OTHERS => '0') WHEN I="10000" ELSE
(17=>'1',OTHERS => '0') WHEN I="10001" ELSE
(18=>'1',OTHERS => '0') WHEN I="10010" ELSE
(19=>'1',OTHERS => '0') WHEN I="10011" ELSE
(20=>'1',OTHERS => '0') WHEN I="10100" ELSE
(21=>'1',OTHERS => '0') WHEN I="10101" ELSE
(22=>'1',OTHERS => '0') WHEN I="10110" ELSE
(23=>'1',OTHERS => '0') WHEN I="10111" ELSE
(24=>'1',OTHERS => '0') WHEN I="11000" ELSE
(25=>'1',OTHERS => '0') WHEN I="11001" ELSE
(26=>'1',OTHERS => '0') WHEN I="11010" ELSE
(27=>'1',OTHERS => '0') WHEN I="11011" ELSE
(28=>'1',OTHERS => '0') WHEN I="11100" ELSE
(29=>'1',OTHERS => '0') WHEN I="11101" ELSE
(30=>'1',OTHERS => '0') WHEN I="11110" ELSE
(31=>'1',OTHERS => '0') WHEN I="11111" ELSE
		(OTHERS => 'X') ;


end Behavioral;

