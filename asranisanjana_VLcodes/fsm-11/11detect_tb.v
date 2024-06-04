// fsms an be overlapping & non-overlapping (Mealy & Moore)


`timescale 10ns/100ps

module testbench;
    // Inputs
    reg clk_tb;
    reg reset_tb;
    reg inbits_tb;
    // Output
    wire detect;

    // Instantiate the Unit Under Test (UUT)
    pair_detect uut (
        .clk(clk_tb),
        .inbits(inbits_tb),
        .reset(reset_tb),
        .detect(detect)
    );

    // Clock generation
    initial clk_tb = 0;
    always #13 clk_tb = ~clk_tb; // Clock period of 26 time units

    // Reset sequence
    initial begin
        reset_tb = 1'b1;
        #15 reset_tb = 1'b0;
    end

    // Input sequence
    initial begin
        inbits_tb = 0;

        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 1; // Sequence '11' detected here
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 0;
        #20 inbits_tb = 1;
        #20 inbits_tb = 1; // Sequence '11' detected here
        #20 inbits_tb = 0;
        #20 inbits_tb = 0;

        // End of the test
        #40 $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("At time %t, inbits = %b, detect = %b", $time, inbits_tb, detect);
    end
endmodule
