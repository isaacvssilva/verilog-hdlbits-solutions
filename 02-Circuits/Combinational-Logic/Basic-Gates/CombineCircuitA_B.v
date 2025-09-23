module top_module (
    input x, 
    input y, 
    output z
);

    wire out1, out2, out3, out4;

    mod_A ia1(
        .x(x), 
        .y(y), 
        .z(out1)
    );

    mod_B ib1(
        .x(x), 
        .y(y), 
        .z(out2)
    );

    mod_A ia2(
        .x(x), 
        .y(y), 
        .z(out3)
    );

    mod_B ib2( 
        .x(x), 
        .y(y), 
        .z(out4)
    );
    
    assign z = (out1 | out2) ^ (out3 & out4);

endmodule

module mod_A (
    input x, 
    input y, 
    output z
);
    assign z = (x^y) & x;
endmodule

module mod_B (
    input x, 
    input y, 
    output z 
);
    assign z = ~(x^y);
endmodule