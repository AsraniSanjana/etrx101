module logic_ops(
    input a, b, c, d,
    output and_out1, and_out2, or_out, not_d
);
    assign and_out1 = a & b;
    assign and_out2 = c & ~d; // AND operation between c and the inverted value of d
    assign or_out = and_out1 | and_out2; // OR operation between and_out1 and and_out2
    assign not_d = ~d;

endmodule