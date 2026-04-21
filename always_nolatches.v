// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
always@(*)begin
    if(scancode==16'he06b)begin
        left=1'b1;
    down=1'd0;
    right=1'd0;
    up=1'd0;
        end
    else if(scancode==16'he072)begin
        left=1'b0;   
    down=1'd1;  
    right=1'd0;   
    up=1'd0;
        end
    else if(scancode==16'he074)begin
        left=1'b0;  
    down=1'd0;  
    right=1'd1;   
    up=1'd0;
        end
    else if(scancode==16'he075)begin
        left=1'b0;
    down=1'd0;
    right=1'd0;
    up=1'd1;
        end
    else begin
        left=1'b0;   
        down=1'd0;  
        right=1'd0;   
        up=1'd0;
        end
        
    end
endmodule
