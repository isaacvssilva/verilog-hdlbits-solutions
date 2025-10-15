module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire[7:0] q0, q1, q2;
    
    my_dff8 dff_s1(
        .clk(clk), .d(d), .q(q0));
    
    my_dff8 dff_s2(
        .clk(clk), .d(q0), .q(q1));
   
    my_dff8 dff_s3(
        .clk(clk), .d(q1), .q(q2));
    
    always @(*) begin
        case (sel)
            2'b00: begin
               q = d;
            end
            2'b01: begin 
                q = q0;   
            end
            2'b10: begin
                q = q1;  
            end
             2'b11: begin
                q = q2;  
            end
     	endcase
        end
endmodule
