module top_module (
    input a, b, c, d, e,
    output [24:0] out
);
    wire [24:0] vet1, vet2;
    assign vet1 = { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} };
    assign vet2 = {5{a, b, c, d, e}};
    assign out = ~(vet1 ^ vet2);
endmodule