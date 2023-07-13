library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------
entity lab2_1_Kostenko_tb is
end entity;
------------------------------------------------------------
architecture rtl of lab2_1_Kostenko_tb is

    component lab2_1_Kostenko is
        port(
            x : in  std_logic_vector(5 - 1 downto 0);
            y : out std_logic
        );
    end component;

    signal x : std_logic_vector(5 - 1 downto 0);
    signal y : std_logic;
begin
    inst_lab1 : lab2_1_Kostenko
        port map(
            x => x,
            y => y
        );

    process
    begin
        x(0) <= '0';
        wait for 50 ps;
        x(0) <= '1';
        wait for 50 ps;
    end process;

    process
    begin
        x(1) <= '0';
        wait for 100 ps;
        x(1) <= '1';
        wait for 100 ps;
    end process;

    process
    begin
        x(2) <= '0';
        wait for 200 ps;
        x(2) <= '1';
        wait for 200 ps;
    end process;

    process
    begin
        x(3) <= '0';
        wait for 400 ps;
        x(3) <= '1';
        wait for 400 ps;
    end process;

    process
    begin
        x(4) <= '0';
        wait for 800 ps;
        x(4) <= '1';
        wait for 800 ps;
    end process;
end rtl;
------------------------------------------------------------
