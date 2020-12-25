
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_ff_asyc is
--  Port ( );
end tb_ff_asyc;

architecture Behavioral_tb_ff_asyc of tb_ff_asyc is
component d_ff_async  
  PORT( clk, set, clear: IN std_logic;
        d_in : IN std_logic;
        d_out: OUT std_logic);
END component;
signal clk, set, clear:std_logic;
signal d_in :  std_logic;
signal  d_out:  std_logic;
begin
ff1:d_ff_async port map (clk=>clk, set=>set, clear=>clear, d_in => d_in , d_out => d_out );
process_clk:process
begin
clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;
create_rst_process:process
begin
  clear <= '1';
-- wait for 320 ns;  
wait for 40 ns;  
  clear <= '0';
 wait for 40 ns ;
end process;
process_set:process
begin
  set <= '1';
-- wait for 320 ns;  
wait for 30 ns;  
  set <= '0';
 wait for 30 ns ;
end process;
process_d_in:process
begin
d_in<='0';
 wait for 25 ns ;
 d_in<='1';
 wait for 25 ns ;

end process;
end Behavioral_tb_ff_asyc;
