module prio(x, y);

    input [3:0] x;
    output reg [1:0] y;

    always @(*)
    begin
        if (x[3])
        begin
            y = 2'b11;
        end
        
        else if (x[2])
        begin
            y = 2'b10;
        end
        
        else if (x[1])
        begin
            y = 2'b01;
        end
        
        else
        begin
            y = 2'b00;
        end

    end

endmodule