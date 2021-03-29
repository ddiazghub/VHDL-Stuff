library ieee;
use ieee.std_logic_1164.all;

entity OR2_1 is port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end OR2_1;

architecture arq of OR2_1 is 
    begin
	 C <= A OR B;
end arq;
