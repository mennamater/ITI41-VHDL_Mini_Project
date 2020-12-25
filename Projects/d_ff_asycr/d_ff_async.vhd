------------------------------------------------------------------------
-- A positive edge-triggered flip-flop with asynchronous set and clear.
------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_ff_async IS 
  PORT( clk, set, clear: IN std_logic;
        d_in : IN std_logic;
        d_out: OUT std_logic);
END ENTITY d_ff_async;

ARCHITECTURE async OF d_ff_async IS BEGIN
--set is high piority then clear then dout <= din at rising edge of clock
  asr: PROCESS (set, clear, clk) IS BEGIN
    IF set = '1' THEN
      d_out <= '1';
    ELSIF clear = '1' THEN
      d_out <= '0';
    ELSIF rising_edge (clk) THEN 
      d_out <= d_in;
    END IF;
  END PROCESS asr;
END ARCHITECTURE async;