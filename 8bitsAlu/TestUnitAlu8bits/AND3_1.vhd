library ieee;
use ieee.std_logic_1164.all;

entity AND3_1 is port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end AND3_1;

architecture arq of AND3_1 is 
    begin
	 D <= A AND B AND C;
end arq;