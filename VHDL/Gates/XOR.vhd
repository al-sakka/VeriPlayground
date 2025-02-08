-- XOR gate for 2 inputs

library ieee;
use ieee.std_logic_1164.all;

entity XOR_Gate is
    port(
        A, B: IN STD_LOGIC;    -- 2 inputs
        Y: OUT STD_LOGIC       -- output
    );
end entity XOR_Gate;

architecture Dataflow of XOR_Gate is
begin
    Y <= A XOR B;   -- XOR operation
end architecture Dataflow;