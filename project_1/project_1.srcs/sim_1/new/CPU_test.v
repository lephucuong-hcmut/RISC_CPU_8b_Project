`timescale 1ns / 1ps

module CPU_test;

    // Testbench signals
    reg clk, rst;
    wire [7:0] result;
    wire is_zero;
    
    // Instantiate the CPU
    RISC_CPU_8b uut (
        .clk(clk),
        .rst(rst),
        .result(result),
        .is_zero(is_zero)
    );
    
    // Clock generation
    always #2 clk = ~clk;
    
    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        
        // Reset the CPU
        #10 rst = 0;
        
        #100000;
        // End simulation
        #100 $finish;
    end
    
endmodule
