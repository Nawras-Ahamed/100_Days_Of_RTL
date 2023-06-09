`timescale 10ns/1ps
module comparator(
     input [3:0] Din_A,
     input [3:0] Din_B,
     output reg less,
     output reg equal,
     output reg greater);

  
  always @(Din_A or Din_B)
     begin
       if(Din_A > Din_B)   
          begin  
            less = 0;
            equal = 0;
            greater = 1;    
          end
       else if(Din_A == Din_B)
          begin 
            less = 0;
            equal = 1;
            greater = 0;   
          end
        else   
          begin 
            less = 1;
            equal = 0;
            greater =0;
        end 
    end
endmodule