----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:44 04/06/2017 
-- Design Name: 
-- Module Name:    Mux_4x1 - Behavioral 
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

entity Mux_4x1 is
PORT(	I_0: 	IN STD_LOGIC;
		I_1: 	IN STD_LOGIC;
		I_2: 	IN STD_LOGIC;
		I_3: 	IN STD_LOGIC;
      O :   OUT STD_LOGIC ;
	   S :IN STD_LOGIC_VECTOR(1 DOWNTO 0));
end Mux_4x1;

architecture Behavioral of Mux_4x1 is

begin

O<= I_0 WHEN S="00" ELSE
    I_1 WHEN S="01" ELSE
    I_2 WHEN S="10" ELSE
    I_3  WHEN S="11";

end Behavioral;

