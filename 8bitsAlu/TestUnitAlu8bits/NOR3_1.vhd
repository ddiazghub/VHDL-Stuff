library ieee;
use ieee.std_logic_1164.all;

entity NOR3_1 is port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end NOR3_1;

architecture arq of NOR3_1 is 
    begin
	 D <= NOT (A OR B OR C);
end arq;
