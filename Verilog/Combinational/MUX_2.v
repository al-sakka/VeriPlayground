module MUX_2_1
(A, B, SEL, Y);

    input wire A, B, SEL;
    output reg Y;

    always @(*)
    begin
        case(SEL)
            1'b00: Y = A;
            1'b01: Y = B;
            default: Y = 1'bx;  /* Don't Care */
        endcase
    end

endmodule