library IEEE;
use IEEE.std_logic_1164.all;

entity data_path is
   port(clock : in std_logic;
	reset : in std_logic;
	from_memory : in std_logic_vector(7 downto 0);
	to_memory :out std_logic_vector(7 downto 0);
	IR_Load : in std_logic;
	IR : out std_logic_vector(7 downto 0);
	MAR_Load : in std_logic;
	PC_Load : in std_logic;
	PC_Inc : in std_logic;
	A_Load : in std_logic;
	B_Load : in std_logic;
	ALU_Sel : in std_logic_vector(2 downto 0);
	CCR_Result : out std_logic_vector(3 downto 0);
	CCR_Load : in std_logic;
	Bus2_Sel : in std_logic_vector(1 downto 0);
	Bus1_Sel : in std_logic_vector(1 downto 0));
end entity;

architecture data_path_arch of data_path is
  signal A : std_logic_vector(7 downto 0);
  signal B : std_logic_vector(7 downto 0);
  signal Bus1 : std_logic_vector(7 downto 0);
  signal Bus2 : std_logic_vector(7 downto 0);
  signal PC : std_logic_vector(7 downto 0);
  signal MAR : std_logic_vector(7 downto 0);
  signal CCR : std_logic_vector(3 downto 0);
  signal ALU_Result : std_logic_vector(7 downto 0);

  component alu
   port(A : in std_logic_vector(7 downto 0);
	B : in std_logic_vector(7 downto 0);
	ALU_Sel : in std_logic_vector(2 downto 0);
	NZVC : out std_logic_vector(3 downto 0);
	ALU_Result : out std_logic_vector(7 downto 0));
  end component;

  begin

    ALU_1 : alu port map(A => B,
			 B => Bus1,
			 ALU_Sel => ALU_Sel,
			 NZVC => CCR,
			 ALU_Result => ALU_Result);
end architecture;