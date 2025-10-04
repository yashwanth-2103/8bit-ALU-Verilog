// Testbench for 8-bit ALU
`timescale 1ns/1ps
module tb_ALU_8bit;

    reg [7:0] A, B;
    reg [2:0] ALU_Sel;
    wire [7:0] ALU_Out;
    wire CarryOut;

    ALU_8bit uut (
        .A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out), .CarryOut(CarryOut)
    );

    initial begin
        $dumpfile("alu_wave.vcd");   // output VCD file
        $dumpvars(0, tb_ALU_8bit);

        A = 8'd10; B = 8'd5;

        ALU_Sel = 3'b000; #10; // Add
        ALU_Sel = 3'b001; #10; // Sub
        ALU_Sel = 3'b010; #10; // AND
        ALU_Sel = 3'b011; #10; // OR
        ALU_Sel = 3'b100; #10; // XOR
        ALU_Sel = 3'b101; #10; // Shift Left
        ALU_Sel = 3'b110; #10; // Shift Right
        ALU_Sel = 3'b111; #10; // Equality

        $finish;
    end
endmodule
