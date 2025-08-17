module fa_4bit(a,b,cin,sum,cout);
    input [3:0] a, b;
    input cin;
    output reg [3:0] sum;
    output reg cout;

    task add(
        input [3:0] a, b,
        input cin,
        output [3:0] sum,
        output cout
    );
        reg [4:0] temp;
        begin
            temp = a + b + cin;
            {cout, sum} = temp;
        end
    endtask

    always @(*) begin
        add(a, b, cin, sum, cout);
    end
endmodule

