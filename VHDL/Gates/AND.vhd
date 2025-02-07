-- AND gate for 2 inputs

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND_Gate IS
    PORT(
        A, B : IN STD_LOGIC;    -- 2 inputs
        Y : OUT STD_LOGIC       -- output
    );
END ENTITY AND_Gate;

ARCHITECTURE Dataflow OF AND_Gate IS
BEGIN
    Y <= A AND B;   -- AND operation
END ARCHITECTURE Dataflow;