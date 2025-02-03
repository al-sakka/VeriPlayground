module INVERTER(A, Y);

    input wire A;
    output reg Y;

    always @(*)
        begin
            Y = ~(A);
        end

endmodule