library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_tb is
end entity top_tb;

architecture arctop of top_tb is
    component top is
        port (
            rgbin  : in  std_logic_vector(23 downto 0);
            rgbout : out std_logic_vector(15 downto 0)
        );
    end component top;

    signal rgbin  : std_logic_vector(23 downto 0);
    signal rgbout : std_logic_vector(15 downto 0);

begin
    portmap : top
        port map (rgbin => rgbin, rgbout => rgbout); 

    proces : process
    begin
        rgbin <= x"202306";
        wait for 1 ns;
       
        rgbin <= x"ADBEEF";
        wait for 1 ns;
       
        rgbin <= x"123456";
        wait for 1 ns;
       
        wait;
    end process;

end architecture arctop;