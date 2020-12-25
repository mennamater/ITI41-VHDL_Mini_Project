----------------------------------------------
-- Synthesis of an increment-by-one circuit.
----------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY increment IS      
  PORT( inc: IN bit :='0';
        z: OUT unsigned (0 TO 1):=(others=>'0'));   
END ENTITY increment;

ARCHITECTURE behav OF increment IS
  signal flag: std_logic :='0'; 
 --signal temp_3bit:unsigned (0 TO 2):= (OTHERS => '0');
   
BEGIN 
  pi: PROCESS (inc) IS 
  variable temp: unsigned (0 TO 1):= (OTHERS => '0');
 
  BEGIN 
    IF inc = '1' THEN 
      temp := temp + 1;
   --   temp_3bit <= temp_3bit+1;
    end if;    
--if(temp_3bit > "011" and inc ='1')then
-- flag <= '1';
     
  --  END IF;
    z <= temp;
  END PROCESS pi;
END ARCHITECTURE behav;