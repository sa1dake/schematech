module test_sum;

wire [5:0] Ain, Bin;
wire Ci;
wire [5:0] Sout1, Sout2;
wire Co1, Co2;

reg [5:0] Ain_r, Bin_r;
reg Ci_r;

my_sum U1 (Ain, Bin, Ci, Sout1, Co1);
ref_sum U2 (Ain, Bin, Ci, Sout2, Co2);

assign Ain = Ain_r;
assign Bin = Bin_r;
assign Ci = Ci_r;

initial
begin
    $display("time Ain Bin Ci Sout1 Co1 Sout2 Co2");
    $monitor("%4d  %d  %d  %b   %d    %b   %d    %b",
              $time, Ain, Bin, Ci, Sout1, Co1, Sout2, Co2);
end

initial
begin
    Ain_r = 6'd0;  Bin_r = 6'd0;  Ci_r = 1'b0;
    #20 Ain_r = 6'd5;   Bin_r = 6'd3;   Ci_r = 1'b0;
    #20 Ain_r = 6'd12;  Bin_r = 6'd7;   Ci_r = 1'b0;
    #20 Ain_r = 6'd25;  Bin_r = 6'd10;  Ci_r = 1'b1;
    #20 Ain_r = 6'd31;  Bin_r = 6'd31;  Ci_r = 1'b0;
    #20 Ain_r = 6'd40;  Bin_r = 6'd15;  Ci_r = 1'b1;
    #20 Ain_r = 6'd63;  Bin_r = 6'd1;   Ci_r = 1'b0;
    #20 $stop;
end

endmodule
