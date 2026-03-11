module mknf_basis (
    input x3,
    input x2,
    input x1,
    output f
);
    wire nx3, nx2;
    wire p1n, p2n, p3n;
    wire p1, p2, p3;

    assign nx3 = ~(x3 | x3);
    assign nx2 = ~(x2 | x2);

    assign p1n = ~(x1 | nx2);
    assign p2n = ~(x1 | nx3);
    assign p3n = ~(nx2 | nx3);

    assign p1 = ~(p1n | p1n);
    assign p2 = ~(p2n | p2n);
    assign p3 = ~(p3n | p3n);

    assign f = p1 & p2 & p3;
endmodule
