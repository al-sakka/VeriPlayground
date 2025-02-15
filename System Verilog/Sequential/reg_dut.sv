module reg_dut(reg_if.dut intf); 
    always @(posedge intf.clk or posedge intf.rst)
    begin
        if (intf.rst)
            intf.data_out <= 4'b0000; // Reset
        else
            intf.data_out <= intf.data_in; // Assign data_in to data_out

    end
endmodule