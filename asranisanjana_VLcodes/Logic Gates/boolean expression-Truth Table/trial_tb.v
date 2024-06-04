//this testbench code prints the truthtable for the boolean expn. 


module testbench;

    reg a, b, c, d;
    wire and_out1, and_out2, or_out, not_d;
    
    // Instantiate the logic_ops module
    logic_ops ops(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .and_out1(and_out1),
        .and_out2(and_out2),
        .or_out(or_out),
        .not_d(not_d)
    );

    integer i;
    initial begin
        $display("| A | B | C | D | AND1 | AND2 | OR | NOT D |");
        $display("|---|---|---|---|------|------|----|-------|");
        // Loop to generate combinations
        for (i = 0; i < 16; i = i + 1) begin
            // Generate values for A
            a = (i < 8) ? 0 : 1;
            // Generate values for B
            b = ((i % 8) < 4) ? 0 : 1;
            // Generate values for C
            c = ((i % 4) < 2) ? 0 : 1;
            // Generate values for D
            d = (i & 1) ? 1 : 0;

            #1; // Delay for one time unit
                        
            // Display input values and outputs
            $display("| %b | %b | %b | %b |   %b  |   %b  |  %b |   %b   |", a, b, c, d, and_out1, and_out2, or_out, not_d);
        end
        $finish;
    end

endmodule
