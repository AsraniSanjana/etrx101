module alu(
    input [3:0] a, 
    input [3:0] b,
    input [2:0] opcod,
    output reg [4:0] result
);

always @(a, b, opcod) begin
    case (opcod)
        3'b001: result = a - b;
        3'b010: result = a + b;
        3'b011: result = a & b;
        3'b100: result = a | b;
        3'b101: result = ~a;
        3'b110: result = a ^ b;
        3'b111: result = a << 1; // shift left by 1 bit means multiply by 2 raise to 1...
        default: result = 4'b0;
    endcase
end

endmodule
