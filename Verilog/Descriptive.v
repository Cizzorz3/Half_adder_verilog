`timescale 1ns/1ns
module half_adder(output s , output c , input A , input B);
  
  xor(s,A,B);
  and(c,A,B);
  
  
  
  
endmodule
