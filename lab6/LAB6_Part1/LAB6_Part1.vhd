library ieee;
use ieee.std_logic_1164.all;

entity CONTROLLER is port (
	IR1, IR0: in bit;
	Q0: in bit;
	MSA1, MSA0: out bit;
	MSB1, MSB0: out bit;
	MSC2, MSC1, MSC0: out bit;
	IRLD: out bit;
	D0: out bit
);
end CONTROLLER;

architecture logic of CONTROLLER is 
begin 
--D0 = /Q0
	D0 <= (NOT Q0);
	
--MSA1 = (IR1*/IR0*Q0) + (IR1*IR0*Q0)
	MSA1 <= (IR1 AND (NOT IR0) AND Q0)
			OR (IR1 AND IR0 AND Q0);
			
--MSA0 = (IR1+/IR0+/Q0)
	MSA0 <= (IR1 OR (NOT IR0) OR (NOT Q0));
	
--MSB1 = (IR1+IR0+/Q0)
	MSB1 <= (IR1 OR IR0 OR (NOT Q0));
	
--MSB0 = (/IR1*/IR0*Q0)
	MSB0 <= ((NOT IR1) AND (NOT IR0) AND Q0);
	
--MSC2 = (IR1*/IR0*Q0) + (IR1*IR0*Q0)
	MSC2 <= (IR1 AND (NOT IR0) AND Q0)
			OR (IR1 AND IR0 AND Q0);
			
--MSC1 = (IR1*IR0*Q0)
	MSC1 <= (IR1 AND IR0 AND Q0);
	
--MSC0 = (IR1*/IR0*Q0) + (IR1*IR0*Q0)
	MSC0 <= (IR1 AND (NOT IR0) AND Q0)
			OR (IR1 AND IR0 AND Q0);
			
--IRLD = /Q0
	IRLD <= (NOT Q0);
	
end logic;