library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity top is
    port (
        insig: in std_logic;
        avrval: out unsigned(7 downto 0) := (others => '0');
        fclk: in std_logic
    );
end top;


architecture arctop of top is
signal highcnt: integer:= 0;
signal cnt: integer := 1;
begin
    
    proces:process(fclk)
   
    variable srednja_vr: integer range 0 to 100 := 0;
   
    begin
        if falling_edge(fclk) then

            cnt <= cnt + 1;
            if insig = '1' then
                highcnt <= highcnt + 1;      
            end if;

            if insig'event and insig = '0' then
                srednja_vr := (100 * highcnt) / (cnt);
                highcnt <= 0;
                cnt <= 1;
            end if;      
            avrval <=  to_unsigned(srednja_vr,8);        
        end if;
    end process;
end arctop;