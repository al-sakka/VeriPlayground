module MUX_4_1
(A, B, C, D, SEL, Y);

    input wire A, B, C, D;
    input wire [1:0] SEL;
    output reg Y;

    always @(*)
    begin
        case(SEL)
            2'b00: Y = A;
            2'b01: Y = B;
            2'b10: Y = C;
            2'b11: Y = D;
            default: Y = 1'bx;  /* Don't Care */
        endcase
    end

endmodule