library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_128x8_sync is
   port ( clock : in std_logic;
	  address : in std_logic_vector (7 downto 0);
	  data_out : out std_logic_vector (7 downto 0));
end entity;

architecture rom_128x8_sync_arch of rom_128x8_sync is

  constant LDA_IMM : std_logic_vector (7 downto 0) := x"86";
  constant LDA_DIR : std_logic_vector (7 downto 0) := x"87";
  --constant LDB_IMM : std_logic_vector (7 downto 0) := x"88";
  constant STA_DIR : std_logic_vector (7 downto 0) := x"96";
  --constant LDA_IMM : std_logic_vector (7 downto 0) := x"86";
  constant BRA : std_logic_vector (7 downto 0) := x"20";

  type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);

  constant ROM : rom_type := (0 => LDA_IMM,
				1 => x"AA",
				2 => STA_DIR,
				3 => x"E0",
				--4 => STA_DIR,
				--5 => x"E1",
				4 => LDA_DIR,
				5 => x"80",
				--8 => STA_DIR,
				--9 => x"E0",
				--10 => STA_DIR,
				--11 => x"E1",
				6 => BRA,
				7 => x"00",
				others => x"00");

  signal EN : std_logic;

  begin
    ENABLE : process(address)
      begin
	if((to_integer(unsigned(address)) >= 0) and
	  (to_integer(unsigned(address)) <= 127)) then
	   EN <= '1';
	else
	   EN <= '0';
	end if;
      end process;

    MEMORY : process(clock)
      begin
	if(clock'event and clock='1') then
	  if(EN='1') then
	    data_out <= ROM(to_integer(unsigned(address)));
	  end if;
	end if;
      end process;

end architecture;
