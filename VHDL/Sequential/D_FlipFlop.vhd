-- D Flip Flop

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FlipFlop is
    Port(
        D: IN STD_LOGIC;    -- Data input
        CLK: IN STD_LOGIC;  -- Clock input
        Q: OUT STD_LOGIC;   -- Data output
        QN: OUT STD_LOGIC   -- Inverted data output
    );
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is
begin

    process (CLK)
    begin
        if rising_edge(CLK)     -- Trigger on rising edge
        then
            Q <= D;       -- Data input
            QN <= NOT D;  -- Inverted data input
        end if;
    end process;

    -- Alternative syntax; using guarded blocks
    -- b1 : BLOCK (clk'EVENT AND clk = '1')    -- Rising edge
    -- BEGIN
    --     Q <= GUARDED (D);       -- Data input
    --     QN <= GUARDED (NOT D);  -- Inverted data input
    -- END BLOCK b1;
end Behavioral;