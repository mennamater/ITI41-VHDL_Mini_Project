----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity tb_fsm_moore_2p is
--  Port ( );
end tb_fsm_moore_2p;


architecture Behavioral of tb_fsm_moore_2p is
component fsm 
  PORT( clk, reset: IN std_logic;
        x: IN std_logic;
        y: OUT std_logic);
END component;
--signal
signal  reset,clk :std_logic :='0' ;
signal x:  std_logic:='0';
signal y:  std_logic:='0';

begin
uut: fsm port map(clk=>clk,reset=>reset,x=>x,y=>y);
clk_process:process
begin
clk<='1';
wait for 20 ns;
clk<='1';
wait for 20 ns;

end process;
reset_process:process
begin
reset<='0';
wait for 1000 ns;
reset<='1';
wait for 1000 ns;

end process;
input_process:process
begin
x<='1';
wait for 60 ns;
x<='0';
wait for 60 ns;

end process;
state_process:process
begin
x<='1';
wait for 60 ns;
x<='0';
wait for 60 ns;
end process;

end Behavioral;
