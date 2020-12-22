----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 05:51:46 PM
-- Design Name: 
-- Module Name: tb_counter_5bit - Behavioral_tb_counter_5bit
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_counter_5bit is
--  Port ( );
end tb_counter_5bit;


architecture Behavioral_tb_counter_5bit of tb_counter_5bit is
component counter_5bit 
Port ( count_5_bit :out std_logic_vector (4 downto 0) ;
clk :in std_logic;
rst :in std_logic
 );
end component;
--external signal
signal count_5_bit : std_logic_vector (4 downto 0) :=(others =>'0');
 signal clk : std_logic;
 signal rst : std_logic ;
begin

uut : counter_5bit port map (clk=>clk,rst=>rst,count_5_bit=>count_5_bit);
create_clk_process :process
--clk_oeriod 20 ns
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;
create_rst_process:process
begin
  rst <= '1';
-- wait for 320 ns;  
wait for 20 ns;  
  rst <= '0';
 --wait for 640 ns ; --count from 0=> 16 twice
 wait;
end process;

end Behavioral_tb_counter_5bit;
