library ieee;
use ieee.std_logic_1164.all;

entity DETECTOR_OVERFLOW is port (
   A,B,X   :   IN std_logic;
	F   :   IN std_logic_vector (2 downto 0);
	OVERFLOW     :   OUT std_logic
);
end DETECTOR_OVERFLOW;

architecture arq of DETECTOR_OVERFLOW is 
signal SIG0,SIG1,SIG2,SIG3,SIG4,SIG5,SIG6,SIG7,SIG8,SIG9 : std_logic;

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

component AND3_1 port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end component;

component NOR3_1 port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
);
end component;

component NOT1_1 port (
   A   :   IN std_logic;
	B     :   OUT std_logic
);
end component;

component MUX4_1 port (
   A0,A1,A2,A3,S0,S1   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

begin

u1: NOT1_1 port map(A,SIG0);
u2: NOT1_1 port map(X,SIG1);
u3: NOT1_1 port map(F(1),SIG2);
u4: AND3_1 port map(A,B,SIG1,SIG3);
u5: NOR3_1 port map(A,B,SIG1,SIG4);
u6: AND3_1 port map(SIG0,B,X,SIG5);
u7: NOR3_1 port map(SIG0,B,X,SIG6);
u8: OR2_1 port map(SIG3,SIG4,SIG7);
u9: OR2_1 port map(SIG5,SIG6,SIG8);
u10: OR2_1 port map(SIG2,F(0),SIG9);
u11: MUX4_1 port map(SIG7,SIG8,'0','0',F(2),SIG9,OVERFLOW);

end arq;