library ieee;
use ieee.std_logic_1164.all;

entity SUM2_1 is port (
   A,B,Ci   :   IN std_logic;
	X,Co     :   OUT std_logic
);
end SUM2_1;

architecture arq of SUM2_1 is 
signal SIG0,SIG1,SIG2,SIG3 : std_logic;

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

begin

u1: XOR2_1 port map(A,B,SIG0);
u2: XOR2_1 port map(SIG0,Ci,X);
u3: AND2_1 port map(A,B,SIG1);
u4: AND2_1 port map(B,Ci,SIG2);
u5: AND2_1 port map(A,Ci,SIG3);
u6: OR3_1 port map(SIG1,SIG2,SIG3,Co);
end arq;