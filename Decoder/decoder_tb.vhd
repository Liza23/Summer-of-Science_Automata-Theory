library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity decoder_tb is 
--entity declaration
end decoder_tb;

architecture tb of decoder_tb is 
  
  signal t_I: std_logic_vector (1 downto 0) = "00";
  signal t_O: std_logic_vector (3 downto 0);
  
  --declaring component
  component decoder
  port (  I: in std_logic_vector (1 downto 0);
        O: out std_logic_vector (3 downto 0)
  );
  end component;
  
  begin
  
  u_decoder: decoder port map (t_I, t_O);
  
  process
  
  --variable should be declared within the process
    variable err_cnt: integer := 0;
  
  begin
    --case "00"
    wait for 10 ns;
    t_I <= "00";
    wait for 1 ns;
    asset (t_O = "0001") report "Error Case 0"
    severity error;
    if (t_O /= "0001") then 
      err_cnt := err_cnt+1;
    end if;
    
    --case "01"
    wait for 10 ns;
    t_I <= "01";
    wait for 1 ns;
    asset (t_O = "0010") report "Error Case 0"
    severity error;
    if (t_O /= "0010") then 
      err_cnt := err_cnt+1;
    end if;
    
    --case "10"
    wait for 10 ns;
    t_I <= "10";
    wait for 1 ns;
    asset (t_O = "0100") report "Error Case 0"
    severity error;
    if (t_O /= "0100") then 
      err_cnt := err_cnt+1;
    end if;
    
    --case "11"
    wait for 10 ns;
    t_I <= "11";
    wait for 1 ns;
    asset (t_O = "1000") report "Error Case 0"
    severity error;
    if (t_O /= "1000") then 
      err_cnt := err_cnt+1;
    end if;
    
    --case "11"
    wait for 10 ns;
    t_I <= "UU";
    
    --summary of all test_cases
    if (err_cnt = 0) then
      assert false;
      report "Testbench of decoder completed!"
      severity note;
    else 
      assert true;
      report "Something is wrong!"
      severity error;
    end if;
    
    wait;
    
  end process;
end tb;

configration cfg_tb of decoder_tb is
  for tb
  end for;
end cfg_tb;
