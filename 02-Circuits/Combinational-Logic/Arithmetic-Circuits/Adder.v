module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [3:0] cout;
    
    full_adder sum0(
        .x(x[0]), 
        .y(y[0]), 
        .cin(1'b0),
        .sum(sum[0]),
        .cout(cout[0])
    );
    
    full_adder sum1(
        .x(x[1]), 
        .y(y[1]), 
        .cin(cout[0]),
        .sum(sum[1]),
        .cout(cout[1])
    );
    
    full_adder sum2(
        .x(x[2]), 
        .y(y[2]), 
        .cin(cout[1]),
        .sum(sum[2]),
        .cout(cout[2])
    );
    
    
    full_adder sum3(
        .x(x[3]), 
        .y(y[3]), 
        .cin(cout[2]),
        .sum(sum[3]),
        .cout(cout[3])
    );
    
    assign sum[4] = cout[3];

   
endmodule

module full_adder(
    input x, y, cin,
    output cout, sum);
    
    assign sum = x ^ y ^ cin;
    assign cout = (x & y) | ((x ^ y) & cin);
endmodule
