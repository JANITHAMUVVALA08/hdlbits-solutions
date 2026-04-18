module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1;
    wire [15:0]s0,s1;
    reg [15:0]sum_temp;
    add16 a1(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(c1));
    add16 a2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(s0),.cout());
    add16 a3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(s1),.cout());
             always@(*)begin
                 case(c1)
                     1'b0:sum_temp=s0;
                     1'b1:sum_temp=s1;
                     default:sum_temp=16'bx;
                 endcase
             end
    assign sum[31:16]=sum_temp;
    

endmodule
