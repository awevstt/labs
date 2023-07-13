library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab5_3_Kostenko_tb is
end entity lab5_3_Kostenko_tb;

architecture Behavioral of lab5_3_Kostenko_tb is

    -- ��������� ��� ���������� ������
    constant CLK_PERIOD: time := 10 ns;

    -- ������� ������
    signal clk     : std_logic := '0';
    signal shift_en: std_logic := '0';
    signal sLoad   : std_logic := '0';
    signal data_in : std_logic_vector(7 downto 0) := (others => '0');
    signal data_out: std_logic_vector(7 downto 0);

    -- ��������� ��������� �������
    signal stop_clk: boolean := false;

begin

    -- ������� ��������� ������������ ������
    dut: entity work.lab5_3_Kostenko
        port map (
            clk      => clk,
            shift_en => shift_en,
            sLoad    => sLoad,
            data_in  => data_in,
            data_out => data_out
        );

    -- ������� ��������� ��������� �������
    clk_process: process
    begin
        while not stop_clk loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process clk_process;

    -- ������� ������������
    test_process: process
    begin
        -- ������ 1: �������� ������
        sLoad <= '1';
        data_in <= "10101010";
        wait for CLK_PERIOD * 5;
        sLoad <= '0';

        -- ������ 2: ����� ������
        shift_en <= '1';
        wait for CLK_PERIOD * 5;
        shift_en <= '0';

        -- ������ 3: �������� ����� ������
        sLoad <= '1';
        data_in <= "11001100";
        wait for CLK_PERIOD * 5;
        sLoad <= '0';

        -- ������ 4: ����� ������
        shift_en <= '1';
        wait for CLK_PERIOD * 5;
        shift_en <= '0';

        -- ������ 5: �������� �����
        sLoad <= '1';
        data_in <= (others => '0');
        wait for CLK_PERIOD * 5;
        sLoad <= '0';

        -- ���������� ��������� ��������� �������
        stop_clk <= true;
        wait;
    end process test_process;

end architecture Behavioral;
