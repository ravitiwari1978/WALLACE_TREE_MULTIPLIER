`timescale 1ns/1ps
module tb();
//RAVI_2204205
//first of all write the inputs and output of the top module in the testbench module
logic [3:0] a,b;
logic [7:0] product;

//now after the input output initialization
//we have to instantiate the design under the test bench for that we
//are going to design the stimulus generating testbench
wallace_4bit DUT(
.a(a),.b(b),.product(product)
);

//now making the use of block for the continuous supply of the stimulus
initial begin
   $display("time \tA\tB\t|\tproduct\t|\t_expected");
   //now to show the each multiplication from stimulus need monitor to response on changes
   $monitor("%0t\t%0d\t%0d\t|\t%0d\t|\t%0d",$time,a,b,product,a*b);
   //the a*b is used here to show the expected output
   
   //apply the test vector or stimulus at the inputs of the dut to produce result
   a=4'd3;b=4'd2;#10;
   a=4'd5;b=4'd3;#10;
   a=4'd4;b=4'd2;#10;
   a=4'd5;b=4'd2;#10;
   a=4'd7;b=4'd2;#10;
   a=4'd3;b=4'd1;#10;  
end
endmodule
