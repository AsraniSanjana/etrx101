module pair_detect (
    input clk,
    input inbits,
    input reset,
    output reg detect
);

reg [1:0] state;

initial begin
    state = 2'b00;
    detect = 0;
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= 2'b00;
    end else begin
        case (state)
            2'b00: begin
                if (inbits) state <= 2'b01;
                else state <= 2'b00;
            end
            2'b01: begin
                if (inbits) state <= 2'b11;
                else state <= 2'b00;
            end
            2'b11: begin
                if (inbits) state <= 2'b11; // Stay in 2'b11 if another 1 is detected
                else state <= 2'b00; // Reset state if 0 is detected
            end
            default: state <= 2'b00; // Default state to handle unexpected cases
        endcase
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        detect <= 0;
    end else begin
        if (state == 2'b11) begin
            detect <= 1;
        end else begin
            detect <= 0;
        end
    end
end

endmodule
