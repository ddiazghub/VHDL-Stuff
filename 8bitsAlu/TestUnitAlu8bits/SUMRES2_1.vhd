library ieee;
use ieee.std_logic_1164.all;

entity SUMRES2_1 is port (
   A,B,Ci,Fun   :   IN std_logic;
	X,Co     :   OUT std_logic
);
end SUMRES2_1;

architecture arq of SUMRES2_1 is 
signal SIG0,SIG1 : std_logic;

component OR3_1 port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end component;

component AND2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component XOR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component NOT1_1 port (
   A   :   IN std_logic;
	B     :   OUT std_logic
);
end component;

component OR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component SUM2_1 port (
   A,B,Ci   :   IN std_logic;
	X,Co     :   OUT std_logic
);
end component;

component MUX2_1 port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

begin

u1: NOT1_1 port map(B,SIG0);
u2: MUX2_1 port map(B,SIG0,Fun,SIG1);
u3: SUM2_1 port map(A,SIG1,Ci,X,Co);

end arq;