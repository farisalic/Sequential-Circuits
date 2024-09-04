library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end entity top_tb;

architecture arctop of top_tb is
    signal adcval, thresh : unsigned(7 downto 0);
    signal result, qi, qc : std_logic;
    signal fclk : std_logic;
begin
    proces : entity work.top
        port map (adcval => adcval, thresh => thresh, result => result, qi => qi, qc => qc, fclk => fclk);

    -- FCLK process
    process
    begin
        fclk <= '0';
        wait for 0.5 ns;

        loop
            fclk <= '1';
            wait for 0.5 ns;
            fclk <= '0';
            wait for 0.5 ns;
            if now >= 3 ns then
                exit;
            end if;
        end loop;

        wait;
    end process;

    process
    begin
        -- Pocetni trenutak
        adcval <= x"00";
        thresh <= x"00";
        qi <= '0';
        wait for 0.5 ns;

        adcval <= x"A5";
        thresh <= x"21";
        qi <= '1';
        wait for 0.5 ns;
        qi <= '0';
        wait for 0.5 ns;

        adcval <= x"7F";
        thresh <= x"7F";
        qi <= '1';
        wait for 0.5 ns;
        qi <= '0';
        wait for 0.5 ns;

        adcval <= x"3A";
        thresh <= x"5A";
        qi <= '1';
        wait for 0.5 ns;
        qi <= '0';
        wait for 0.5 ns;

        wait;
    end process;

end architecture arctop;