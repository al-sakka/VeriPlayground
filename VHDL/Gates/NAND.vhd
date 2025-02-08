-- NAND gate for 2 inputs

library ieee;
use ieee.std_logic_1164.all;

entity NAND_Gate is
    port(
        A, B: IN STD_LOGIC;    -- 2 inputs
        Y: OUT STD_LOGIC       -- output
    );
end entity NAND_Gate;

architecture Dataflow of NAND_Gate is
begin
    Y <= A NAND B;     -- NAND operation
    -- Y <= NOT (A AND B);
end architecture Dataflow;