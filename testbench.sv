module vending_machine_tb;
  reg clk;
  reg [1:0]in;
  reg rst;
  wire out;
  wire [1:0] change;
  
  vending_machine uut(.clk(clk),.rst(rst),.in(in),.out(out),.change(change));
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
  
  initial begin
    rst=1;clk=0;
    
    #6 rst=0;in=1;
    #11 in=1;
    #16 in=1;
    #25 $finish;
  end
endmodule
    