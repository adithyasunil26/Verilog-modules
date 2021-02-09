module muxtest;
  reg [1:0] A;
  reg S;
  wire F;

  mux2x1 M(
    .in(A),
    .sel(S),
    .out(F)
  );
  initial
  begin
    $dumpfile("mux16x1.vcd");
    $dumpvars(0,muxtest);
    $monitor($time,"A=%h, S=%h, F=%h",A,S,F);
    #5 A=2'b10; S=1'b0;
    #5 S=1'b1;
    #5 S=1'b0;
    #5 S=1'b1;
  end
endmodule