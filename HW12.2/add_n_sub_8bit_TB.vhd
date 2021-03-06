library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity add_n_sub_8bit_TB is
end entity;

architecture add_n_sub_8bit_TB_arch of add_n_sub_8bit_TB is

	component add_n_sub_8bit
		port(A, B	: in std_logic_vector(7 downto 0);
		     ADDn_SUB	: in std_logic;
		     Sum_diff	: out std_logic_vector(7 downto 0);
		     Cout_Bout	: out std_logic;
		     Vout	: out std_logic);
	end component;

	signal A_TB, B_TB, Sum_diff_TB			: std_logic_vector(7 downto 0);
	signal Cout_Bout_TB, ADDn_SUB_TB, Vout_TB	: std_logic;

	begin

		DUT : add_n_sub_8bit port map(A_TB, B_TB, ADDn_SUB_TB, Sum_diff_TB, Cout_Bout_TB, Vout_TB);
	
		STIM : process
			begin
		
				for i in 0 to 255 loop
					for j in 0 to 255 loop
						A_TB <= std_logic_vector(to_unsigned(i,8));
						B_TB <= std_logic_vector(to_unsigned(j,8));
						ADDn_SUB_TB <= '1';
						wait for 30 ns;
					end loop;
				end loop;

				for i in 0 to 255 loop
					for j in 0 to 255 loop
						A_TB <= std_logic_vector(to_unsigned(i,8));
						B_TB <= std_logic_vector(to_unsigned(j,8));
						ADDn_SUB_TB <= '0';
						wait for 30 ns;
					end loop;
				end loop;
			end process;
end architecture;

