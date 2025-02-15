module test ();

    reg clk, reset;
    
    typedef enum {CFG, ADC_REG, CTRL} reg_e;
    reg_e my_reg;

    initial
    begin
        clk = 1'b0;
        forever #500 clk = ~clk;    // Toggle clock every 500 time units
    end

    initial
    begin
        reset = 1'b0;   #1000ns;
        @(negedge clk); reset = 1'b1;   my_reg = CFG;
        @(negedge clk); my_reg = my_reg.next; // Should be ADC_REG
        @(negedge clk); my_reg = my_reg.next; // Should be CTRL
        @(negedge clk); my_reg = my_reg.next; // Should be CFG
    end

endmodule