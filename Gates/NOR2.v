module NOR2(A, B, Y);

    input A, B;
    output Y;

    assign Y = ~(A | B);

endmodule
