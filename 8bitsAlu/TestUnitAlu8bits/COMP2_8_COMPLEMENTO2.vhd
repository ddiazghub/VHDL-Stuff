library ieee;
use ieee.std_logic_1164.all;

entity COMP2_8_COMPLEMENTO2 is port (
   A,B   :   IN std_logic_vector(7 downto 0);
	AMB,AIB,BMA     :   OUT std_logic
);
end COMP2_8_COMPLEMENTO2;

architecture arq of COMP2_8_COMPLEMENTO2 is 
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

component MUX2_1 port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
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

component COMP2_3 port (
   A0,A1,A2,B0,B1,B2   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component COMP2_4 port (
   A0,A1,A2,A3,B0,B1,B2,B3   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component MUX4_1 port (
   A0,A1,A2,A3,S0,S1   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

component COMP2_8 port (
   A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

begin

u1: COMP2_8 port map(A(0),A(1),A(2),A(3),A(4),A(5),A(6),'0',B(0),B(1),B(2),B(3),B(4),B(5),B(6),'0',SIG0,SIG1,SIG2);
u2: MUX4_1 port map(SIG0,'0','1',SIG0,A(7),B(7),AMB);
u3: MUX4_1 port map(SIG1,'0','0',SIG1,A(7),B(7),AIB);
u4: MUX4_1 port map(SIG2,'1','0',SIG2,A(7),B(7),BMA);
end arq;