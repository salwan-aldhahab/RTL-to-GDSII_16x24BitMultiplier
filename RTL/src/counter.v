`timescale 1ns/1ps

module counter #(
    parameter WIDTH = 8,          // Bit-width of the counter
    parameter MAX_COUNT = 255     // Maximum count value
)(
    input  clk,                   // Clock signal
    input  reset,                 // Synchronous reset (active high)
    input  enable,                 // Enable signal
    output reg [WIDTH-1:0] count   // Counter output
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;            // Reset counter to 0
        else if (enable) begin
            if (count == MAX_COUNT)
                count <= 0;        // Reset counter when reaching MAX_COUNT
            else
                count <= count + 1; // Increment counter
        end
    end

endmodule


