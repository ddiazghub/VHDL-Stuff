library ieee;
use ieee.std_logic_1164.all;

entity ALU2_1 is port (
   A,B,SUMRES,COMP,F0,F1,F2   :   IN std_logic;
	R     :   OUT std_logic
);
end ALU2_1;

architecture arq of ALU2_1 is 
signal SIG0,SIG1 : std_logic;

component MUX4_1 port (
   A0,A1,A2,A3,S0,S1   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

component MUX2_1 port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

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

component MUX8_1 port (
   A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

begin

u1: AND2_1 port map(A,B,SIG0);
u2: OR2_1 port map(A,B,SIG1);
u3: MUX8_1 port map(SIG0,SIG1,SUMRES,'0','0','0',SUMRES,COMP,F0,F1,F2,R);
end arq;