library ieee;
use ieee.std_logic_1164.all;

entity lab5_1_Kostenko_tb is
end entity lab5_1_Kostenko_tb;

architecture Behavioral of lab5_1_Kostenko_tb is
    constant DATA_WIDTH: natural := 8;
    
    signal clk      : std_logic := '0';
    signal shift_en : std_logic := '0';
    signal sLoad    : std_logic := '0';
    signal data_in  : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal q        : std_logic_vector(DATA_WIDTH - 1 downto 0);
    
    component lab5_1_Kostenko is
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
    end component lab5_1_Kostenko;

begin

    dut: lab5_1_Kostenko
        generic map (
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk      => clk,
            shift_en => shift_en,
            sLoad    => sLoad,
            data_in  => data_in,
            q        => q
        );
    
    -- Clock process
    process
    begin
        while now < 1000 ns loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
        wait;
    end process;
    
    -- Stimulus process
    process
    begin
        wait for 20 ns; -- Initial delay
        
        -- Test case 1: Shift mode
        shift_en <= '1';
        sLoad    <= '0';
        data_in  <= "01010101";
        wait for 40 ns;
        
        -- Test case 2: Load mode
        shift_en <= '0';
        sLoad    <= '1';
        data_in  <= "11001100";
        wait for 40 ns;
        
        -- Test case 3: Shift mode again
        shift_en <= '1';
        sLoad    <= '0';
        data_in  <= "00110011";
        wait for 40 ns;
        
        -- Add more test cases as needed
        
        wait;
    end process;
    
end architecture Behavioral;
