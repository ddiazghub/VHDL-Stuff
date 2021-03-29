library ieee;
use ieee.std_logic_1164.all;

entity COD4_1 is port (
   A0,A1,A2,A3,E   :   IN std_logic;
	X0,X1     :   OUT std_logic
);
end COD4_1;

architecture arq of COD4_1 is 
signal SIG0,SIG1,SIG2 : std_logic;

component AND3_1 port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end component;

component NOT1_1 port (
   A     :   IN std_logic;
	B     :   OUT std_logic
);
end component;

begin

u1: NOT1_1 port map(A0,SIG0);
u2: NOT1_1 port map(A1,SIG1);
u3: NOT1_1 port map(A2,SIG2);
u4: AND3_1 port map(SIG0,SIG1,E,X1);
u5: AND3_1 port map(SIG0,SIG2,E,X0);


end arq;