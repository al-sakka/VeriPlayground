-- NOR gate for 2 inputs

library ieee;
use ieee.std_logic_1164.all;

entity NOR_Gate is
    port(
        A, B: IN STD_LOGIC;    -- 2 inputs
        Y: OUT STD_LOGIC       -- output
    );
end entity NOR_Gate;

architecture Dataflow of NOR_Gate is
begin
    Y <= A NOR B;     -- NOR operation
    -- Y <= NOT (A OR B);
end architecture Dataflow;