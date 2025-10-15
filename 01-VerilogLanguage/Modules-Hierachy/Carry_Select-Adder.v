module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout0;
    wire [15:0] sum_msb, sum_lsb;

    add16 msb_adder(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .cout(cout0),
        .sum(sum[15:0])
    );

    add16 lsb_adder(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .cout(),
        .sum(sum_msb)
    );

    add16 lsb_adder_1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .cout(),
        .sum(sum_lsb)
    );

    assign sum[31:16] = cout0? sum_lsb: sum_msb;

endmodule
