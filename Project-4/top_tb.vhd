library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end entity top_tb;

architecture arctop of top_tb is
    component top is
        port (
            ina  : in  std_logic;
            inb : in std_logic;
            cwout : out std_logic;
            ccwout : out std_logic;
            fclk   : in  std_logic
        );
    end component top;

       signal ina : std_logic;
       signal inb : std_logic;
       signal cwout : std_logic;
       signal ccwout : std_logic;
       signal fclk : std_logic;

begin
    portmap : top
        port map (ina => ina, inb => inb, cwout => cwout, ccwout => ccwout, fclk => fclk);

    proces : process
    begin
       
        for i in 1 to 10 loop
            if i = 1 then
                ina <= '0';
                wait for 5 ns;
                ina <= '1';
                wait for 10 ns;

            elsif i = 6 then
                ina <= '0';
                wait for 15 ns;
                ina <= '1';
                wait for 10 ns;

            elsif i = 9 then
                ina <= '0';
                wait for 5 ns;
                ina <= '1';
                wait for 10 ns;

            else 
                ina <= '0';
                wait for 10 ns;
                ina <= '1';
                wait for 10 ns;
            end if;
        end loop;

        ina <= '0';
        wait;

    end process;

    process
    begin
        for k in 1 to 10 loop
            if k = 6 then
                inb <= '0';
                wait for 5 ns;
                inb <= '1';
                wait for 10 ns;

            elsif k = 9 then 
                inb <= '0';
                wait for 15 ns;
                inb <= '1';
                wait for 10 ns;

            else
                inb <= '0';
                wait for 10 ns;
                inb <= '1';
                wait for 10 ns;
            end if;
        end loop;

        inb <= '0';
        wait;
    
    end process;

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
            if now >= 200 ns then
                exit;
            end if;
        end loop;

        wait;
    end process;
end architecture arctop;