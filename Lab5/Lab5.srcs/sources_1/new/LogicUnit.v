`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2017 12:03:58 PM
// Design Name: 
// Module Name: LogicUnit
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


module LogicUnit(
    input [31:0] A,
    input [31:0] B,
    input [1:0] ALU_OP,
    output reg [31:0] Y,
    output cout
    );
    always @ (*) begin
        case (ALU_OP[1:0]) 
            2'b00: Y = A & B;
            2'b01: Y = A | B;
            2'b10: Y = A ^ B;
            2'b11: Y = ~(A | B); 
            default: Y = 32'b0;
        endcase
        
    end
    assign cout = 0;
endmodule
