`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:41:19 PM
// Design Name: 
// Module Name: ripple_carry
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

module full_adder(
   input a,
   input b,
   input c,
   output sum,
   output carry
   );
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(a&c);
endmodule

module ripple_carry(
    input [3:0]a,
    input [3:0]b,
    input cin,
    output [3:0]sum,
    output carry
    );
    wire c1,c2,c3;
    
    full_adder FA1(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c1));
    full_adder FA2(.a(a[1]),.b(b[1]),.c(c1),.sum(sum[1]),.carry(c2));
    full_adder FA3(.a(a[2]),.b(b[2]),.c(c2),.sum(sum[2]),.carry(c3));
    full_adder FA4(.a(a[3]),.b(b[3]),.c(c3),.sum(sum[3]),.carry(carry));
    
endmodule
