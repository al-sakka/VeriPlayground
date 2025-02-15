module prio_tb;

    // Testbench signals
    reg [3:0] x;
    wire [1:0] y;

    // Instantiate the priority encoder
    prio dut (
        .x(x),
        .y(y)
    );

    // Task to check the output of the priority encoder
    task check_output(input [3:0] test_x, input [1:0] expected_y);
        x = test_x;
        #1;
        if (y !== expected_y)
            $display("Test failed for x=%b, expected y=%b, got y=%b", test_x, expected_y, y);
        else
            $display("Test passed for x=%b, expected y=%b, got y=%b", test_x, expected_y, y);
    endtask

    // Run the testbench
    initial
    begin
        $display("Starting Priority Encoder Test...");

        // Directed test cases
        check_output(4'b0000, 2'b00);  // No input set
        check_output(4'b0001, 2'b00);  // Lowest priority bit set
        check_output(4'b0010, 2'b01);  // Second bit set
        check_output(4'b0100, 2'b10);  // Third bit set
        check_output(4'b1000, 2'b11);  // Highest priority bit set
        check_output(4'b1100, 2'b11);  // Multiple bits set, priority on x[3]

        $display("Priority Encoder Test Completed.");
        $finish;
    end

endmodule