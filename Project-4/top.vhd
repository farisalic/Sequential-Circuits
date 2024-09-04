library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port (
        ina  : in  std_logic;
        inb : in std_logic;
        cwout : out std_logic;
        ccwout : out std_logic;
        fclk   : in  std_logic
    );
end entity top;

architecture arctop of top is
begin
    process (fclk)
    begin
        if fclk'event and fclk ='0' then
            if ina'event and ina ='0' then 
                if inb='1' then 
                    cwout <= '1';
                    ccwout <= '0';

                elsif inb='0' then 
                    cwout <= '0';
                   ccwout <= '1';
                   
                end if;
            end if;
        end if;
    end process;
end architecture arctop;