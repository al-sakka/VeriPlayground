module D_FlipFlop
(D, EN, CLK, Q, QN);

    input wire D, CLK;
    output reg Q, QN;

    always @(posedge CLK)
    begin
        if(EN)
        begin
            Q <= D;
            QN <= ~(D);
        end
        
        else
        begin
            Q <= Q;
            QN <= QN;
        end
    end

endmodule