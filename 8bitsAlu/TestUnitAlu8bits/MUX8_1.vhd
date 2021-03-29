library ieee;
use ieee.std_logic_1164.all;

entity MUX8_1 is port (
   A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2   :   IN std_logic;
	X     :   OUT std_logic
);
end MUX8_1;

architecture arq of MUX8_1 is 
signal SIG1,SIG2 : std_logic;

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

begin

u1: MUX4_1 port map(A0,A1,A2,A3,S0,S1,SIG1);
u2: MUX4_1 port map(A4,A5,A6,A7,S0,S1,SIG2);
u3: MUX2_1 port map(SIG1,SIG2,S2,X);
end arq;