library ieee;
use ieee.std_logic_1164.all;

entity decoder3x8 is
	port(input: in std_logic_vector(2 downto 0);
		 Enable: in std_logic;
		 output: out std_logic_vector(7 downto 0));
end decoder3x8;

architecture decoder3x8 of decoder3x8 is
begin
	output <= "00000000" when Enable = '0' else
			  "00000001" when input = "000" and Enable = '1' else
			  "00000010" when input = "001" and Enable = '1' else
			  "00000100" when input = "010" and Enable = '1' else
			  "00001000" when input = "011" and Enable = '1' else
			  "00010000" when input = "100" and Enable = '1' else
			  "00100000" when input = "101" and Enable = '1' else
			  "01000000" when input = "110" and Enable = '1' else
			  "10000000" when input = "111" and Enable = '1';
end decoder3x8;