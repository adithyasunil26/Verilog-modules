module alutest;
  reg [15:0] x,y;
  wire [15:0] z;
  wire s,zr,cy,p,v;

  alu16 M(
    .x(x),
    .y(y),
    .z(z),
    .sign(s),
    .zero(zr),
    .carry(cy),
    .parity(p),
    .overflow(v)
  );
  initial
  begin
    $dumpfile("alu16.vcd");
    $dumpvars(0,alutest);
    $monitor($time,"x=%h, y=%h, z=%h, s=%h, zr=%h, cy=%h, p=%h, v=%h",x,y,z,s,zr,cy,p,v);
    #5 x=16'h8fff;y=16'h8000;
    #5 x=16'hFffE;y=16'h8002;
    #5 x=16'hAAAA;y=16'h5555;
    #5 $finish;
  end
endmodule