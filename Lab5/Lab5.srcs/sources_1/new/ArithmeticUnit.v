`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2017 09:04:06 AM
// Design Name: 
// Module Name: ArithmeticUnit
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


module ArithmeticUnit(
    input [31:0] A,
    input [31:0] B,
    input ALU_OPone,
    input ALU_OPMSB,
        output [31:0] Y,
    output cout
    );
    wire [31:0] middle;
    wire [31:0] slt;
    assign middle = ALU_OPone ? A - B : A + B;
    assign slt = (B < A) ? 32'b0 : 32'b1;
    assign Y = ALU_OPMSB ?  slt : middle;
    assign cout = (Y == 0) ? 1'b1 : 1'b0;
    
endmodule
