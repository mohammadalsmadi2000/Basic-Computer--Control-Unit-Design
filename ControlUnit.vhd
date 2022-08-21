library ieee;
use ieee.std_logic_1164.all;
use work.Components.all;

entity ControlUnit is
	port(IR: in std_logic_vector(15 downto 0);
		 clk, clr, inr: in std_logic;
		 output: out std_logic_vector(36 downto 0));
end ControlUnit;

architecture ControlUnit of ControlUnit is
	signal Dec3to8: std_logic_vector(7 downto 0);
	signal Dec4to16: std_logic_vector(15 downto 0);
	signal Count: std_logic_vector(3 downto 0);
	
begin
	output(11 downto 0) <= IR(11 downto 0);
	
	
	--Decoder 3*8
	Dec3to8Map: decoder3x8 port map(IR(14 downto 12), '1', Dec3to8);
	output(19 downto 12) <= Dec3to8;
	output(20) <= IR(15);
	
	
	-- Counter
	CountMap: Counter port map(clk, clr, inr, Count);
	
	-- Decoder4*16
	Dec4to16Map: decoder4x16 port map(Count(2 downto 0), Count(3), Dec4to16);
	
	output(36) <= Dec4to16(0);
	output(35) <= Dec4to16(1);
	output(34) <= Dec4to16(2);
	output(33) <= Dec4to16(3);
	output(32) <= Dec4to16(4);
	output(31) <= Dec4to16(5);
	output(30) <= Dec4to16(6);
	output(29) <= Dec4to16(7);
	output(28) <= Dec4to16(8);
	output(27) <= Dec4to16(9);
	output(26) <= Dec4to16(10);
	output(25) <= Dec4to16(11);
	output(24) <= Dec4to16(12);
	output(23) <= Dec4to16(13);
	output(22) <= Dec4to16(14);
	output(21) <= Dec4to16(15);
	
end ControlUnit;