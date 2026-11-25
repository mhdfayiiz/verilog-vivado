`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 10:29:49 AM
// Design Name: 
// Module Name: ha_beh_tb
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


module ha_beh_tb();
reg a_tb,b_tb;
wire sum_tb,carry_tb;

half_adder_behav dut(.a(a_tb),.b(b_tb),.sum(sum_tb),.carry(carry_tb));

initial begin
 a_tb=0;b_tb=0;
 #100;a_tb=0;b_tb=1; 
#100;a_tb=1;b_tb=0; 
#100;a_tb=1;b_tb=1; 
$display("a = %0d , b = %0d , sum = %0d , carry = %0d ",a_tb,b_tb,sum_tb,carry_tb);
end



endmodule
