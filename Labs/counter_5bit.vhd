----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 03:54:29 PM
-- Design Name: 
-- Module Name: counter_5bit - Behavioral_counter_5bit
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

entity counter_5bit is
Port ( count_5_bit :out std_logic_vector (4 downto 0) :=(others =>'0');
clk :in std_logic;
rst :in std_logic :='0'
 );
end counter_5bit;

architecture Behavioral_counter_5bit of counter_5bit is
component counter_4bit 
Port (clk: in std_logic;
rst: in std_logic;

count : out std_logic_vector(3 downto 0);
msb:out std_logic 
);
end component;
signal signal_count_4:std_logic_vector (3 downto 0) :=(others=>'0');
signal signal_count_5:std_logic_vector (4 downto 0) :=(others=>'0');
 signal toggle:std_logic :='0';
 signal in_count:std_logic_vector(4 downto 0):= (others=>'0');
 signal out_count:std_logic:='0';

begin

c1:counter_4bit port map(clk=>clk, rst=>rst ,count=> signal_count_4 ,msb=> toggle); 
----------------------------------------------------------------------------
process(clk)

begin
if(rising_edge(clk)) then
--if(toggle='1')then

if(in_count < "10000")then
out_count <='0' ;
in_count <= in_count + "00001";
--out_count <= in_count;
--signal_count_5<=out_count &signal_count_4;
elsif( in_count <=  "11111") then
out_count <= '1';
in_count <=in_count+"00001";

else 

in_count <= "00000";
--signal_count_5<=out_count &signal_count_4;
end if;
end if;
--end if;
--count_5_bit <= out_count & signal_count_4 ;
end process;

count_5_bit <= out_count & signal_count_4 ;

--toggle <='1';
end Behavioral_counter_5bit;
