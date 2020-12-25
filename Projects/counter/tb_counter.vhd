----------------------------------------------------------------------------------

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_counter is
--  Port ( );
end tb_counter;

architecture Behavioral_tb_counter of tb_counter is
component counter 
   PORT( clk: IN bit;
         count: OUT natural RANGE 0 TO 15); 
END component;
signal clk : bit :='0';
signal count :natural RANGE 0 TO 15;
begin
uut_counter : counter port map (clk=>clk,count=>count );
create_clk_process :process
--clk_oeriod 20 ns
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;
end Behavioral_tb_counter;
-----------------------------------------------------------------------------------------