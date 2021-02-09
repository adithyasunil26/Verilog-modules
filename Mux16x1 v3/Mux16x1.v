`include "./Mux4x1.v"
`include "./Mux2x1.v"

module mux16x1(in,sel,out);
  input [15:0] in;
  input [3:0] sel;
  output out;
  wire [3:0] t;

  mux4x1 M0 (in[3:0],sel[1:0],t[0]);
  mux4x1 M1 (in[7:4],sel[1:0],t[1]);
  mux4x1 M2 (in[11:8],sel[1:0],t[2]);
  mux4x1 M3 (in[15:12],sel[1:0],t[3]);
  mux4x1 M4 (t,sel[3:2],out);
endmodule
