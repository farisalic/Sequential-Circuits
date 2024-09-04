library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is
    component top is
        port (
            insig : in std_logic;
            avrval : out unsigned(7 downto 0);
            fclk : in std_logic
        );
    end component;

    signal insig : std_logic := '0';
    signal avrval : unsigned(7 downto 0);
    signal fclk : std_logic := '0';

begin
    proces: top port map (insig => insig, avrval => avrval, fclk => fclk);
    -- Generisanje ulaznog signala insig
    process
    begin
        insig <= '0';
        wait for 20 ns;
        insig <= '1';
        wait for 20 ns;
        insig <= '0';
        wait for 20 ns;
        insig <= '1';
        wait for 60 ns;
        insig <= '0';
        wait for 10 ns;
        insig <= '1';
        wait for 30 ns;
        insig <= '0';
        wait for 20 ns;
        wait;
    end process;

    -- Clock proces
   process
   begin
       fclk <= '0'; 
       wait for 0.5 ns;

       loop
           fclk <= '1';
           wait for 0.5 ns;
           fclk <= '0';
           wait for 0.5 ns; 

           if now >= 180 ns then
               exit; 
           end if;
       end loop;

       wait;
   end process;

end architecture arctop_tb;