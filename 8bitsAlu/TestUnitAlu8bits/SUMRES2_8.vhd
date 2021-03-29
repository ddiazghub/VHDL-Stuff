library ieee;
use ieee.std_logic_1164.all;

entity SUMRES2_8 is port (
   A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7,Ci,Fun   :   IN std_logic;
	X0,X1,X2,X3,X4,X5,X6,X7,Co     :   OUT std_logic
);
end SUMRES2_8;

architecture arq of SUMRES2_8 is 
signal SIG0,SIG1,SIG2,SIG3,SIG4,SIG5,SIG6,SIG7 : std_logic;

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

component SUMRES2_1 port (
   A,B,Ci,Fun   :   IN std_logic;
	X,Co     :   OUT std_logic
);
end component;

begin

u1: OR2_1 port map(Fun,Ci,SIG0);
u2: SUMRES2_1 port map(A0,B0,SIG0,Fun,X0,SIG1);
u3: SUMRES2_1 port map(A1,B1,SIG1,Fun,X1,SIG2);
u4: SUMRES2_1 port map(A2,B2,SIG2,Fun,X2,SIG3);
u5: SUMRES2_1 port map(A3,B3,SIG3,Fun,X3,SIG4);
u6: SUMRES2_1 port map(A4,B4,SIG4,Fun,X4,SIG5);
u7: SUMRES2_1 port map(A5,B5,SIG5,Fun,X5,SIG6);
u8: SUMRES2_1 port map(A6,B6,SIG6,Fun,X6,SIG7);
u9: SUMRES2_1 port map(A7,B7,SIG7,Fun,X7,Co);

end arq;