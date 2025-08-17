`include "fa_4bit.v"
module tb;
	reg [3:0]a,b;
	reg cin;
	wire [3:0] sum;
	wire cout;

	fa_4bit dut(a,b,cin,sum,cout);
		initial begin
		repeat(10) begin
		{a,b,cin} = $random;
		#1;
		$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
		end
		end
	endmodule 

//# End time: 16:57:02 on Aug 17,2025, Elapsed time: 0:00:00
//# Errors: 0, Warnings: 0
//# vsim tb 
//# Start time: 16:54:13 on Aug 17,2025
//# Loading work.tb
//# Loading work.fa_4bit
//# a=1001 b=0010 cin=0 sum=1011 cout=0
//# a=0100 b=0000 cin=1 sum=0101 cout=0
//# a=0000 b=0100 cin=1 sum=0101 cout=0
//# a=0011 b=0001 cin=1 sum=0101 cout=0
//# a=1000 b=0110 cin=1 sum=1111 cout=0
//# a=1100 b=0110 cin=1 sum=0011 cout=1
//# a=0011 b=0010 cin=1 sum=0110 cout=0
//# a=0000 b=1001 cin=0 sum=1001 cout=0
//# a=1000 b=0000 cin=1 sum=1001 cout=0
//# a=1000 b=0110 cin=1 sum=1111 cout=0
