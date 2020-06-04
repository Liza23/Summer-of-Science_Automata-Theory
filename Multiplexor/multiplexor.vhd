library ieee;
use ieee.std_logic_1164.all;

enitity multiplexor is
port( I3:   in std_logic_vector(2 downto 0)
      I2:   in std_logic_vector(2 downto 0)
      I1:   in std_logic_vector(2 downto 0)
      I0:   in std_logic_vector(2 downto 0)
      S:    in std_logic_vector(1 downto 0)
      O:    out std_logic_vector(2 downto 0)
);
end multiplexor;

architecture beh1 of multiplexor is
begin 
  process(I3,I2,I1,I0,S)
  begin
    case S is 
      when "00" =>    O <= I0;
      when "10" =>    O <= I1;
      when "01" =>    O <= I2;
      when "11" =>    O <= I3;
      when others =>  O <= "ZZZ";
    end case;
  
  end process;
end beh1;

architecture beh2 of multiplexor is
begin
  O <=    I0 when S = "00" else
          I1 when S = "01" else
          I2 when S = "10" else
          I3 when S = "11" else
          "ZZZ";
end beh2;
