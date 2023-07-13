library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------------------------
entity lab2_1_Kostenko is
    port(
        x : in  std_logic_vector(5 - 1 downto 0);
        y : out std_logic
    );
end entity;
------------------------------------------------------------------------------
architecture rtl of lab2_1_Kostenko is

begin
    -- Y = ((X1 & X2) v !X3) & ((X4 & !X5) v X3)
    y <= ((x(0) and x(1)) or (not x(2))) and ((x(3) and (not x(4))) and x(2));
end rtl;
------------------------------------------------------------------------------
