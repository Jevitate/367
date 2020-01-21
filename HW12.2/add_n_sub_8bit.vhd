library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity add_n_sub_8bit is
	port(A, B	: in std_logic_vector(7 downto 0);
	     ADDn_SUB	: in std_logic;
	     Sum_Diff	: out std_logic_vector(7 downto 0);
	     Cout_Bout	: out std_logic;
	     Vout	: out std_logic);
end entity;

architecture add_n_sub_8bit_arch of add_n_sub_8bit is


	component full_adder
		port(A, B, Cin	: in std_logic;
		     Sum, Cout	: out std_logic);
	end component;

	component xor_Gate is
		port(ADDn_SUB, B 	: in std_logic;
		     F		: out std_logic);
	end component;
	


	signal C0, C1, C2, C3, C4, C5, C6, C7 : std_logic;
	signal B0, B1, B2, B3, B4, B5, B6, B7 : std_logic;

	begin
	

	F0 : xor_gate port map(ADDn_SUB, B(0), B0);
	F1 : xor_gate port map(ADDn_SUB, B(1), B1);
	F2 : xor_gate port map(ADDn_SUB, B(2), B2);
	F3 : xor_gate port map(ADDn_SUB, B(3), B3);
	F4 : xor_gate port map(ADDn_SUB, B(4), B4);
	F5 : xor_gate port map(ADDn_SUB, B(5), B5);
	F6 : xor_gate port map(ADDn_SUB, B(6), B6);
	F7 : xor_gate port map(ADDn_SUB, B(7), B7);

	A0 : full_adder port map(A(0), B0, ADDn_SUB, Sum_diff(0), C1);
	A1 : full_adder port map(A(1), B1, ADDn_SUB, Sum_diff(1), C2);
	A2 : full_adder port map(A(2), B2, ADDn_SUB, Sum_diff(2), C3);
	A3 : full_adder port map(A(3), B3, ADDn_SUB, Sum_diff(3), C4);
	A4 : full_adder port map(A(4), B4, ADDn_SUB, Sum_diff(4), C5);
	A5 : full_adder port map(A(5), B5, ADDn_SUB, Sum_diff(5), C6);
	A6 : full_adder port map(A(6), B6, ADDn_SUB, Sum_diff(6), C7);
	A7 : full_adder port map(A(7), B7, ADDn_SUB, Sum_diff(7), C0);

	Cout_Bout <= C0;
	V : xor_Gate port map(C7, C0, Vout);

	

end architecture;

