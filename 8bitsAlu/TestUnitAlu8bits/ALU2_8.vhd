library ieee;
use ieee.std_logic_1164.all;

entity ALU2_8 is port (
   A,B   :   IN std_logic_vector(7 downto 0);
	F     :   IN std_logic_vector(2 downto 0);
	OVERFLOW,BMA    :   OUT std_logic;
	R     :   OUT std_logic_vector(7 downto 0)
);
end ALU2_8; --Se define la entidad de la ALU, con entradas y salidas

architecture arq of ALU2_8 is 
signal SIG8,SIG9,SIG10,SIG11,SIG12,SIG13,SIG14,
SIG15,SIG16,SIG17,SIG18,SIG19,SIG20,SIG21,SIG22,SIG23,SIG24 : std_logic;
signal  COMPIN,SUMRESIN  : std_logic_vector(7 downto 0); --Se definen las señales que serán utilizadas

component MUX4_1 port ( --Se empiezan a importar los componentes
   A0,A1,A2,A3,S0,S1   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

component MUX2_1 port (
   A0,A1,S   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

component OR3_1 port (
   A,B,C   :   IN std_logic;
	D     :   OUT std_logic
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

component AND5_1 port (
   A,B,C,D,E   :   IN std_logic;
	F     :   OUT std_logic
);
end component;

component XOR2_1 port (
   A,B   :   IN std_logic;
	C     :   OUT std_logic
);
end component;

component XNOR2_1 port (
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

component SUM2_1 port (
   A,B,Ci   :   IN std_logic;
	X,Co     :   OUT std_logic
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

component MUX8_1 port (
   A0,A1,A2,A3,A4,A5,A6,A7,S0,S1,S2   :   IN std_logic;
	X     :   OUT std_logic
);
end component;

component MUX2_8 port (
   A0,A1   :   IN std_logic_vector(7 downto 0);
	S       :   IN std_logic;
	X       :   OUT std_logic_vector(7 downto 0)
);
end component;

component MUX4_8 port (
   A0,A1,A2,A3   :   IN std_logic_vector(7 downto 0);
	S0,S1 :   IN  std_logic;
	X     :   OUT std_logic_vector(7 downto 0)
);
end component;

component COMP2_4 port (
   A0,A1,A2,A3,B0,B1,B2,B3   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component SUMRES2_1 port (
   A,B,Ci,Fun   :   IN std_logic;
	X,Co     :   OUT std_logic
);
end component;

component COD4_1 port (
   A0,A1,A2,A3,E   :   IN std_logic;
	X0,X1     :   OUT std_logic
);
end component;

component ALU2_1 port (
   A,B,SUMRES,COMP,F0,F1,F2   :   IN std_logic;
	R     :   OUT std_logic
);
end component;

component COMP2_8 port (
   A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7   :   IN std_logic;
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component COMP2_8_COMPLEMENTO2 port (
   A,B   :   IN std_logic_vector(7 downto 0);
	AMB,AIB,BMA     :   OUT std_logic
);
end component;

component DETECTOR_OVERFLOW port (
   A,B,X   :   IN std_logic;
	F   :   IN std_logic_vector (2 downto 0);
	OVERFLOW     :   OUT std_logic
);
end component;

component SUMRES2_8 port (
   A0,A1,A2,A3,A4,A5,A6,A7,B0,B1,B2,B3,B4,B5,B6,B7,Ci,Fun   :   IN std_logic;
	X0,X1,X2,X3,X4,X5,X6,X7,Co     :   OUT std_logic
);
end component;

begin

u1: SUMRES2_8 port map(A(0),A(1),A(2),A(3),A(4),A(5),A(6),A(7),B(0),B(1),B(2),B(3),B(4),B(5),B(6),B(7),'0',F(2),SUMRESIN(0),SUMRESIN(1),SUMRESIN(2),SUMRESIN(3),SUMRESIN(4),SUMRESIN(5),SUMRESIN(6),SUMRESIN(7),SIG24); --Este es el sumador restador, se conectan ambas entradas A y B, la salida es el vector SUMRESIN.
u2: COMP2_8_COMPLEMENTO2 port map(A,B,SIG8,SIG9,SIG10); --Este es el comparador de 8 bits complemento a 2.
u3: COD4_1 port map(SIG8,SIG9,SIG10,'0','1',SIG11,SIG12); --Este es un codificador cullas entradas son A>B, A=B y B>A, da un número diferente por salida.
u14: AND5_1 port map(SIG10,F(2),F(1),F(0),'1',BMA); --Esta AND activa el LED B>A si se está en comparacion y se cumple la condición
u4: MUX4_8 port map(A,A,B,B,SIG11,SIG12,COMPIN); --Este multiplexor escoge el mayor entre A y B para colocarlo en la salida R
u5: ALU2_1 port map(A(0),B(0),SUMRESIN(0),COMPIN(0),F(0),F(1),F(2),R(0));
u6: ALU2_1 port map(A(1),B(1),SUMRESIN(1),COMPIN(1),F(0),F(1),F(2),R(1));
u7: ALU2_1 port map(A(2),B(2),SUMRESIN(2),COMPIN(2),F(0),F(1),F(2),R(2));
u8: ALU2_1 port map(A(3),B(3),SUMRESIN(3),COMPIN(3),F(0),F(1),F(2),R(3));
u9: ALU2_1 port map(A(4),B(4),SUMRESIN(4),COMPIN(4),F(0),F(1),F(2),R(4));
u10: ALU2_1 port map(A(5),B(5),SUMRESIN(5),COMPIN(5),F(0),F(1),F(2),R(5));
u11: ALU2_1 port map(A(6),B(6),SUMRESIN(6),COMPIN(6),F(0),F(1),F(2),R(6));
u12: ALU2_1 port map(A(7),B(7),SUMRESIN(7),COMPIN(7),F(0),F(1),F(2),R(7)); --Estas son ALUS de 1 bit conectadas en cascada para hacer una ALU de 8 bits, por dentro tienen un multiplexor de 8 entradas, cuya entrada 0 es AND, entrada 1 es OR, entrada 2 y 6 son para el sumador restador, entradas 3, 4 y 5 siempre son 0 y entrada 6 es para el comparador.
u13: DETECTOR_OVERFLOW port map(A(7),B(7),SUMRESIN(7),F,OVERFLOW); -- Este componente detecta cuando se hace suma o resta y hay overflow, osea que la alu no puede procesar la operación porque el resultado es muy grande.

end arq;