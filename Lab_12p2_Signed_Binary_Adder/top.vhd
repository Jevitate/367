library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity top is 
	port	(SW		: in 	std_logic_vector(7 downto 0);
			 LEDR		: out std_logic_vector(9 downto 0);
			 HEX0		: out std_logic_vector(6 downto 0);
			 HEX1		: out std_logic_vector(6 downto 0);
			 HEX2		: out std_logic_vector(6 downto 0);
			 HEX3		: out std_logic_vector(6 downto 0);
			 HEX4		: out std_logic_vector(6 downto 0);
			 HEX5		: out std_logic_vector(6 downto 0));
			 
end entity;


architecture top_arch of top is

	component char_decoder
	port	(BIN_IN		: in std_logic_vector (3 downto 0);
			 HEX_OUT		: out std_logic_vector (6 downto 0));	
	end component;
	
	component twos_comp_decoder
		port(	TWOS_COMP_IN	: in std_logic_vector(3 downto 0);
				mag_out	: out std_logic_vector(6 downto 0);
				sign_out	: out std_logic_vector(6 downto 0));
	end component;
	
	
	
	signal Sum  : std_logic_vector(3 downto 0);
	signal overflow_detect : std_logic;
	signal Sum_uns	: unsigned(4 downto 0);
	
	
	
	begin
	
	
	overflow	: process(SW(3), SW(7), Sum(3))
		begin
			if(SW(3) = '1' and SW(7) = '1' and Sum(3) = '0') then 
				overflow_detect <= '1';
			elsif(SW(3) = '0' and SW(7) = '0' and Sum(3) = '1') then
				overflow_detect <= '0';
			end if;
		end process;
		
	
	LEDR(7 downto 0) <= SW;
	LEDR(9) <= overflow_detect;
	
	Sum_uns <= unsigned(('0' & SW(3 downto 0))) + unsigned('0' & SW(7 downto 4));
	Sum <= std_logic_vector(Sum_uns(3 downto 0));
	
	
	C0 : twos_comp_decoder port map(TWOS_COMP_IN => SW(3 downto 0), MAG_OUT => HEX0);
	C1 : twos_comp_decoder port map(TWOS_COMP_IN => SW(3 downto 0), SIGN_OUT => HEX1);
	C2 : twos_comp_decoder port map(TWOS_COMP_IN => SW(7 downto 4), MAG_OUT => HEX2);
	C3 : twos_comp_decoder port map(TWOS_COMP_IN => SW(7 downto 4), SIGN_OUT => HEX3);
	
	C4 : twos_comp_decoder port map(TWOS_COMP_IN => Sum(3 downto 0), MAG_OUT => HEX4);
	C5 : twos_comp_decoder port map(TWOS_COMP_IN => Sum(3 downto 0), SIGN_OUT => HEX5);
	



end architecture;


			 