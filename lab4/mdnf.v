module mdnf_basis (
    input x3,
    input x2,
    input x1,
    output f
);
    wire nx3, nx2;
    wire a1, a2, a3;
    wire t;

    assign nx3 = ~(x3 | x3);
    assign nx2 = ~(x2 | x2);

    assign a1 = nx3 & nx2;
    assign a2 = nx3 & x1;
    assign a3 = nx2 & x1;

    assign t = ~(a1 | a2 | a3);
    assign f = ~(t | t);
endmodule
