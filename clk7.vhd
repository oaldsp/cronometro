Library ieee;
use ieee.std_logic_1164.all;

entity clk7 is
	port(
		clk70: in std_logic;
		clk71: in std_logic;
		clk72: in std_logic;
		clk73: in std_logic;
		clk7out: out std_logic 
	);
	end clk7;
	
architecture clk7_arch of clk7 is
		begin
		clk7out <= not((not clk73) and clk72 and (not clk71) and clk70) ;
		end clk7_arch;