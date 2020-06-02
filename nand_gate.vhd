library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is 
port ( x in std_logic;
  y in std_logic;
  z out std_logic
);
end nand_gate;

architecture arch of nand_gate is 
begin 
  process(x, y)
  begin
  if ((x='1') and (y='1')) then
    z <= '0';
  else 
    z <= '1';
  end if;
  end process;

end arch;

architecture beh of nand_gate is
begin 
  z <= x nand y;
end beh
