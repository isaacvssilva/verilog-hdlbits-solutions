module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout0;

    add16 msb_adder (
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .cout(cout0),
        .sum(sum[15:0])
    );

    add16 lsb_adder (
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(cout0),
        .cout(),
        .sum(sum[31:16])
    );

endmodule
