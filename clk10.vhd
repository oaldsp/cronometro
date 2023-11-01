Library ieee;
use ieee.std_logic_1164.all;

entity clk9 is
	port(
		clk90: in std_logic;
		clk91: in std_logic;
		clk92: in std_logic;
		clk93: in std_logic;
		clk9out: out std_logic 
	);
	end clk9;
	
architecture clk9_arch of clk9 is
		begin
		clk9out <= not(clk93 and (not clk92) and (not clk91) and  clk90) ;
		end clk9_arch;