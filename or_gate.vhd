library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
port(	x in std_logic;
	y in std_logic;
	z out std_logic
);
end or_gate;

architecture arch of or_gate is
begin
	process(x, y)
	begin
	if ((x='0') and (y='0')) then
		z <= '0';
	else 
		z <= '1';
	end if;
	end process;

end arch;

architecture beh of or_gate is
begin
	z <='x' or 'y'
end beh
