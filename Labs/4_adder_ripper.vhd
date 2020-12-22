----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 01:11:24 PM
-- Design Name: 
-- Module Name: 4_adder_ripper - Behavioral_4_adder_ripper

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity adder4_ripper is
 Port( 
           A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           CIN : in STD_LOGIC :='0';
           COUT : out STD_LOGIC;
           SOUT: out STD_LOGIC_VECTOR (3 downto 0));
end adder4_ripper;

architecture Behavioral_4_adder_ripper of adder4_ripper is
COMPONENT FA
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         ci : IN  std_logic;
         s : OUT  std_logic;
         co : OUT  std_logic
        );
    END COMPONENT;
signal carry :  STD_LOGIC_VECTOR (2 downto 0):=(others=>'0');    
begin
A1: FA port map (a=>A(0),b=>B(0),ci=>CIN,s=>SOUT(0) ,co=>carry(0));
A2: FA port map (a=>A(1),b=>B(1),ci=> carry(0),s=>SOUT(1),co=>carry(1));
A3: FA port map (a=>A(2),b=>B(2),ci=>carry(1) ,s=>SOUT(2),co=>carry(2));
A4: FA port map (a=>A(3),b=>B(3),ci=>carry(2) ,s=>SOUT(3),co=>COUT);


end Behavioral_4_adder_ripper;
