library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
port(	x in std_logic;
	y in std_logic;
	z out std_logic
);
end xnor_gate;

architecture arch of xnor_gate is 
begin
	process(x, y)
	begin
	if (x/=y) then 
		z <='0';
	else 
		z <='1';
	end if;
	end process;
	
end arch;

architecture beh of xnor_gate is 
begin 
	z <= x xnor y;
end beh
