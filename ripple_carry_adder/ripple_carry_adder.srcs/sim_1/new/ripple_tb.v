`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:58:42 PM
// Design Name: 
// Module Name: ripple_tb
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


module ripple_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire carry;


ripple_carry dut(a,b,cin,sum,carry);

initial begin
$monitor("a=%0d,b=%0d,cin=%0d,sum=%0d,carry=%0d",a,b,cin,sum,carry);
a=4'b0001;b=4'b0010;cin=0;
#10;
a=4'b0001;b=4'b0011;cin=0;
#10;
a=4'b1001;b=4'b0011;cin=1;
end
endmodule
