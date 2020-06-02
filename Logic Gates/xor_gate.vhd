library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
port(	x in std_logic;
	y in std_logic;
	z out std_logic
);
end xor_gate;

architecture arch of xor_gate is 
begin
	process(x, y)
	begin
	if (x/=y) then 
		z <='1';
	else 
		z <='0';
	end if;
	end process;
	
end arch;

architecture beh of xor_gate is 
begin 
	z <= x xor y;
end beh
