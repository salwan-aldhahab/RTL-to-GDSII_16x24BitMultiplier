`timescale 1ns/1ps

module counter_tb;

    // Parameters
    parameter WIDTH = 8;
    parameter MAX_COUNT = 255;

    // Inputs
    reg clk;
    reg reset;
    reg enable;

    // Outputs
    wire [WIDTH-1:0] count;

    // Instantiate the Unit Under Test (UUT)
    counter #(
        .WIDTH(WIDTH),
        .MAX_COUNT(MAX_COUNT)
    ) uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .count(count)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 1;
        enable = 0;
        #20; // Wait for 20 time units

        // Release reset and enable the counter
        reset = 0;
        enable = 1;
        #200; // Let the counter run for 200 time units

        // Disable the counter
        enable = 0;
        #50; // Wait for 50 time units

        // Re-enable the counter
        enable = 1;
        #100; // Let the counter run for 100 time units

        // Apply reset while counter is running
        reset = 1;
        #10; // Wait for 10 time units
        reset = 0;
        #50; // Let the counter run for 50 time units

        // End simulation
        $stop;
    end

    // Monitor the outputs
    initial begin
        $monitor("Time: %0t | Reset: %b | Enable: %b | Count: %h", $time, reset, enable, count);
    end

endmodule
