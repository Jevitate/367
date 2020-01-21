library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity top is
	port (Clock_50	: in  std_logic;
			Reset		: in  std_logic;
			SW			: in  std_logic_vector (3 downto 0);
			LEDR		: out std_logic_vector (9 downto 0);
			HEX0		: out std_logic_vector (6 downto 0);
			HEX1		: out std_logic_vector (6 downto 0);
			HEX2		: out std_logic_vector (6 downto 0);
			HEX3		: out std_logic_vector (6 downto 0);
			HEX4		: out std_logic_vector (6 downto 0);
			HEX5		: out std_logic_vector (6 downto 0);
			GPIO_1	: out std_logic_vector (7 downto 0));
end entity;

architecture top_arch of top is

		component char_decoder
			port	(BIN_IN		: in std_logic_vector (3 downto 0);
					 HEX_OUT		: out std_logic_vector (6 downto 0));
		end component;

		component clock_div_prec
			port (Clock_in		:in	std_logic;
					Reset			:in	std_logic;
					Sel			:in	std_logic_vector(1 downto 0);
					Clock_out	:out	std_logic);
		end component;
					
					
		signal CNT_uns	: unsigned(23 downto 0);
		signal current_s, next_s : integer range 0 to 9;
		signal Walk_1 : std_logic_vector(9 downto 0);
		signal CNT : std_logic_vector(23 downto 0);
		signal CNTn : std_logic_vector(37 downto 0);
		signal Clock_div	: std_logic;
		signal p0 : integer range 0 to 9;
		signal p1 : integer range 0 to 9;
		signal p2 : integer range 0 to 9;
		signal p3 : integer range 0 to 9;
		signal p4 : integer range 0 to 9;
		signal p5 : integer range 0 to 9;
		signal o0 : std_logic_vector(3 downto 0);
		signal o1 : std_logic_vector(3 downto 0);
		signal o2 : std_logic_vector(3 downto 0);
		signal o3 : std_logic_vector(3 downto 0);
		signal o4 : std_logic_vector(3 downto 0);
		signal o5 : std_logic_vector(3 downto 0);
		

		begin
		
					 
		cd	:	clock_div_prec port map(Clock_in => CLock_50, Reset => Reset, Sel => SW(1 downto 0), CLock_out => Clock_div);
		
	   C0	:	char_decoder port map (BIN_IN => o0, HEX_OUT => HEX0);
		C1	:	char_decoder port map (BIN_IN => o1, HEX_OUT => HEX1);
		C2	:	char_decoder port map (BIN_IN => o2, HEX_OUT => HEX2);
		C3	:	char_decoder port map (BIN_IN => o3, HEX_OUT => HEX3);
		C4	:	char_decoder port map (BIN_IN => o4, HEX_OUT => HEX4);
		C5	:	char_decoder port map (BIN_IN => o5, HEX_OUT => HEX5);

		LEDR(0) <= Clock_div;
		GPIO_1(0) <= Clock_div;
		
		COUNTER : process(Clock_div, Reset)
			begin
					if(Reset = '0') then
						p0 <= 0;
						p1 <= 0;
						p2 <= 0;
						p3 <= 0;
						p4 <= 0;
						p5 <= 0;
					elsif(rising_edge(Clock_div)) then
						case p0 is
							when 9 =>
								p0 <= 0;
								p1 <= p1 + 1;
								case p1 is
									when 9 =>
										p1 <= 0;
										p2 <= p2 + 1;
										case p2 is 
											when 9 =>
												p2 <= 0;
												p3 <= p3 + 1;
												case p3 is
													when 9 =>
														p3 <= 0;
														p4 <= p4 + 1;
														case p4 is
															when 9 =>
																p4 <= 0;
																p5 <= p5 + 1;
																case p5 is 
																	when 9 =>
																		p5 <= 0;
																	when others => null;
																end case;
															when others => null;
														end case;
													when others => null;
												end case;
											when others => null;
										end case;
									when others => null;
								end case;
							when others => p0 <= p0 + 1;
						end case;
					end if;
				end process;
				
				o0 <= std_logic_vector(to_unsigned(p0, 4));
				o1 <= std_logic_vector(to_unsigned(p1, 4));
				o2 <= std_logic_vector(to_unsigned(p2, 4));
				o3 <= std_logic_vector(to_unsigned(p3, 4));
				o4 <= std_logic_vector(to_unsigned(p4, 4));
				o5 <= std_logic_vector(to_unsigned(p5, 4));
				
						
						
	
end architecture;
