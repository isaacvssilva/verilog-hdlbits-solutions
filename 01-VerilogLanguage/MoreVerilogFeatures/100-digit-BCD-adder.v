module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [100:0] carry;
    assign carry[0] = cin;
    
    genvar i;
    generate 
        for(i = 0; i <=99; i++) begin: bcd_loop
            bcd_fadd bcd_inst (
                .a(a[4*i+3 : 4*i]), 
                .b(b[4*i+3 : 4*i]),
                .cin(carry[i]),
                .cout(carry[i+1]),
                .sum(sum[4*i+3 : 4*i])
            );
        end
    endgenerate
    
    assign cout = carry[100];
endmodule