library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_trigger is
    port (
        clk : in STD_LOGIC;
        t   : in STD_LOGIC;
        q   : buffer STD_LOGIC
    );
end entity t_trigger;

architecture Behavioral of t_trigger is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if t = '1' then
                q <= not q;
            end if;
        end if;
    end process;
end architecture Behavioral;
