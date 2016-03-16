library IEEE; use IEEE.STD_LOGIC_1164.all;

entity flopenr is
	port(clk,
		  reset,
		  en: in STD_LOGIC;
		  d:  in STD_LOGIC_VECTOR(3 downto 0);
		  q:  out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture asyncronous of flopenr is
begin
process(reset, clk) 
	begin
		if (reset = '1') then
			q <= "0000";
		elsif rising_edge(clk) then
			if (en = '1') then
				q <= d;
			end if;
		end if;
	end process;
end;