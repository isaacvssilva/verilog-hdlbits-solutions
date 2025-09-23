module top_module( 
    input [2:0] in,
    output [1:0] out );
    
    always @(*) begin
        out = 1'b0;
        for(int i = 0; i <=2; i++)
            out = out + in[i];
    end

endmodule
