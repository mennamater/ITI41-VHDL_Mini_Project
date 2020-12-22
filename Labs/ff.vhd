----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 10:12:30 PM
-- Design Name: 
-- Module Name: ff - Behavioral_ff
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

entity ff is
port(
clk: in std_logic;
rst: in  std_logic;
d:in std_logic;
q:out std_logic
);
end ff;
architecture Behavioral_ff of ff is
signal state:std_logic :='0';

begin
process (clk)
begin
if(rising_edge (clk))then
if(rst='1') then
state <='0';
else 
state <=d;
end if;
end if;
end process;
q <= state;
end Behavioral_ff;
