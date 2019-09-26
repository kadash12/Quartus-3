library ieee;
use ieee.std_logic_1164.all;

entity lab5q is port(
	D,P: in std_logic;
	Q2,Q1,Q0: in std_logic;
	T2,D1,D0: out std_logic;
	E,PU,W: out std_logic
);
end lab5q;

architecture logic of lab5q is 
signal EV: std_logic;
begin 
	--T2 = (/D/Q2Q1/Q0) + (D/Q2Q1/Q0)
	T2 <= ((NOT D) AND (NOT Q2) AND Q1 AND (NOT Q0))
	OR (D AND (NOT Q2) AND Q1 AND (NOT Q0));
	
	--D1 = (P/Q2/Q1/Q0) + (/P/Q2/Q1Q0) + (P/Q2/Q1Q0) + (P/Q2Q1Q0) 
	D1 <= (P AND (NOT Q2) AND (NOT Q1) AND (NOT Q0))
	OR ((NOT P) AND (NOT Q2) AND (NOT Q1) AND Q0)
	OR (P AND (NOT Q2) AND (NOT Q1) AND Q0)
	OR (P AND (NOT Q2) AND Q1 AND Q0);
	
	--D0 = (P+Q2+Q1+/Q0) (Q2+/Q1+Q0) (P+Q2+/Q1+/Q0)
	D0 <= (P OR Q2 OR Q1 OR (NOT Q0)) 
	AND ((NOT D) OR Q2 OR (NOT Q1) OR Q0) 
	AND (P OR Q2 OR (NOT Q1) OR (NOT Q0));
	
	--W = (/P/Q2/Q1/Q0) + (/P/Q2/Q1Q0) + (/D/Q2Q1/Q0) + (D/Q2Q1/Q0)
	W <= ((NOT P) AND (NOT Q2) AND (NOT Q1) AND (NOT Q0))
	OR ((NOT P) AND (NOT Q2) AND (NOT Q1) AND Q0)
	OR ((NOT D) AND (NOT Q2) AND Q1 AND (NOT Q0))
	OR (D AND (NOT Q2) AND Q1 AND (NOT Q0));

	--PU = (/P/Q2Q1Q0) + (P/Q2Q1Q0)
	PU <= ((NOT P) AND (NOT Q2) AND Q1 AND Q0)
	OR (P AND (NOT Q2) AND Q1 AND Q0);
	
	--E = (D/Q2Q1/Q0) + (Q2/Q1/Q0)
	E <= (D AND (NOT Q2) AND Q1 AND (NOT Q0))
	OR (Q2 AND (NOT Q1) AND (NOT Q0));
	
	end logic;