library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_div_prec is
	port (Clock_in		:in	std_logic;
			Reset			:in	std_logic;
			Sel			:in	std_logic_vector(1 downto 0);
			Clock_out	:out	std_logic);
end entity;

architecture clock_div_prec_arch of clock_div_prec is

	component dflipflop
		port(Clock		:in std_logic;
			  Reset		:in std_logic;
			  D			:in std_logic;
			  Q			:out std_logic;
			  Qn			:out std_logic);
	end component;
	
	signal CNT: std_logic_vector(37 downto 0);
	signal CNTn: std_logic_vector(37 downto 0);
	signal Count: integer range 0 to 50000000;
	signal max_count: integer range 0 to 50000000;
	signal Clock_Out_buffer : std_logic:='0';
	
	

	begin
	
	
		D0: Dflipflop port map (Clock => Clock_In, Reset => Reset, D => CNT(0), Q => CNT(0), Qn => CNTn(0));
		D1: Dflipflop port map (Clock => CNTn(0), Reset => Reset, D => CNT(1), Q => CNT(1), Qn => CNTn(1));
		D2: Dflipflop port map (Clock => CNTn(1), Reset => Reset, D => CNT(2), Q => CNT(2), Qn => CNTn(2));
		D3: Dflipflop port map (Clock => CNTn(2), Reset => Reset, D => CNT(3), Q => CNT(3), Qn => CNTn(3));
		D4: Dflipflop port map (Clock => CNTn(3), Reset => Reset, D => CNT(4), Q => CNT(4), Qn => CNTn(4));
		D5: Dflipflop port map (Clock => CNTn(4), Reset => Reset, D => CNT(5), Q => CNT(5), Qn => CNTn(5));
		D6: Dflipflop port map (Clock => CNTn(5), Reset => Reset, D => CNT(6), Q => CNT(6), Qn => CNTn(6));
		D7: Dflipflop port map (Clock => CNTn(6), Reset => Reset, D => CNT(7), Q => CNT(7), Qn => CNTn(7));

		D8: Dflipflop port map (Clock => CNTn(7), Reset => Reset, D => CNT(8), Q => CNT(8), Qn => CNTn(8));
		D9: Dflipflop port map (Clock => CNTn(8), Reset => Reset, D => CNT(9), Q => CNT(9), Qn => CNTn(9));
		D10: Dflipflop port map (Clock => CNTn(9), Reset => Reset, D => CNT(10), Q => CNT(10), Qn => CNTn(10));
		D11: Dflipflop port map (Clock => CNTn(10), Reset => Reset, D => CNT(11), Q => CNT(11), Qn => CNTn(11));
		D12: Dflipflop port map (Clock => CNTn(11), Reset => Reset, D => CNT(12), Q => CNT(12), Qn => CNTn(12));
		D13: Dflipflop port map (Clock => CNTn(12), Reset => Reset, D => CNT(13), Q => CNT(13), Qn => CNTn(13));
		D14: Dflipflop port map (Clock => CNTn(13), Reset => Reset, D => CNT(14), Q => CNT(14), Qn => CNTn(14));
		D15: Dflipflop port map (Clock => CNTn(14), Reset => Reset, D => CNT(15), Q => CNT(15), Qn => CNTn(15));

		D16: Dflipflop port map (Clock => CNTn(15), Reset => Reset, D => CNT(16), Q => CNT(16), Qn => CNTn(16));
		D17: Dflipflop port map (Clock => CNTn(16), Reset => Reset, D => CNT(17), Q => CNT(17), Qn => CNTn(17));
		D18: Dflipflop port map (Clock => CNTn(17), Reset => Reset, D => CNT(18), Q => CNT(18), Qn => CNTn(18));
		D19: Dflipflop port map (Clock => CNTn(18), Reset => Reset, D => CNT(19), Q => CNT(19), Qn => CNTn(19));
		D20: Dflipflop port map (Clock => CNTn(19), Reset => Reset, D => CNT(20), Q => CNT(20), Qn => CNTn(20));
		D21: Dflipflop port map (Clock => CNTn(20), Reset => Reset, D => CNT(21), Q => CNT(21), Qn => CNTn(21));
		D22: Dflipflop port map (Clock => CNTn(21), Reset => Reset, D => CNT(22), Q => CNT(22), Qn => CNTn(22));
		D23: Dflipflop port map (Clock => CNTn(22), Reset => Reset, D => CNT(23), Q => CNT(23), Qn => CNTn(23));

		D24: Dflipflop port map (Clock => CNTn(23), Reset => Reset, D => CNT(24), Q => CNT(24), Qn => CNTn(24));
		D25: Dflipflop port map (Clock => CNTn(24), Reset => Reset, D => CNT(25), Q => CNT(25), Qn => CNTn(25));
		D26: Dflipflop port map (Clock => CNTn(25), Reset => Reset, D => CNT(26), Q => CNT(26), Qn => CNTn(26));
		D27: Dflipflop port map (Clock => CNTn(26), Reset => Reset, D => CNT(27), Q => CNT(27), Qn => CNTn(27));
		D28: Dflipflop port map (Clock => CNTn(27), Reset => Reset, D => CNT(28), Q => CNT(28), Qn => CNTn(28));
		D29: Dflipflop port map (Clock => CNTn(28), Reset => Reset, D => CNT(29), Q => CNT(29), Qn => CNTn(29));
		D30: Dflipflop port map (Clock => CNTn(29), Reset => Reset, D => CNT(30), Q => CNT(30), Qn => CNTn(30));
		D31: Dflipflop port map (Clock => CNTn(30), Reset => Reset, D => CNT(31), Q => CNT(31), Qn => CNTn(31));

		D32: Dflipflop port map (Clock => CNTn(31), Reset => Reset, D => CNT(32), Q => CNT(32), Qn => CNTn(32));
		D33: Dflipflop port map (Clock => CNTn(32), Reset => Reset, D => CNT(33), Q => CNT(33), Qn => CNTn(33));
		D34: Dflipflop port map (Clock => CNTn(33), Reset => Reset, D => CNT(34), Q => CNT(34), Qn => CNTn(34));
		D35: Dflipflop port map (Clock => CNTn(34), Reset => Reset, D => CNT(35), Q => CNT(35), Qn => CNTn(35));
		D36: Dflipflop port map (Clock => CNTn(35), Reset => Reset, D => CNT(36), Q => CNT(36), Qn => CNTn(36));
		D37: Dflipflop port map (Clock => CNTn(36), Reset => Reset, D => CNT(37), Q => CNT(37), Qn => CNTn(37));
	
	
		CLock_select : process(CLock_in, Reset)
			begin
					if(Sel = "00") then
						max_count <= 25000000;
					elsif(Sel = "01") then
						max_count <= 2500000;
					elsif(Sel = "10") then
						max_count <= 250000;
					elsif(Sel = "11") then
						max_count <= 25000;
					else
						max_count <= 25000;
					end if;
			end process;
			
		Clock_Counter: process(Clock_in, Reset)
			begin
					if(Reset = '0') then
						Count <= 0;
					elsif(rising_edge(Clock_in) and (max_count - Count = 0)) then
						Clock_Out_buffer <= not Clock_Out_buffer;
						Count <= 0;
					elsif(rising_edge(Clock_in)) then 
						Count <= Count + 1;
					end if;
			end process;
			
			Clock_Out <= CLock_Out_buffer;
	
	
end architecture;

