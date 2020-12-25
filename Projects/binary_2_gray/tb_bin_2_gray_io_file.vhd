--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.all;

ENTITY tb_bin_2_gray_io_file IS
END tb_bin_2_gray_io_file;
 
ARCHITECTURE behavior OF tb_bin_2_gray_io_file IS 
 
    
 
    COMPONENT bin2gray
    PORT(
         input : IN  bit_vector(3 downto 0);
         output : OUT  bit_vector(3 downto 0)
        );
		  
    END COMPONENT;
	signal input_s:  bit_vector (3 downto 0);
	signal output_s:  bit_vector (3 downto 0);
begin 
uut:bin2gray port map(input=>input_s, output=>output_s);
	 
read_from_file:process 
   
file input_bit_gray : text open read_mode is ("D:\vhdl_ITI\binary_2_gray\input_bit_2_gray_insert_errors.txt"); 
file output_bit_gray : text open write_mode is ("D:\vhdl_ITI\binary_2_gray\output_bit_2_gray__insert_errors.txt"); 
variable in_l ,out_l : line;
variable input_sim : bit_vector (3 downto 0);
variable pause:time;
variable output_sim : bit_vector (3 downto 0);
variable message : string (1 TO 45);

begin
input_s <= "0000";
WAIT FOR 20 ns;

while not endfile (input_bit_gray) loop
readline(input_bit_gray,in_l);
read(in_l,input_sim);
read(in_l,pause);
read(in_l,output_sim);
read(in_l,message);
input_s<=input_sim;
--output_s<=output_sim;
wait for pause;
write (out_l,string' ("At time  "));
write(out_l,NOW);
write(out_l,string' (" , input is :  "));
write (out_l,input_s);
write(out_l,string' (",  output is : "));
write (out_l,output_sim);
write(out_l,string' (", the expected output is :  "));
write (out_l,output_s);
if (output_s /= output_sim)then
write(out_l,string' (" ,  ERROR :unexpected output  "));
else 
write(out_l,message);
end if;
WRITELINE (output_bit_gray, out_l);     
 END loop;
 WAIT;           

end process;
end ARCHITECTURE behavior;