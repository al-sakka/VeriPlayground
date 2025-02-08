-- XNOR gate for 2 inputs

library ieee;
use ieee.std_logic_1164.all;

entity XNOR_Gate is
    port(
        A, B: IN STD_LOGIC;    -- 2 inputs
        Y: OUT STD_LOGIC       -- output
    );
end entity XNOR_Gate;

architecture Dataflow of XNOR_Gate is
begin
    Y <= A XNOR B;     -- XNOR operation
    -- Y <= NOT (A XOR B);
end architecture Dataflow;