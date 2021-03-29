library ieee;
use ieee.std_logic_1164.all;

entity XOR2_1 is port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end XOR2_1;

architecture arq of XOR2_1 is 
    begin
	 C <= A XOR B;
end arq;