interface reg_if;

    logic clk, rst;
    logic [3:0] data_in;
    logic [3:0] data_out;

    // Modport for DUT: Reads data_in and writes data_out
    modport dut (input clk, rst, data_in, output data_out);

    // Modport for Testbench: Writes data_in and reads data_out
    modport tb (output clk, rst, data_in, input data_out);

endinterface