library ieee;
use ieee.std_logic_1164.all;

entity NOT1_1 is port (
   A   :   IN std_logic;
	B   :   OUT std_logic
);
end NOT1_1;

architecture arq of NOT1_1 is 
    begin
	 B <= NOT A;
end arq;