`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2017 01:18:28 PM
// Design Name: 
// Module Name: OutputLogic
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


module OutputLogic(
    input [2:0] L, [2:0] R,
    output LA, LB, LC, RA, RB, RC
    );
        assign LA = L[0];
        assign LB = L[1];
        assign LC = L[2];
        assign RA = R[0];
        assign RB = R[1];
        assign RC = R[2];
endmodule
