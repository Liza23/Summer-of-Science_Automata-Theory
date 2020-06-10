library ieee;
use ieee.std_logic_1164.all;

entity seq_design is
port( a:      in std_logic;
      clock:  in std_logic;
      reset:  in std_logic;
      x:      out std_logic
);
end seq_design;

architecture fsm of seq_design is
  --design states of FSM model
  
  type state_type is (S0, S1, S2, S3);
  signal next_state, current_state: state_type;

begin
  --concurrent process#1: state registers
  state_reg: process(clock, reset)
  begin
    if (reset='1') then
      current_state <= S0;
    elif (clock'event and clock='1') then 
      current_state <= next_state;
    end if;
    
  end process;
  
  --concurrent process#2: combinational logic 
  comb_logic: process(current_state, a)
  
  begin
    --use case statement to show
    --state transition
    
    case current_state is
    
      when S0 => x <= '0';
               if a = '0' then 
                 next_state <= S0;
               elif a = '1' then
                 next_state <= S1;
               end if;
      
      when S1 => x<= '0';
               if a = '0' then
                 next_state <= S1;
               elif a = '1' then 
                 next_state <= S2;
               end if;
      
      when S2 => x <= '0';
               if a = '0' then 
                 next_state <= S2;
               elif a = '1' then
                 next_state <= S3;
               end if;
      
      when S3 => x<= '0';
               if a = '0' then
                 next_state <= S3;
               elif a = '1' then 
                 next_state <= S4;
               end if;
      
      when others =>
               x <= '0'
               next_state <= S0;
    
    end case;
    
  end process;

end fsm;   
