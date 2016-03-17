library IEEE; use IEEE.STD_LOGIC_1164.all;
entity priorityckt is
		port(a: in STD_LOGIC_VECTOR(3 downto 0);
		y: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture ifArch of priorityckt is
begin
	process(all) begin
		if (a(3) = '1') then y <= "1000";
		elsif  (a(2) = '1') then y <= "0100";
		elsif (a(1) = '1') then y <= "0010";
		elsif (a(0) = '0') then y <= "0001";
		else y <= "0000";
		end if;
	end process;
end;

architecture dontcare of priorityckt is
begin
	process(all) begin
		case? a is
		when "1---" => y <= "1000";
		when "01--" => y <= "0100";
		when "001-" => y <= "0010";
		when "0001" => y <= "0001";
		when others => y <= "0000";
		end case?;
	end process;
end;