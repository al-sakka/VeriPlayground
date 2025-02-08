-- 1-bit latch with enable and level-triggered clock

entity latch is
    port (
        d, clk, en: in bit;
        q, nq: out bit
    );
end entity latch;

architecture behav of latch is
begin
    p1: process(d, clk, en) is
    begin
        if (en = '1') -- enable
        then
            if (clk = '1') -- level triggered
            then
                q  <= (d);
                nq <= (not d);
            end if;
        end if;
    end process p1;
end architecture behav;