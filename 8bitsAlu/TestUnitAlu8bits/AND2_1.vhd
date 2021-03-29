library ieee;
use ieee.std_logic_1164.all;

entity AND2_1 is port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end AND2_1;

architecture arq of AND2_1 is 
    begin
	 C <= A AND B;
end arq;