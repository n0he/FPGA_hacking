`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2017 12:24:02 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALU_OP,
    output [31:0] Y,
    input cout
    );
    wire [31:0] logic;
    wire [31:0] arithmetic;
    wire cout1;
    wire cout2;
    ArithmeticUnit ar1 (A, B, ALU_OP[1], ALU_OP[3], arithmetic, cout1);
    LogicUnit logic1 (A, B, ALU_OP[1:0], logic, cout2);
    assign Y = (ALU_OP[2] && ~ALU_OP[3]) ? logic : arithmetic;
    
endmodule
