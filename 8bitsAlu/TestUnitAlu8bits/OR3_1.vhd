library ieee;
use ieee.std_logic_1164.all;

entity OR3_1 is port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end OR3_1;

architecture arq of OR3_1 is 
    begin
	 D <= A OR B OR C;
end arq;
