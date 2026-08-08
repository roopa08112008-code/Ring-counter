`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg reset;

wire [3:0] q;

ring_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock generation
initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin

    $display("--------------------------------");
    $display("     4-Bit Ring Counter");
    $display("--------------------------------");
    $display("Time | Reset | Q");
    $display("--------------------------------");

    // Apply reset
    reset = 1'b1;
    #10;

    $display("%4t |   %b   | %b", $time, reset, q);

    // Release reset
    reset = 1'b0;

    // Observe counter sequence
    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    #10;
    $display("%4t |   %b   | %b", $time, reset, q);

    $display("--------------------------------");
    $display("Simulation Completed Successfully.");
    $display("--------------------------------");

    $finish;

end

endmodule