library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_FSM_insert_ERRORS is
--  Port ( );
end tb_FSM_insert_ERRORS;

architecture Behavioral_tb_FSM_insert_ERRORS of tb_FSM_insert_ERRORS is
component fsm 
  PORT( clk, reset: IN std_logic;
        x: IN std_logic;
        y: OUT std_logic);
END component;
SIGNAL clk, reset, y: std_logic;
SIGNAL x: std_logic:='0';

begin

fsm_used_assert:fsm PORT MAP (clk, reset, x, y);
clk_process:process

begin
clk<='1';
wait for 20 ns;
clk<='1';
wait for 20 ns;
end process;
------------------------------------------------------------------------
assert_process:process 
begin
----------
   reset <= '1';  --current_state=even ,output=0,x=0 :next_current:even,x=1 :next_current:odd
 WAIT FOR 20 ns;
 ASSERT y = '0'
   REPORT "Error:current_state=even => output=0 "
   SEVERITY warning;
   --------------------------------------------------------
 reset <= '0';   --current_state=even          
 x <= '1';       -- 
 WAIT FOR 20 ns;
 ASSERT y = '0'
   REPORT "Error:current_state=even => output=0 "
   SEVERITY warning;
   ------------------------------------
 WAIT FOR 20 ns;
 x <= '1';     --
 WAIT FOR 20 ns;
 ASSERT y = '1'
   REPORT "Error: current_state=even => y = 0"
   SEVERITY warning;
 WAIT FOR 20 ns;
 x <= '0';
 WAIT FOR 20 ns;
 ASSERT y = '1'
   REPORT "Error: current_state=even => y = 0"
   SEVERITY warning;
 WAIT FOR 20 ns;
 x <= '1';
 WAIT FOR 20 ns;
 ASSERT y ='1' --change
   REPORT "Error: current_state=even => y = 0"
   SEVERITY warning;
 WAIT;
---------
end process;
end Behavioral_tb_FSM_insert_ERRORS;
