library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    port (
        rgbin  : in  std_logic_vector(23 downto 0);
        rgbout : out std_logic_vector(15 downto 0)
    );
end entity top;

architecture arctop of top is
begin
    process (rgbin)
    variable Red5 : std_logic_vector (4 downto 0);
    variable Green6 : std_logic_vector (5 downto 0);
    variable Blue5 : std_logic_vector (4 downto 0);
    begin
    
        for i in 0 to 4 loop
            Red5(4-i) := rgbin(23-i);
        end loop;
        
        for j in 0 to 5 loop
            Green6(5-j) := rgbin(15-j);
        end loop;
        
        for k in 0 to 4 loop
            Blue5(4-k) := rgbin(7-k);
        end loop;
    
    rgbout <= (Red5 & Green6 & Blue5);
    end process;
end architecture arctop;