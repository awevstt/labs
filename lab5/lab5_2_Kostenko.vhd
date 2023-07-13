library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab5_2_Kostenko is
    port (
        clk      : in STD_LOGIC;
        shift_en : in STD_LOGIC;
        sLoad    : in STD_LOGIC;
        data_in  : in STD_LOGIC_VECTOR(7 downto 0);
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end entity lab5_2_Kostenko;

architecture Behavioral of lab5_2_Kostenko is
    component t_trigger is
        port (
            clk : in STD_LOGIC;
            t   : in STD_LOGIC;
            q   : buffer STD_LOGIC
        );
    end component t_trigger;

    signal shift_data : STD_LOGIC_VECTOR(7 downto 0);  -- Shift register
    signal shift_stage1, shift_stage2, shift_stage3, shift_stage4, shift_stage5, shift_stage6, shift_stage7, shift_stage8 : STD_LOGIC;
begin
    -- Instantiate t_trigger components
    t1: t_trigger port map(clk, shift_en, shift_stage1);
    t2: t_trigger port map(clk, shift_en, shift_stage2);
    t3: t_trigger port map(clk, shift_en, shift_stage3);
    t4: t_trigger port map(clk, shift_en, shift_stage4);
    t5: t_trigger port map(clk, shift_en, shift_stage5);
    t6: t_trigger port map(clk, shift_en, shift_stage6);
    t7: t_trigger port map(clk, shift_en, shift_stage7);
    t8: t_trigger port map(clk, shift_en, shift_stage8);

    -- Process for shifting data
    process(clk)
    begin
        if rising_edge(clk) then
            if sLoad = '1' then
                -- Load data
                shift_data <= data_in;
            elsif shift_en = '1' then
                -- Shift data to the right
                shift_data(7) <= shift_stage8;
                shift_data(6) <= shift_stage7;
                shift_data(5) <= shift_stage6;
                shift_data(4) <= shift_stage5;
                shift_data(3) <= shift_stage4;
                shift_data(2) <= shift_stage3;
                shift_data(1) <= shift_stage2;
                shift_data(0) <= shift_stage1;
            end if;
        end if;
    end process;

    -- Connect output signal
    data_out <= shift_data;

end architecture Behavioral;
