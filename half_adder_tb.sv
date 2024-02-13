// Code your testbench here
// or browse Examples

//half adder testbench

module half_adder_tb;
  //all input types must be declared as reg 
  // all output types must be declared as wire
 
  //declaration
  reg a,b;
  wire sum,carry;
  
  //dut
  
  half_adder dut(.sum(sum),.carry(carry),.a(a),.b(b));
  
  //all possible input with delays
  
  initial begin

  #10 a=1'b0;b=1'b0;
  #25 a=1'b0;b=1'b1;
  #25 a=1'b1;b=1'b0;
  #25 a=1'b1;b=1'b1;
  end
  
  //display 
  
  initial begin $monitor($time,"sum= %b,carry= %b,a= %b,b= %b",sum,carry,a,b);
 end
endmodule