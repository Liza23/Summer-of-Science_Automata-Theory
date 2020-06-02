library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity adder is 
generic (n: natural :=2);
port( A:     in std_logic_vector(n-1 downto 0);
      B:     in std_logic_vector(n-1 downto 0);
      carry: out std_logic;
      sum:   out std_logic_vector(n-1 downto 0)
);
end adder;

architecture beh of adder is 
-- define a temparary signal to store the result
signal result: std_logic_vector(n downto 0);

begin  
  result <= ('0' & A)+('0' & B);
  sum <= result(n-1 downto 0);
  carry <= result(n);

end beh;
