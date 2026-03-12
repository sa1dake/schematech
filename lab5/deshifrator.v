module decoder_3to8_en (
    input  wire C,
    input  wire B,
    input  wire A,
    input  wire EN,
    output wire F0,
    output wire F1,
    output wire F2,
    output wire F3,
    output wire F4,
    output wire F5,
    output wire F6,
    output wire F7
);

assign F0 = (EN == 1'b1) ? 1'bz : ((~C & ~B & ~A) ? 1'b1 : 1'b0);
assign F1 = (EN == 1'b1) ? 1'bz : ((~C & ~B &  A) ? 1'b1 : 1'b0);
assign F2 = (EN == 1'b1) ? 1'bz : ((~C &  B & ~A) ? 1'b1 : 1'b0);
assign F3 = (EN == 1'b1) ? 1'bz : ((~C &  B &  A) ? 1'b1 : 1'b0);
assign F4 = (EN == 1'b1) ? 1'bz : (( C & ~B & ~A) ? 1'b1 : 1'b0);
assign F5 = (EN == 1'b1) ? 1'bz : (( C & ~B &  A) ? 1'b1 : 1'b0);
assign F6 = (EN == 1'b1) ? 1'bz : (( C &  B & ~A) ? 1'b1 : 1'b0);
assign F7 = (EN == 1'b1) ? 1'bz : (( C &  B &  A) ? 1'b1 : 1'b0);

endmodule
