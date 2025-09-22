'`default_nettype none
module top_module (
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
);
    wire andGate1, andGate2;
    assign andGate1 = a & b;
    assign andGate2 = c & d;
    assign out = andGate1 | andGate2;
    assign out_n = ~(andGate1 | andGate2);
    
endmodule