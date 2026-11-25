`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 10:54:32 AM
// Design Name: 
// Module Name: full_adder
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


module half_adder(input a,b,output sum,carry);

assign sum=a^b;
assign carry=a&b;
endmodule

module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    wire s1;
    wire c1,c2;
    half_adder HA1(.a(a),.b(b),.sum(s1),.carry(c1));
    half_adder HA2(.a(s1),.b(c),.sum(sum),.carry(c2));
    or (carry,c1,c2);
endmodule

