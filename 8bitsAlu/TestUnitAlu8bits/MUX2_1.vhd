library ieee;
use ieee.std_logic_1164.all;

entity MUX2_1 is port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
);
end MUX2_1;

architecture arq of MUX2_1 is 
signal SIG1,SIG2,SIG3 : std_logic;

component OR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component AND2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component NOT1_1 port (
   A   :   IN std_logic;
	B     :   OUT std_logic
);
end component;

begin

u1: NOT1_1 port map(S, SIG1);
u2: AND2_1 port map(A0,SIG1,SIG2);
u3: AND2_1 port map(S,A1,SIG3);
u4: OR2_1 port map(SIG2,SIG3,X);
end arq;