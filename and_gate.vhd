library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity and_gate is
  port(
    a_i : in  std_logic;
    b_i : in  std_logic;
    c_o : out std_logic
    );
end entity and_gate;
architecture rtl of and_gate is
begin

  c_o <= a_i and b_i;

end architecture;
