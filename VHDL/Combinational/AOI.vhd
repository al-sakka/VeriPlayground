library ieee;
use ieee.std_logic_1164.all;

entity AOI is
    port(
        A, B, C, D: IN STD_LOGIC;   -- 4 inputs
        F: OUT STD_LOGIC            -- output
    );
end entity AOI;

architecture Dataflow of AOI is
    signal AB, CD, O: STD_LOGIC; -- intermediate signals
begin
    -- Delay of 1-2 ns for each chip
    AB <= (A AND B)  after 2 NS; -- AND operation
    CD <= (C AND D)  after 2 NS; -- AND operation
    O  <= (AB OR CD) after 2 NS; -- OR operation
    F  <= (NOT O)    after 1 NS; -- NOT operation
end architecture Dataflow;