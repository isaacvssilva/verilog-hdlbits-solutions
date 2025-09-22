module top_module (
    input [7:0] in,
    output [7:0] out
);
    always @(*) begin
        for(int i = 0; i <= 7; i++)
            out[i] = in[7-i];
    end
    
endmodule