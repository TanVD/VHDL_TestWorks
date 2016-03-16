library IEEE; use IEEE.STD_LOGIC_1164.all;

entity agregation is
	port(y: out STD_LOGIC_VECTOR(8 downto 0));
end;

architecture synth of agregation is
begin
	y <= ('1', '0', 4 => '1', 2 downto 1 => '1', others => '0');
end;