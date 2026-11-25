library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity and_gate_tb is
end entity and_gate_tb;

architecture sim of and_gate_tb is
  component and_gate is
    port(
      a_i : in  std_logic;
      b_i : in  std_logic;
      c_o : out std_logic
      );
  end component and_gate;

  --
  signal a_s : std_logic;
  signal b_s : std_logic;
  signal c_s : std_logic;
begin

  uut: and_gate
    port map(
      a_i => a_s,
      b_i => b_s,
      c_o => c_s
      );

  process
  begin
    a_s <= '0';
    b_s <= '0';
    wait for 20ns;
    a_s <= '0';
    b_s <= '1';
    wait for 20ns;
    a_s <= '1';
    b_s <= '0';
    wait for 20ns;
    a_s <= '1';
    b_s <= '1';
    wait for 20ns;
  end process;

end architecture;
