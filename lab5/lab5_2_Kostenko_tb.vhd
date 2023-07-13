library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab5_2_Kostenko_tb is
end entity lab5_2_Kostenko_tb;

architecture Behavioral of lab5_2_Kostenko_tb is
    -- Constants
    constant c_CLK_PERIOD : time := 10 ns;

    -- Component declaration
    component lab5_2_Kostenko is
        port (
            clk      : in STD_LOGIC;
            shift_en : in STD_LOGIC;
            sLoad    : in STD_LOGIC;
            data_in  : in STD_LOGIC_VECTOR(7 downto 0);
            data_out : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component lab5_2_Kostenko;

    -- Signals
    signal clk       : STD_LOGIC := '0';
    signal shift_en  : STD_LOGIC := '0';
    signal sLoad     : STD_LOGIC := '0';
    signal data_in   : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_out  : STD_LOGIC_VECTOR(7 downto 0);
    
begin
    -- Instantiate the DUT
    dut : lab5_2_Kostenko
        port map (
            clk      => clk,
            shift_en => shift_en,
            sLoad    => sLoad,
            data_in  => data_in,
            data_out => data_out
        );

    -- Clock process
    clk_process: process
    begin
        while now < 1000 ns loop  -- Run for 1000 ns
            clk <= '0';
            wait for c_CLK_PERIOD/2;
            clk <= '1';
            wait for c_CLK_PERIOD/2;
        end loop;
        wait;
    end process clk_process;

    -- Stimulus process
    stimulus_process: process
    begin
        -- Load data 1
        sLoad <= '1';
        data_in <= "10101010";  -- Example data
        
        wait for 20 ns;
        
        -- Enable shifting
        shift_en <= '1';
        
        wait for 100 ns;
        
        -- Disable shifting
        shift_en <= '0';
        
        wait for 20 ns;
        
        -- Load data 2
        sLoad <= '1';
        data_in <= "11001100";  -- Example data
        
        wait for 20 ns;
        
        -- Enable shifting
        shift_en <= '1';
        
        wait for 50 ns;
        
        -- Disable shifting
        shift_en <= '0';
        
        wait for 20 ns;
        
        -- Load data 3
        sLoad <= '1';
        data_in <= "11110000";  -- Example data
        
        wait for 20 ns;
        
        -- Enable shifting
        shift_en <= '1';
        
        wait for 70 ns;
        
        -- Disable shifting
        shift_en <= '0';
        
        wait;
    end process stimulus_process;

end architecture Behavioral;
