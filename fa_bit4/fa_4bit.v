module fa_4bit (
	input [3:0]a,
	input [3:0]b,
	input cin,
	output reg [3:0]sum,
	output reg carry
	);
	
	reg [3:0] sum_temp;
	reg carry_add;
	reg carry_cout;

	task add(
		input [3:0]a,
		input [3:0]b,
		input cin,
		output reg [3:0] sum,
		output reg carry
	);
	reg [4:0]temp;
	begin
	temp = a + b + cin;
	sum = temp[3:0];
	carry = temp[4];
	end
	endtask
	
	task c_out(
		input [3:0]a,
		input [3:0]b,
		input cin,
		output reg carry
	);
	reg [4:0] temp;
	begin
	temp = (a&b) | (a&{4{cin}}) | (b&{4{cin}});
	carry = |temp;
	end
	endtask

	always@(*) begin

		add(a,b,cin,sum_temp,carry_add);
		c_out(a,b,cin,carry_cout);
		sum = sum_temp;
		carry = carry_cout;
	end
endmodule
