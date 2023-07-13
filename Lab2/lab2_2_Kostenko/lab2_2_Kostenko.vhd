library ieee;
use ieee.std_logic_1164.all;
use work.lab2_2_Kostenko_pack.all;
------------------------------------------------------------
entity lab2_2_Kostenko is
    port(
        x1, x2, x3, x4, x5 : in  my_logic;
        y                  : out my_logic
    );
end entity;
------------------------------------------------------------
architecture rtl of lab2_2_Kostenko is

begin
    -- Y = ((X1 & X2) v !X3) & ((X4 & !X5) v X3)
    y <= ((x1 and x2) or (not x3)) and (((x4 and (not x5)) or x3));
end rtl;
------------------------------------------------------------
