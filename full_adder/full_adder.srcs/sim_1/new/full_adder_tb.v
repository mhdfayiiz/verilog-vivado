`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 11:01:24 AM
// Design Name: 
// Module Name: full_adder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_tb();
reg a,b,c;
wire sum,carry;

full_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));


initial begin
$monitor("a=%0d,b=%0d,c=%0d,sum=%0d,carry=%0d",a,b,c,sum,carry);
a=0;b=0;c=0;
#100;a=0;b=0;c=1;
#100;a=0;b=1;c=1;
#100;a=1;b=0;c=0;
#100;a=1;b=0;c=1;
#100;a=1;b=1;c=0;
#100;a=1;b=1;c=1;
end

endmodule
