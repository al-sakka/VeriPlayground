-- OR gate for 2 inputs

library ieee;
use ieee.std_logic_1164.all;

entity OR_Gate is
    port(
        A, B: IN STD_LOGIC;    -- 2 inputs
        Y: OUT STD_LOGIC       -- output
    );
end entity OR_Gate;

architecture Dataflow of OR_Gate is
begin
        Y <= A OR B;   -- OR operation
end architecture Dataflow;