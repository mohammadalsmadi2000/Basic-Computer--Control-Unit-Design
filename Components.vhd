library ieee;
use ieee.std_logic_1164.all;


package Components is 	
	
	component decoder3x8 is
	port(input: in std_logic_vector(2 downto 0);
		 Enable: in std_logic;
		 output: out std_logic_vector(7 downto 0));
	end component;
	
	component Counter is
	port(clk, clr, inr: in std_logic;
		 output: buffer std_logic_vector(3 downto 0));
	end component;
	
	component decoder4x16 is
	port(input: in std_logic_vector(2 downto 0);
		 C: in std_logic;
		 output: out std_logic_vector(15 downto 0));
	end component;
	
end Components;