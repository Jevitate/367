library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity twos_comp_decoder is
	port(	TWOS_COMP_IN	: in std_logic_vector(3 downto 0);
			MAG_OUT			: out std_logic_vector(6 downto 0);
			SIGN_OUT			: out std_logic_vector(6 downto 0));
end entity;



architecture twos_comp_decoder_arch of twos_comp_decoder is




begin

		

		
		--Decoder process
		top_proc : process (TWOS_COMP_IN)
		
		begin
		
			case (TWOS_COMP_IN) is
				when "0000" => MAG_OUT <= "1000000"; --0
				when "0001" => MAG_OUT <= "1111001"; --1
				when "0010" => MAG_OUT <= "0100100"; --2
				when "0011" => MAG_OUT <= "0110000"; --3
				when "0100" => MAG_OUT <= "0011001"; --4
				when "0101" => MAG_OUT <= "0010010"; --5
				when "0110" => MAG_OUT <= "0000010"; --6
				when "0111" => MAG_OUT <= "1111000"; --7		
				
				
				when "1000" => MAG_OUT <= "0000000"; --8
				when "1001" => MAG_OUT <= "1111000"; --7
				when "1010" => MAG_OUT <= "0000010"; --6
				when "1011" => MAG_OUT <= "0010010"; --5
				when "1100" => MAG_OUT <= "0011001"; --4
				when "1101" => MAG_OUT <= "0110000"; --3
				when "1110" => MAG_OUT <= "0100100"; --2
				when "1111" => MAG_OUT <= "1111001"; --1
					
				
				
				when others => MAG_OUT <= "1000000";
				
			end case;
			
			case(TWOS_COMP_IN) is
				
				when "0000" => SIGN_OUT <= "1111111"; --0
				when "0001" => SIGN_OUT <= "1111111"; --1
				when "0010" => SIGN_OUT <= "1111111"; --2
				when "0011" => SIGN_OUT <= "1111111"; --3
				when "0100" => SIGN_OUT <= "1111111"; --4
				when "0101" => SIGN_OUT <= "1111111"; --5
				when "0110" => SIGN_OUT <= "1111111"; --6
				when "0111" => SIGN_OUT <= "1111111"; --7	


				when "1000" => SIGN_OUT <= "0111111"; --8
				when "1001" => SIGN_OUT <= "0111111"; --7
				when "1010" => SIGN_OUT <= "0111111"; --6
				when "1011" => SIGN_OUT <= "0111111"; --5
				when "1100" => SIGN_OUT <= "0111111"; --4
				when "1101" => SIGN_OUT <= "0111111"; --3
				when "1110" => SIGN_OUT <= "0111111"; --2
				when "1111" => SIGN_OUT <= "0111111"; --1		

				when others => SIGN_OUT <=  "1000000";
				
				end case;
			
		end process;
		

				

end architecture;



