--testbench file created
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity adder_tb is
--entity declaration
end adder_tb;

architecture tb of adder_tb is

  component adder is 
  port( A:     in std_logic_vector(1 downto 0);
        B:     in std_logic_vector(1 downto 0);
        carry: out std_logic;
        sum:   out std_logic_vector(1 downto 0)
  );
  end component;
  
  signal A,B:     std_logic_vector(1 downto 0);
  signal carry:   std_logic;
  signal sum:     std_logic_vector(1 downto 0);
  
  begin 
  
    u_adder: adder port map (A, B, carry, sum);
  
  process
    
    variable err_cnt: integer :=0;
  
  begin
  

  
