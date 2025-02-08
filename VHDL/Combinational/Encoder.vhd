

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    port(
        x: in STD_LOGIC_VECTOR (7 downto 0); -- 8 inputs
        z: out STD_LOGIC_VECTOR (2 downto 0) -- 3 outputs
    );
end encoder;

architecture Behavioral of encoder is
begin
    process(x)
    begin
        case x is
            when "0000_0001" =>
                z <= "000";
            when "0000_0010" =>
                z <= "001";
            when "0000_0100" =>
                z <= "010";
            when "0000_1000" =>
                z <= "011";
            when "0001_0000" =>
                z <= "100";
            when "0010_0000" =>
                z <= "101";
            when "0100_0000" =>
                z <= "110";
            when "1000_0000" =>
                z <= "111";
            when others =>
                z <= "XXX";
        end case;
    end process;

    -- Using with statement
    -- with x select
    -- z <= "000" when "0000_0001",
    --      "001" when "0000_0010",
    --      "010" when "0000_0100",
    --      "011" when "0000_1000",
    --      "100" when "0001_0000",
    --      "101" when "0010_0000",
    --      "110" when "0100_0000",
    --      "111" when "1000_0000",
    --      "XXX" when others;

end Behavioral;