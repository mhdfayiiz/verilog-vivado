`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 11:52:09 AM
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg d_tb,clk_tb,reset_tb;
wire y_tb;

d_ff dut(.d(d_tb),.clk(clk_tb),.reset(reset_tb),.y(y_tb));

always #10 clk_tb=~clk_tb;

initial begin
$monitor("d=%0d,reset=%0d,y=%0d",d_tb,reset_tb,y_tb);
clk_tb=0;
reset_tb=1;
d_tb=0;
#20;
reset_tb=0;
d_tb=1;
#20;
reset_tb=1;
d_tb=1;
#20;
reset_tb=0;
d_tb=0;
end

endmodule
