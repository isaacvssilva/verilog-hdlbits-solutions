module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    wire [100:0] carry;
    assign carry[0] = cin;

    genvar i;
    generate
        for(i = 0; i <= 99; i++) begin: full_adder_loop
            full_adder fa (
                .a(a[i]), 
                .b(b[i]), 
                .cin(carry[i]), 
                .sum(sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate
    assign cout = carry[100:1];
                       
endmodule


module full_adder( 
    input a, b, cin,
    output cout, sum );
	
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | ((a ^ b) & cin);
endmodule
