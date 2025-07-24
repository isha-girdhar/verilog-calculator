`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 00:59:14
// Design Name: 
// Module Name: basic_calculator
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


module basic_calculator(
    input [7:0] A,
    input [7:0] B,
    input [1:0] opcode,
    output reg [15:0] result,
    output reg error_flag
);

    always @(*) begin
        error_flag = 0;
        result = 16'h0000;  // Default result

        case (opcode)
            2'b00: result = A + B;          // Addition
            2'b01: result = A - B;           // Subtraction
            2'b10: result = A * B;           // Multiplication
            2'b11: begin                     // Division
                if (B != 0)
                    result = A / B;
                else begin
                    result = 16'hxxxx;       // Division by zero -> result is 0
                    error_flag = 1;
                end
            end
            default: begin
                result = 16'h0000;
                error_flag = 1;
            end
        endcase
    end

endmodule
