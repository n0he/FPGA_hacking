`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2017 03:11:33 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input clk, left, right, rst, 
    output LA, LB, LC, RA, RB, RC
    );
    reg [2:0] L;
    reg [2:0] R;
    wire clk_en;
    clk_div clocks(clk, rst, clk_en);
    always @ (posedge clk_en) begin
        if (rst) begin 
            L = 3'b000;
            R = 3'b000;
        end 
    
        if (L == 3'b000 && left) begin
            L = 3'b001;
        end
        case(L)
            3'b001: L = 3'b011;
            3'b011: L = 3'b111;
            3'b111: L = 3'b000;
            default: L = 3'b000;
        endcase;
        if (R == 3'b000 && right) begin
            R = 3'b001;
        end
        case(R)
            3'b001: R = 3'b011;
            3'b011: R = 3'b111;
            3'b111: R = 3'b000;
            default: R = 3'b000;
        endcase
     end
    OutputLogic lights(L, R, LA, LB, LC, RA, RB, RC);
endmodule
