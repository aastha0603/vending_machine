// Code your testbench here
// or browse Examples
module vending_machine_t;
  //declaring input 
  reg clock;
  reg [1:0
       ] x;
  reg reset;
  //declaring outout wires
  wire y;
  wire[1:0] z;
  vending_machine uut(
    .clock(clk
    ),
    .reset(reset),
    .x(x),
    .y(y),
    .z(z) );
  initial begin
    //initialising the inputs
    $dumpfile("vending_machine.vcd"
             );
    $dumpvars(0,vending_machine_t);
    reset = 1;
    clock = 0;
    
    #5 reset = 0;
    x = 1;
    #10 x = 1;
    #15 x = 1;
    #20 $finish;
    
  end
  always #5 clock = -clock;
endmodule