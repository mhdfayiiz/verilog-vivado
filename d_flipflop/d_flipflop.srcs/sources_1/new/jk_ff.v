`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2026 02:07:32 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,
    input k,
    input clk,
    input reset,
    output reg y
    );
    
    always @(posedge clk) begin
    if(reset)
       y<=0;
    else
       case({j,k})
       2'b00:y<=y;
       2'b01:y<=0;
       2'b10:y<=1;
       2'b11:y<=~y;
       endcase
    end
          
endmodule
