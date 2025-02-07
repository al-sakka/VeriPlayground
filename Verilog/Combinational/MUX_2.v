module MUX_2_1
(A, B, SEL, Y);

    input wire A, B, SEL;
    output reg Y;

    always @(*)
    begin
        Y = SEL ? B : A;
    end

endmodule