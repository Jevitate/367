library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is 
	port(ADDn_SUB, B 	: in std_logic;
	     F			: out std_logic);
end entity;

architecture xor_gate_arch of xor_gate is

	begin

	F <= (ADDn_SUB xor B) after 1 ns;
end architecture;


