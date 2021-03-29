library ieee;
use ieee.std_logic_1164.all;

entity COMP2_1 is port (
   A,B   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end COMP2_1;

architecture arq of COMP2_1 is 
signal SIG0,SIG1 : std_logic;

component NOT1_1 port (
   A   :   IN std_logic;
	B     :   OUT std_logic
);
end component;

component AND2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component XNOR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

begin

u1: NOT1_1 port map(A,SIG0);
u2: NOT1_1 port map(B,SIG1);
u3: AND2_1 port map(A,SIG1,AMB);
u4: AND2_1 port map(B,SIG0,BMA);
u5: XNOR2_1 port map(A,B,AIB);

end arq;