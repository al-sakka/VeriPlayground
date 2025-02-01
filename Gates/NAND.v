module NAND_Gate(A, B, Y);

    input wire A, B;
    output reg Y;

    always @(*)
        begin
            Y = ~(A & B);
        end

endmodule