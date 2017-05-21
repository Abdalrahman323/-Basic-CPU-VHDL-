----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:27 04/06/2017 
-- Design Name: 
-- Module Name:    Mux_2x1 - Behavioral 
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

entity Mux_2x1 is
PORT(
      A :in std_logic;
		B :in std_logic;
		S : in std_logic;
		R :out std_logic
		
);
end Mux_2x1;

architecture Behavioral of Mux_2x1 is

begin
R<=A when S='0' else
   B when S='1' else
	'Z';
end Behavioral;

