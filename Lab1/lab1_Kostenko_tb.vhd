library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------
entity lab1_Kostenko_tb is

end entity;
------------------------------------------------------------
architecture rtl of lab1_Kostenko_tb is

   component lab1_Kostenko is
        port(
            x1, x2, x3, x4, x5  : in    std_logic;
            y                   : out   std_logic
        );
    end component;


    signal x1, x2, x3, x4, x5, y : std_logic;
begin
    inst_lab1: lab1_Kostenko port map(
                                x1=>x1,
                                x2=>x2,
                                x3=>x3,
                                x4=>x4,
                                x5=>x5,
                                y => y 
                            );
                            
    process
    begin 
        x1 <= '0';
        wait for 50 ps;
        x1 <= '1';
        wait for 50 ps;
    end process;
    
    process
    begin 
        x2 <= '0';
        wait for 100 ps;
        x2 <= '1';
        wait for 100 ps;
    end process;

    process
    begin 
        x3 <= '0';
        wait for 200 ps;
        x3 <= '1';
        wait for 200 ps;
    end process;

    process
    begin 
        x4 <= '0';
        wait for 400 ps;
        x4 <= '1';
        wait for 400 ps;
    end process;

    process
    begin 
        x5 <= '0';
        wait for 800 ps;
        x5 <= '1';
        wait for 800 ps;
    end process;
end rtl;
------------------------------------------------------------
