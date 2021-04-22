--Synchronous Sequential Machine (Sequential Loading)
--https://vasanza.blogspot.com

--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity mss_sl is
	
	port(
		resetn,clk,start,BIN: in std_logic;
		
		est: out std_logic_vector(3 downto 0);
		resetgn,encnt,fin: out std_logic);
end mss_sl;

--Architecture
architecture solve of mss_sl is
	-- Signals,Constants,Variables,Components
	type estado is (s0,s1,s2);
	signal y: estado;
	begin
	--Process #1: Next state decoder and state memory
	process(resetn,clk)
	--Sequential programming
		begin
			if resetn = '1' then y<= s0;
			elsif (clk'event and clk = '1') then
				case y is
					when s0 => 
							  if start='1' then y <= s1;
							  else y <= s0; end if;						  
					when s1 => 
							  if start='0' then y <= s2;
							  else y <= s1; end if;	
				   when s2=> 
							  if BIN='1' then y <= s0;
							  else y <= s2; end if;
					
				end case;
			end if;
	end process;
	--Process #2: State Indicator
	process(y)-- mealy ->(y,d,n)
	--Sequential programming
		
		begin
			
			encnt<='0';
			est<="0000";
			case y is
				when s0 => est<="0000";
				when s1 => est<="0001";
				when s2 => if (BIN ='1') then encnt <= '0'; else encnt<='1'; end if; est<="0010";
				
				
				
			end case;
	end process;
	-- Output decoder
		fin<= '1' when (BIN='1') else '0';
		resetgn<= '1' when (start='1') or (resetn='1') else '0';
end solve;