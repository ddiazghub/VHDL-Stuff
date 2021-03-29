library ieee;
use ieee.std_logic_1164.all;

entity XNOR2_1 is port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end XNOR2_1;

architecture arq of XNOR2_1 is 
    begin
	 C <= A XNOR B;
end arq;