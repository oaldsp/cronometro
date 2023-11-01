library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference_80khz is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			clk_80kHz: out std_logic);-- Can check it using PIN A8 - LEDR0

	end Timing_Reference_80khz;
  
architecture freq_div of Timing_Reference_80khz is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
  
process(clk)
	begin
	if(clk'event and clk='1') then
		count <=count+1;
		if (count = 10000/32) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clk_80kHz <= tmp;
end process;
 
end freq_div;