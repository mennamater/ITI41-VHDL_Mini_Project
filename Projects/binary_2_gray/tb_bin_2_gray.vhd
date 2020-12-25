-----
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_bin_2_gray IS
END tb_bin_2_gray;
 
ARCHITECTURE behavior OF tb_bin_2_gray IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bin2gray
    PORT(
         input : IN  bit_vector(3 downto 0);
         output : OUT  bit_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : bit_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal output : bit_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
-- signal k : std_logic_vector (3 downto 0):=(others=>'0'); 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bin2gray PORT MAP (
          input => input,
          output => output
        );
--variable k : std_logic_vector (3 downto 0):=(others=>'0'); 
   -- Clock process definitions
   input_process :process
   begin
        input<= "0000";
		  wait for 20 ns;
		  input<= "0001";
		  wait for 20 ns;
		  input<= "0010";
		  wait for 20 ns;
		  input<= "0011";
		  wait for 20 ns;
		  input<= "0100";
		  wait for 20 ns;
		  input<= "0101";
		  wait for 20 ns;
		  input<= "0110";
		  wait for 20 ns;
		  input<= "0111";
		  wait for 20 ns;
		  input<= "1000";
		  wait for 20 ns;
		  input<= "1001";
		  wait for 20 ns;
		  input<= "1010";
		  wait for 20 ns;
		  input<= "1011";
		  wait for 20 ns;
		  input<= "1100";
		  wait for 20 ns;
        input<= "1101";
		  wait for 20 ns;
        input<= "1110";
		  wait for 20 ns;
        input<= "1111";
		  wait for 20 ns;		  

		  		  

   end process;
 


END;
