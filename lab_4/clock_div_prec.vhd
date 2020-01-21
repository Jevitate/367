library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_div_prec is
	port (Clock_In	 : in		std_logic;
			Reset		 : in		std_logic;
			Sel		 : in		std_logic_vector(1 downto 0);
			Clock_Out : out	std_logic);
end entity;

architecture clock_div_prec_arch of clock_div_prec is

	component dflipflop
		port(Clock 	: in  std_logic;
	        Reset		: in  std_logic;
			  D 			: in  std_logic;
	        Q 			: out std_logic;
	        Qn 			: out std_logic);
	end component;
	
	signal CNT: std_logic_vector (37 downto 0);
	signal CNTn: std_logic_vector (37 downto 0);
	signal COUNT: integer range 0 to 50000000;
	signal max_count: integer range 0 to 50000000;
	signal Clock_Out_Buf	: std_logic:='0';
	
	begin
	
		D1 	: dflipflop port map (Clock => Clock_In, Reset => Reset, Q => CNT(0), Qn => CNTn(0), 		D => CNTn(0));
		D2 	: dflipflop port map (Clock => CNTn(0), Reset => Reset, Q => CNT(1), Qn => CNTn(1), 	D => CNTn(1));
		D3 	: dflipflop port map (Clock => CNTn(1), Reset => Reset, Q => CNT(2), Qn => CNTn(2), 	D => CNTn(2));
		D4 	: dflipflop port map (Clock => CNTn(2), Reset => Reset, Q => CNT(3), Qn => CNTn(3), 	D => CNTn(3));
		D5 	: dflipflop port map (Clock => CNTn(3), Reset => Reset, Q => CNT(4), Qn => CNTn(4),		D => CNTn(4));
		D6 	: dflipflop port map (Clock => CNTn(4), Reset => Reset, Q => CNT(5), Qn => CNTn(5),		D => CNTn(5));
		D7 	: dflipflop port map (Clock => CNTn(5), Reset => Reset, Q => CNT(6), Qn => CNTn(6), 	D => CNTn(6));
		D8 	: dflipflop port map (Clock => CNTn(6), Reset => Reset, Q => CNT(7), Qn => CNTn(7), 	D => CNTn(7));
		D9 	: dflipflop port map (Clock => CNTn(7), Reset => Reset, Q => CNT(8), Qn => CNTn(8), 	D => CNTn(8));
		
		D10 	: dflipflop port map (Clock => CNTn(8), Reset => Reset, Q => CNT(9), Qn => CNTn(9),			D => CNTn(9));
		D11 	: dflipflop port map (Clock => CNTn(9), Reset => Reset, Q => CNT(10), Qn => CNTn(10),		D => CNTn(10));
		D12 	: dflipflop port map (Clock => CNTn(10), Reset => Reset, Q => CNT(11), Qn => CNTn(11), 	D => CNTn(11));
		D13 	: dflipflop port map (Clock => CNTn(11), Reset => Reset, Q => CNT(12), Qn => CNTn(12), 	D => CNTn(12));
		D14 	: dflipflop port map (Clock => CNTn(12), Reset => Reset, Q => CNT(13), Qn => CNTn(13), 	D => CNTn(13));
		D15 	: dflipflop port map (Clock => CNTn(13), Reset => Reset, Q => CNT(14), Qn => CNTn(14),		D => CNTn(14));
		D16 	: dflipflop port map (Clock => CNTn(14), Reset => Reset, Q => CNT(15), Qn => CNTn(15),		D => CNTn(15));
		D17 	: dflipflop port map (Clock => CNTn(15), Reset => Reset, Q => CNT(16), Qn => CNTn(16), 	D => CNTn(16));
	
		D18 	: dflipflop port map (Clock => CNTn(16), Reset => Reset, Q => CNT(17), Qn => CNTn(17), 	D => CNTn(17));
		D19 	: dflipflop port map (Clock => CNTn(17), Reset => Reset, Q => CNT(18), Qn => CNTn(18), 	D => CNTn(18));
		D20 	: dflipflop port map (Clock => CNTn(18), Reset => Reset, Q => CNT(19), Qn => CNTn(19),		D => CNTn(19));
		D21 	: dflipflop port map (Clock => CNTn(19), Reset => Reset, Q => CNT(20), Qn => CNTn(20),		D => CNTn(20));
		D22 	: dflipflop port map (Clock => CNTn(20), Reset => Reset, Q => CNT(21), Qn => CNTn(21), 	D => CNTn(21));
		D23 	: dflipflop port map (Clock => CNTn(21), Reset => Reset, Q => CNT(22), Qn => CNTn(22), 	D => CNTn(22));
		D24 	: dflipflop port map (Clock => CNTn(22), Reset => Reset, Q => CNT(23), Qn => CNTn(23), 	D => CNTn(23));
		D25 	: dflipflop port map (Clock => CNTn(23), Reset => Reset, Q => CNT(24), Qn => CNTn(24),		D => CNTn(24));
		
		D26 	: dflipflop port map (Clock => CNTn(24), Reset => Reset, Q => CNT(25), Qn => CNTn(25),		D => CNTn(25));
		D27 	: dflipflop port map (Clock => CNTn(25), Reset => Reset, Q => CNT(26), Qn => CNTn(26), 	D => CNTn(26));
		D28 	: dflipflop port map (Clock => CNTn(26), Reset => Reset, Q => CNT(27), Qn => CNTn(27), 	D => CNTn(27));
		D29 	: dflipflop port map (Clock => CNTn(27), Reset => Reset, Q => CNT(28), Qn => CNTn(28), 	D => CNTn(28));
		D30 	: dflipflop port map (Clock => CNTn(28), Reset => Reset, Q => CNT(29), Qn => CNTn(29),		D => CNTn(29));
		D31 	: dflipflop port map (Clock => CNTn(29), Reset => Reset, Q => CNT(30), Qn => CNTn(30),		D => CNTn(30));
		D32 	: dflipflop port map (Clock => CNTn(30), Reset => Reset, Q => CNT(31), Qn => CNTn(31), 	D => CNTn(31));
		
		D33 	: dflipflop port map (Clock => CNTn(31), Reset => Reset, Q => CNT(32), Qn => CNTn(32), 	D => CNTn(32));
		D34 	: dflipflop port map (Clock => CNTn(32), Reset => Reset, Q => CNT(33), Qn => CNTn(33), 	D => CNTn(33));
		D35 	: dflipflop port map (Clock => CNTn(33), Reset => Reset, Q => CNT(34), Qn => CNTn(34),		D => CNTn(34));
		D36 	: dflipflop port map (Clock => CNTn(34), Reset => Reset, Q => CNT(35), Qn => CNTn(35),		D => CNTn(35));
		D37 	: dflipflop port map (Clock => CNTn(35), Reset => Reset, Q => CNT(36), Qn => CNTn(36), 	D => CNTn(36));
		D38 	: dflipflop port map (Clock => CNTn(36), Reset => Reset, Q => CNT(37), Qn => CNTn(37), 	D => CNTn(37));

		
		CLOCK_SELECT : process (Clock_In, Reset)
			begin
				if (Sel = "00") then
					max_count <= 25000000;
				elsif (Sel = "01") then
					max_count <= 2500000;
				elsif (Sel = "10") then
					max_count <= 250000;
				elsif (Sel = "11") then
					max_count <= 25000;
				else
					max_count <= 25000;
				end if;
			end process;
			
			
		CLOCK_COUNTER: process(Clock_in, Reset)
						begin
							if(Reset = '0') then
								COUNT <= 0;
							elsif(rising_edge(Clock_In) and (max_count - COUNT = 0)) then
								Clock_Out_Buf <= not Clock_Out_Buf;
								
								COUNT <= 0;
							elsif(rising_edge(Clock_in)) then
								COUNT <= COUNT + 1;
							end if;
						end process;
	
		Clock_Out <= Clock_Out_Buf;	

--		CLOCK_COUNTER: process (Clock_In, Reset)
--			begin
----				Clock_Out <= '0';
--				if (Reset = '0') then
--					COUNT <= 0;
--				elsif(rising_edge(Clock_In)) then
--					COUNT <= COUNT +1;
--				end if;
--				if (max_count = 0) then
--					case COUNT is
--						when 25000000=>
--							Clock_Out_Buf <= not Clock_Out_Buf;
--							Clock_Out <= not Clock_Out_Buf;
--							COUNT <= 0;
--						when others => COUNT <= COUNT + 1;
--					end case;
--				elsif (max_count = 1) then
--					case COUNT is
--						when 2500000=>
--							Clock_Out_Buf <= not Clock_Out_Buf;
--							Clock_Out <= not Clock_Out_Buf;
--							COUNT <= 0;
--						when others => COUNT <= COUNT + 1;
--					end case;
--				elsif (max_count = 2) then
--					case COUNT is
--						when 250000=>
--							Clock_Out_Buf <= not Clock_Out_Buf;
--							Clock_Out <= not Clock_Out_Buf;
--							COUNT <= 0;
--						when others => COUNT <= COUNT + 1;
--					end case;
--				elsif (max_count = 3) then
--					case COUNT is
--						when 25000=>
--							Clock_Out_Buf <= not Clock_Out_Buf;
--							Clock_Out <= not Clock_Out_Buf;
--							COUNT <= 0;
--						when others => COUNT <= COUNT + 1;
--					end case;
--				end if;
--			end process;	
					
						 
end architecture;