module tt_um_example (
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,

    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,

    input wire ena,
    input wire clk,
    input wire rst_n
);

wire A;
wire B;
wire Cin;

wire Sum;
wire Cout;

assign A   = ui_in[0];
assign B   = ui_in[1];
assign Cin = ui_in[2];

assign Sum  = A ^ B ^ Cin;

assign Cout =
       (A & B)
     | (A & Cin)
     | (B & Cin);

assign uo_out[0] = Sum;
assign uo_out[1] = Cout;

assign uo_out[7:2] = 6'b000000;

assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

endmodule
