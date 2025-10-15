module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout0;

    add16 msb_adder (
        .a(a[15:0]),
        .b(b[15:0] ^ {16{sub}}),
        .cin(sub),
        .cout(cout0),
        .sum(sum[15:0])
    );

    add16 lsb_adder (
        .a(a[31:16]),
        .b(b[31:16] ^ {16{sub}}),
        .cin(cout0),
        .cout(),
        .sum(sum[31:16])
    );

endmodule
