-- Shifter module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is
    Port(
        x: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- 4-bit input
        s: IN INTEGER RANGE 0 TO 4;         -- 3-bit shift amount
        z: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- 8-bit output
    );
end shifter;

architecture Behavioral of shifter is
    TYPE matrix is array (4 DOWNTO 0) of STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal row: matrix;
    
begin

    row(0) <= "0000" & x; -- Initialize

    G1 : FOR i IN 1 TO 4 GENERATE
        row(i) <= row(i-1)(6 DOWNTO 0) & '0'; -- Shift left
    END GENERATE;

    z <= row(s); -- Output

end Behavioral;