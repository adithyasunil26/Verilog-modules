module mux2x1(in,sel,out);
  input [1:0] in;
  input sel;
  output out;
  wire t1,t2,t3;

  not g1 (t1,sel);
  and g2 (t2,in[0],t1);
  and g3 (t3,in[1],sel);
  or g4 (out,t2,t3); 
endmodule