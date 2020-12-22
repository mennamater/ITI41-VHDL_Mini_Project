----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 02:40:38 PM
-- Design Name: 
-- Module Name: counter_4bit - Behavioral_counter_4bit
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_4bit is
Port (clk: in std_logic;
rst: in std_logic;

count : out std_logic_vector(3 downto 0) :=(others =>'0');
msb :out std_logic 
 );
end counter_4bit;


architecture Behavioral_counter_4bit of counter_4bit is
component ff
port(clk: in std_logic;
rst: in  std_logic;
d:in std_logic;
q:out std_logic
);
end component;

 signal counter_signal : std_logic_vector(3 downto 0) := (others =>'0') ;
 signal d_signal:std_logic :='0';
--signal  q_msb :std_logic :='0';
--signal  bridge :std_logic :='0';
 --signal msb_signal : std_logic:='0';
begin
f:ff port map(clk=>clk,rst =>rst ,d=> d_signal,q=> msb);
process (clk)
begin
if(rising_edge(clk)) then
if(rst='1') then
counter_signal <= "0000";
d_signal <='0';


elsif (rst='0')then
--if (counter_signal ="0000") then

--counter_signal <=  counter_signal  + "0001";

if (counter_signal ="1110") then
d_signal <='1';
counter_signal <= "1111";
elsif (counter_signal ="0000") then
d_signal <='0';
counter_signal <=  counter_signal  + "0001";
else
counter_signal <=  counter_signal  + "0001";
--bridge <=d_signal;
--q_msb <=bridge;


end if; 

end if;
end if;
end process;
--msb <= q_msb;
count <=  counter_signal;
--msb<=q_msb;
end Behavioral_counter_4bit;
