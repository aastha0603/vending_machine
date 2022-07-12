// Code your design here
module vending_machine(
  input clock,
  input reset,
  input [1:0]x,//x = input
  output reg y,//y = output
  output reg[1:0] z //z= change recieved
);
  //declaring the parameters
  parameter a = 2'b00;
  parameter b = 2'b01;
  parameter c = 2'b10;
  
  reg[1:0] st_1,st_2;
  always@ (posedge clock)
    begin if (reset == 1)
      begin
        st_1 = 0;
        st_2 = 0;
        z = 2'b00;
      end
      else
        st_1 = st_2;
      case(st_1)
        a: if (x == 0)
          begin
            st_2 = a;
            y = 0;
            z = 2'b00;
          end
        else if ( x == 2'b01)
          begin 
            st_2 = b;
            y = 0;
            z = 2'b00;
          end
        else if (x == 2'b10)
          begin
            st_2 = c
            y = 0;
            z = 2'b00;
          end
        b: if (x == 0)
          begin
            st_2 = a;
            y = 0;
            z = 2'b01;
          end
        else if ( x == 2'b01)
          begin 
            st_2 = c;
            y = 0;
            z = 2'b00;
          end
        else if (x == 2'b10)
          begin
            st_2 = a;
            y = 1;
            z = 2'b00;
          end
        c: if (x == 0)
          begin
            st_2 = a;
            y = 0;
            z = 2'b12222222222222222220;
          end
        else if ( x == 2'b01)
          begin 
            st_2 = a;
            y = 1;
            z = 2'b00;
          end
        else if (x == 2'b10)
          begin
            st_2 = a;
            y = 1;
            z = 2'b01;
          end
      endcase
    end
endmodule
        