-- NOT Gate for 1 input

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY NOT_Gate IS
    PORT(
        A : IN STD_LOGIC;    -- 1 input
        Y : OUT STD_LOGIC    -- output
    );
END ENTITY NOT_Gate;

ARCHITECTURE Dataflow OF NOT_Gate IS
BEGIN
    Y <= NOT A;   -- NOT operation
END ARCHITECTURE Dataflow;