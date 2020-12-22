----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 01:24:34 PM
-- Design Name: 
-- Module Name: TB_RIPPLE_4BIT - Behavioral_TB_RIPPLE_4BIT
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


entity TB_RIPPLE_4BIT is

end TB_RIPPLE_4BIT;

architecture Behavioral_TB_RIPPLE_4BIT of TB_RIPPLE_4BIT is
COMPONENT adder4_ripper 
 Port( 
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC :='0';
           COUT : out STD_LOGIC;
           SOUT: out STD_LOGIC_VECTOR (3 downto 0));
end COMPONENT;
 signal A :  STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');
 signal B :  STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');         
signal SOUT :  STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');
signal CIN :  STD_LOGIC :='0';
signal Cout :  STD_LOGIC :='0';
signal clk :STD_LOGIC;
begin

uut:adder4_ripper port map(A=>A,B=>B,CIN=>CIN ,COUT=>COUT,SOUT=>SOUT);
process
begin

wait for 10 ps;
A<="1100";
B<="0011";
wait for 10 ps;
A<="0000";
B<="0011";
wait for 10 ps;
A<="1111";
B<="1111";
wait for 10 ps;
A<="1100";
B<="1111";
wait for 10 ps;
END PROCESS;
end Behavioral_TB_RIPPLE_4BIT;
