library ieee;
use ieee.std_logic_1164.all;
use work.lab2_3_Kostenko_pack.all;
------------------------------------------------------------------------------
entity lab2_3_Kostenko is
    port(
        x : in  my_vector(5 - 1 downto 0);
        y : out my_logic
    );
end entity;
------------------------------------------------------------------------------
architecture rtl of lab2_3_Kostenko is

begin
    -- Y = ((X1 & X2) v !X3) & ((X4 & !X5) v X3)
    y <= ((x(0) and x(1)) or (not x(2))) and ((x(3) and (not x(4))) and x(2));
end rtl;
------------------------------------------------------------------------------
