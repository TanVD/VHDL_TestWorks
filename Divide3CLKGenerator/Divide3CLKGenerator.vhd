library IEEE; use IEEE.STD_LOGIC_1164.all;

entity divideby3FSM is
	port(clk, reset: in STD_LOGIC;
	     y:	        out STD_LOGIC);
end;

architecture synth of divideby3FSM is
	type statetype is (S0, S1, S2);
	signal state, nextstate: statetype;
begin
	--register logic
	process(clk, reset) begin
		if (reset = '1') then
			state <= S0;
		elsif rising_edge(clk) then
			state <= nextstate;
		end if;
	end process;
	--State logic
	nextstate <= S1 when state = S0 else
	S2 when state = S1 else	S0;
	--emitting logic
	y <= '1' when state = S0 else '0';
end;