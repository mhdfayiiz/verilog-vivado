`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:13:11 PM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
reg j_tb,k_tb,reset_tb,clk_tb;
wire y_tb;


jk_ff dut(.j(j_tb),.k(k_tb),.reset(reset_tb),.clk(clk_tb),.y(y_tb));

always #10 clk_tb=~clk_tb;

initial begin
clk_tb=0;
reset_tb=1;j_tb=0;k_tb=0;
#20;reset_tb=0;j_tb=0;k_tb=0;
#20;reset_tb=0;j_tb=0;k_tb=1;
#20;reset_tb=0;j_tb=1;k_tb=0;
#20;reset_tb=0;j_tb=1;k_tb=1;

end
endmodule
