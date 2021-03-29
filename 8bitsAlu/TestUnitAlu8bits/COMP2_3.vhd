library ieee;
use ieee.std_logic_1164.all;

entity COMP2_3 is port (
   A0,A1,A2,B0,B1,B2   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end COMP2_3;

architecture arq of COMP2_3 is 
signal SIG0,SIG1,SIG2,SIG3,SIG4,SIG5,SIG6,SIG7 : std_logic;

component OR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

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

component COMP2_1 port (
   A,B   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component COMP2_2 port (
   A0,A1,B0,B1   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

begin

u1: COMP2_2 port map(A1,A2,B1,B2,SIG0,SIG1,SIG2);
u2: COMP2_1 port map(A0,B0,SIG3,SIG4,SIG5);
u3: AND2_1 port map(SIG1,SIG3,SIG6);
u4: AND2_1 port map(SIG1,SIG5,SIG7);
u5: OR2_1 port map(SIG0,SIG6,AMB);
u6: AND2_1 port map(SIG1,SIG4,AIB);
u7: OR2_1 port map(SIG2,SIG7,BMA);

end arq;