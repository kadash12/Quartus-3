library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.board_ROM_vhdl_init.all;

entity BOARD_VHDL_ROM is port(
	A : in std_logic_vector(14 downto 0);
	D : out std_logic_vector(7 downto 0);
	CLK, OE_L, CE_L : in std_logic
	);
end BOARD_VHDL_ROM;
architecture behavior of BOARD_VHDL_ROM is
	signal OE, CE: std_logic;
	signal D_sig, next_D : std_logic_vector(7 downto 0);
begin
	OE <= not OE_L;
	CE <= not CE_L;
	process(clk)
	begin
		if(rising_edge(clk)) then
			D_sig <= next_D;
		end if;
	end process;
	next_D <= init_vals(to_integer(unsigned(A)));
	process(D_sig, oe, ce)
	begin
		if(OE = '0') then
			D <= (others => 'Z');
		elsif(CE = '0') then
			D <= (others => 'Z');
		else
			D <= D_sig;
		end if;
	end process;	
end behavior;
