----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/21/2020 01:09:22 PM
-- Design Name: 
-- Module Name: FA - Behavioral_FA
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


entity FA is
 Port (a: in std_logic;
 b: in std_logic;
 ci :in std_logic;
 s: out std_logic;
 co : out std_logic
  );
end FA;

architecture Behavioral_FA of FA is

begin
s <= a XOR b XOR ci ;
co<= (a AND b) OR (ci AND a) OR (ci AND b) ;


end Behavioral_FA;



