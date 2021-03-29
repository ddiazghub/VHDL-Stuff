library ieee;
use ieee.std_logic_1164.all;

entity TestUnitAlu8bits is port(
	clk,rst	:	in std_logic;
	OVERFLOW, BMA	:	out std_logic;
	R	:	out std_logic_vector(7 downto 0)
);
end entity;

architecture rtl of TestUnitAlu8bits is
type State_type is (A, B, C, D, E, F);  -- Define the states
	signal State : State_Type;    -- Create a signal that uses 
							      -- the different states

-- list components
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
-- Aqui va su componente Alu8bits
component ALU2_8 is port(
	A,B   :   IN std_logic_vector(7 downto 0);
	F     :   IN std_logic_vector(2 downto 0);
	OVERFLOW,BMA    :   OUT std_logic;
	R     :   OUT std_logic_vector(7 downto 0)
);

end component;
-- Signals
	signal 	A_test,B_test,R_test :	std_logic_vector(7 downto 0);
	signal 	F_test: std_logic_vector(2 downto 0);
	signal 	OV_test,Ma_test: std_logic;
begin
	process(clk,rst)
	begin
		if (rst ='1') then
		state <= A;
		elsif rising_edge(clk) then	
			--Asignen en cada estado pruebas difentes
			case state is
				when A =>
					--Ejemplo (No olviden llenar los demas estados de prueba)
					State <= B;
					
					A_test <=x"10" ;
					B_test <=x"E9" ;
					F_test <="111" ; -- Para nuestra ALU, 000 es AND, 001 es OR, 010 es suma, 110 es resta y 111 es comparación
					
				when B =>
					State <= C;
					
					A_test <=x"80" ;
					B_test <=x"2A" ;
					F_test <="111" ;
					
				when C =>
					State <= D;
					
					A_test <=x"46" ;
					B_test <=x"a0" ;
					F_test <="111" ;
					
				when D =>
					State <= E;
					
					A_test <=x"65" ;
					B_test <=x"9A" ;
					F_test <="111" ;
					
				when E =>
					State <= F;
					
					A_test <=x"32" ;
					B_test <=x"a9" ;
					F_test <="111" ;
					
				when F =>
					State <= A;
					
					A_test <=x"b2" ;
					B_test <=x"39" ;
					F_test <="111" ;
					
				when others =>
					State <= A;
			end case;
		end if;
	end process;


-- Aqui va su unidad
U: ALU2_8 port map(A_test,B_test,F_test,OVERFLOW,BMA,R);

end rtl;
