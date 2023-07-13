library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab5_3_Kostenko is
    port(
        clk      : in  STD_LOGIC;
        shift_en : in  STD_LOGIC;
        sLoad    : in  STD_LOGIC;
        data_in  : in  STD_LOGIC_VECTOR(7 downto 0);
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity lab5_3_Kostenko;

architecture Behavioral of lab5_3_Kostenko is

    component t_trigger
        port(
            clk : in  STD_LOGIC;
            t   : in  STD_LOGIC;
            q   : buffer STD_LOGIC
        );
    end component t_trigger;

    signal reg_data      : STD_LOGIC_VECTOR(7 downto 0);
    signal reg_data_temp : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

begin

    -- Instantiate t_triggers for each bit of the register
    t_trigger_inst : for i in 0 to 7 generate
        t_trigger_inst_i : t_trigger
            port map(
                clk => clk,
                t   => reg_data_temp(i),
                q   => reg_data(i)
            );
    end generate t_trigger_inst;

    process(clk)
    begin
        if rising_edge(clk) then
            if sLoad = '1' then
                reg_data_temp <= data_in;
            elsif shift_en = '1' then
                reg_data_temp(7 downto 1) <= reg_data_temp(6 downto 0);
                reg_data_temp(0)          <= '0';
            end if;
        end if;
    end process;

    data_out <= reg_data;

end architecture Behavioral;
