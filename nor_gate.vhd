library ieee;
use ieee.std_logic_1164.all;

entity nor_gate is
port(	x in std_logic;
	y in std_logic;
	z out std_logic
);
end nor_gate;

architecture arch of nor_gate is
begin
	process(x, y)
	begin
	if ((x='0') and (y='0')) then
		z <= '1';
	else 
		z <= '0';
	end if;
	end process;

end arch;

architecture beh of nor_gate is
begin
	z <='x' nor 'y'
end beh
