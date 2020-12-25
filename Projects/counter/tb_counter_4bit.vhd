
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_counter_4bit is
--  Port ( );
end tb_counter_4bit;

architecture Behavioral_tb_counter_4bit of tb_counter_4bit is
component counter_4bit 
Port (clk: in std_logic;
rst: in std_logic;
--en :in std_logic;
count : out std_logic_vector(3 downto 0);
msb :out std_logic
 );
 end component;
signal clk : std_logic;
signal rst: std_logic;
signal count :  std_logic_vector(3 downto 0);
signal msb : std_logic;
 
begin
uut : counter_4bit port map (clk=>clk,rst=>rst,count=>count, msb=> msb );
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
 wait for 640 ns ; --count from 0=> 16 twice
end process;

end Behavioral_tb_counter_4bit;
