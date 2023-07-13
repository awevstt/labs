library ieee;
use ieee.std_logic_1164.all;
---------------------------------------------------------------------
entity lab5_1_Kostenko is
    generic (
        DATA_WIDTH : natural := 8
    );
    port (
        clk      : in  std_logic;
        shift_en : in  std_logic;
        sLoad    : in  std_logic;
        data_in  : in  std_logic_vector(DATA_WIDTH - 1 downto 0);
        q        : out std_logic_vector(DATA_WIDTH - 1 downto 0)
    );
end entity lab5_1_Kostenko;
---------------------------------------------------------------------
architecture Behavioral of lab5_1_Kostenko is
    signal shift_reg : std_logic_vector(DATA_WIDTH - 1 downto 0);
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if shift_en = '1' then
                shift_reg <= shift_reg(DATA_WIDTH - 2 downto 0) & data_in(0);
            elsif sLoad = '1' then
                shift_reg <= data_in;
            end if;
        end if;
    end process;
    
    q <= shift_reg;
end architecture Behavioral;
---------------------------------------------------------------------