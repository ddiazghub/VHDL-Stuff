library ieee;
use ieee.std_logic_1164.all;

entity AND5_1 is port (
   A,B,C,D,E   :   IN std_logic;
	F     :   OUT std_logic
);
end AND5_1;

architecture arq of AND5_1 is 
    begin
	 F <= A AND B AND C AND D AND E;
end arq;