module top_module (
    input [7:0] in,
    output [31:0] out
);
    // {num{vector}}
    assign out = {{24{in[7]}}, in};
endmodule