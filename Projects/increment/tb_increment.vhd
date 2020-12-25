
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_increment is
--  Port ( );
end tb_increment;

architecture Behavioral_tb_increment of tb_increment is
component increment    
  PORT( inc: IN bit;
        z: OUT unsigned (0 TO 1));   
END component;
signal inc : bit := '0';
 signal z: unsigned (0 TO 1) := (OTHERS => '0');

begin
increment_1:increment port map (inc=>inc,z=>z);
process
begin
wait for 50 ns;
inc <='0';
wait for 50 ns;
inc <= '1';
wait for 50 ns;

end process;
end Behavioral_tb_increment;
