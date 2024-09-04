library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port (
        adcval : in unsigned(7 downto 0);
        thresh : in unsigned(7 downto 0);
        result : out std_logic;
        qi : in std_logic;
        qc : out std_logic;
        fclk : in std_logic
    );
end entity top;

architecture arctop of top is
    begin
        process (fclk)
        begin
            if rising_edge(fclk) then
                if qi = '1' then
                    if adcval >= thresh then
                        result <= '1';
                    else
                        result <= '0';
                    end if;
                end if;
            end if;
            qc <= not qi;
        end process;
    end architecture arctop;