module top_module (
    input [3:0] in,
    output reg [1:0] pos  
);

    always @(*) begin
        casez (in)
            4'b???1: pos = 2'd0; // Bit 0 is the first '1'
            4'b??10: pos = 2'd1; // Bit 1 is the first '1'
            4'b?100: pos = 2'd2; // Bit 2 is the first '1'
            4'b1000: pos = 2'd3; // Bit 3 is the first '1'
            default: pos = 2'd0;
        endcase
    end
    
endmodule
