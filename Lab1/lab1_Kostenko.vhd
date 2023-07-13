library ieee;
use ieee.std_logic_1164.all;
------------------------------------------------------------
entity lab1_Kostenko is
    port(
        x1, x2, x3, x4, x5  : in    std_logic;
        y                   : out   std_logic
    );
end entity;
------------------------------------------------------------
architecture rtl of lab1_Kostenko is

begin
    -- Y = ((X1 & X2) v !X3) & ((X4 & !X5) v X3)
    y <= ((x1 and x2) or (not x3)) and ((x4 and (not x5)) or x3);
end rtl;
------------------------------------------------------------
