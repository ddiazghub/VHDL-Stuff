library ieee;
use ieee.std_logic_1164.all;

entity MUX2_8 is port (
   A0,A1   :   IN std_logic_vector(7 downto 0);
	S     :   IN std_logic;
	X     :   OUT std_logic_vector(7 downto 0)
);
end MUX2_8;

architecture arq of MUX2_8 is 

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

component MUX2_1 port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

begin

u1: MUX2_1 port map(A0(0),A1(0),S,X(0));
u2: MUX2_1 port map(A0(1),A1(1),S,X(1));
u3: MUX2_1 port map(A0(2),A1(2),S,X(2));
u4: MUX2_1 port map(A0(3),A1(3),S,X(3));
u5: MUX2_1 port map(A0(4),A1(4),S,X(4));
u6: MUX2_1 port map(A0(5),A1(5),S,X(5));
u7: MUX2_1 port map(A0(6),A1(6),S,X(6));
u8: MUX2_1 port map(A0(7),A1(7),S,X(7));
end arq;