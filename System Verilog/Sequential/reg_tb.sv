module reg_tb;

    // Interface instance
    reg_if intf();

    reg_dut dut(intf.dut);

    // Clock generation
    initial
    begin
        intf.clk = 0;
        forever #5 intf.clk = ~intf.clk; 
    end

    // Testbench
    initial
    begin
        intf.rst = 1; #10;
        intf.rst = 0;

        intf.data_in = 4'b1010; #10;
        $display("data_in = %b, data_out = %b", intf.data_in, intf.data_out);

        intf.data_in = 4'b1100; #10;
        $display("data_in = %b, data_out = %b", intf.data_in, intf.data_out);

        $display("Simulation complete");
        $finish;
    end
endmodule