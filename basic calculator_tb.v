`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2025 01:01:41
// Design Name: 
// Module Name: basic calculator_tb
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


module basic_calculator_tb;

    reg [7:0] A;
    reg [7:0] B;
    reg [1:0] opcode;
    wire [15:0] result;
    wire error_flag;

    // Instantiate your Calculator module
    basic_calculator uut (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .error_flag(error_flag)
    );

    initial begin
        // Apply inputs
        A = 8'd10; B = 8'd5; opcode = 2'b00; // ADD
        #10;
        
        A = 8'd10; B = 8'd5; opcode = 2'b01; // SUB
        #10;
        
        A = 8'd4; B = 8'd3; opcode = 2'b10; // MUL
        #10;
        
        A = 8'd8; B = 8'd2; opcode = 2'b11; // DIV
        #10;

        A = 8'd8; B = 8'd0; opcode = 2'b11; // DIVIDE by 0 (error case)
        #10;

        $stop;
    end

endmodule
