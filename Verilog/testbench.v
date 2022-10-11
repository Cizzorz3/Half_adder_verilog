`timescale 1ns/1ns
module my_half_adder_tb();
  reg a,b;
  wire s , c;
  half_adder h_add_1(s,c,a,b);
   initial begin
     $dumpfile("dump.vcd");
     $dumpvars(1,my_half_adder_tb);
    a=0;
    b=0;
    #100 
     $display("a=%d .b=%d , h_add=%d , h_carry=%d" , a,b,s,c);
    a=1;
    b=0;
    #100 
     $display("a=%d .b=%d , h_add=%d , h_carry=%d" , a,b,s,c);
    a=0;
    b=1;
    #100 
     $display("a=%d .b=%d , h_add=%d , h_carry=%d" , a,b,s,c);
    a=1;
    b=1;
    #100 
     $display("a=%d .b=%d , h_add=%d , h_carry=%d" , a,b,s,c);
    $finish;
  end
endmodule