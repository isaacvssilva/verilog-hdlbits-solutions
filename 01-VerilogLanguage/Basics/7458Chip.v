module top_module (
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
    wire andGate1, andGate2, andGate3, andGate4;
    assign andGate1 = p2a & p2b;
    assign andGate2 = p2c & p2d;
    assign p2y = andGate1 | andGate2;

    assign andGate3 = p1a & p1c & p1b;
    assign andGate4 = p1f & p1e & p1d;
    assign p1y = andGate3 | andGate4;
endmodule