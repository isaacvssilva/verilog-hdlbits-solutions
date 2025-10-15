module top_module (
    input a, 
    input b, 
    output out
);
    //mod_a inst2 (a, b, out);
    mod_a inst1 (
        .a(a),
        .b(b),
        .out(out)
    );

endmodule
