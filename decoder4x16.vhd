library ieee;
use ieee.std_logic_1164.all;
use work.Components.all;

entity decoder4x16 is

	port(input: in std_logic_vector(2 downto 0);
		 
		 C: in std_logic;
		 
		 output: out std_logic_vector(15 downto 0));

end decoder4x16;



architecture decoder4x16 of decoder4x16 is

signal decode8to15: std_logic_vector(7 downto 0);

signal decode0to7: std_logic_vector(7 downto 0);


	begin
	
	d1: decoder3x8 port map(input, C, decode8to15);
	
	d2: decoder3x8 port map(input, not(C), decode0to7);
	
	output <= decode8to15 & decode0to7;
	
end decoder4x16;