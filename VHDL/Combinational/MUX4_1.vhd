-- MUX 4 to 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
    Port ( I0, I1, I2, I3 : in  STD_LOGIC;        -- 4 inputs
           S : in  STD_LOGIC_VECTOR (1 downto 0); -- 2 select lines
           O : out  STD_LOGIC                     -- 1 output
        );
end mux4_1;

architecture Behavioral of mux4_1 is
begin
    process(S, I0, I1, I2, I3)
    begin
        case S is
            when "00" =>
                O <= I0;
            when "01" =>
                O <= I1;
            when "10" =>
                O <= I2;
            when "11" =>
                O <= I3;
            when others =>
                O <= 'X';
        end case;
    end process;
end Behavioral;