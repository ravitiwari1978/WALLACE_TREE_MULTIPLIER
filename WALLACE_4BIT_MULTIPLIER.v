`timescale 1ns / 1ps
//RAVI_2204205
module wallace_4bit(
input [3:0]a,
input [3:0]b,
//defined input and output of the design 
output [7:0]product
 );
//required nets in the design
 wire pp[6:0][3:0];
 wire [12:1]s;
 wire [12:1]c;
 //use of the genvar and generate block that works in the elobration region  and helps in designing the structure of the hardware...... 
 genvar i,j;
 and (pp[0][0],a[0],b[0]); //this is the first partial product
 for(j=1;j<=3;j=j+1)  //for the partial product generation use the nested for loop
 begin
 for(i=0;i<=j;i=i+1)   
 begin
 assign pp[j][i] = a[j-i]&b[i];  //partial product due to the above for loop
 end
 end
//these for loops in the generate block helps in designing the 'and' gate in the elobration region
 
 for(i=1;i<=3;i=i+1)
  begin
  assign pp[4][i-1] = a[4-i]&b[i];
  end
  for(i=2;i<=3;i=i+1)
   begin
   assign pp[5][i-2] = a[5-i]&b[i];
   end
   and (pp[6][0],a[3],b[3]);

//now instantiate the defined half adder and the full adder for the different stages of the wallace multiplier
   //stage 1: for 2 half adder
   HA ha1(pp[3][0],pp[3][1],s[1],c[1]);
   HA ha2(pp[4][0],pp[4][1],s[2],c[2]);

 //stage 2: one half adder and 3 full adder
   HA ha3(pp[2][0],pp[2][1],s[3],c[3]);
   FA fa4(s[1],pp[3][2],pp[3][3],s[4],c[4]);
   FA fa5(s[2],pp[4][2],c[1],s[5],c[5]);
   FA fa6(pp[5][0],pp[5][1],c[2],s[6],c[6]);


   //stage3 :1 half adder and 5 full adder
   HA ha7(pp[1][0],pp[1][1],s[7],c[7]);
   FA fa8(s[3],pp[2][2],c[7],s[8],c[8]);
   FA fa9(s[4],c[3],c[8],s[9],c[9]);
   FA fa10(s[5],c[4],c[9],s[10],c[10]);
   FA fa11(s[6],c[5],c[10],s[11],c[11]);
   FA fa12(pp[6][0],c[6],c[11],s[12],c[12]);

//assign the LSB of the result using the assign statement called continuous assignment directly
   assign product[0] = pp[0][0];
   for(i=1;i<=6;i=i+1)begin
   assign product[i] = s[i+6];
   end
   assign product[7] = c[12];
 endmodule
 
//now making the half adder and full adder module that can be used in the top module
 module HA (
 input a,b,
 output s,c
 );
 //use gate level modelling style
 xor (s,a,b);
 and (c,a,b);
 
 endmodule
 
 module FA(
 input a,b,cin,
 output s,cout
 );
 //for the internal undefined nets we have to defined the internal nets by variable name
 wire v1,v2,v3;
 
 //using gate level modelling style
 and(v1,a,b);
 and(v2,b,cin);
 and(v3,a,cin);
 
 xor(s,a,b,cin);
 or(cout,v1,v2,v3);
 
 endmodule


