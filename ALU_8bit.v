// 8-bit ALU in Verilog
module ALU_8bit(
    input  [7:0] A, B,
    input  [2:0] ALU_Sel,   // operation select
    output reg [7:0] ALU_Out,
    output reg CarryOut
);

    reg [8:0] tmp;

    always @(*) begin
        case (ALU_Sel)
            3'b000: begin // Addition
                tmp = A + B;
                ALU_Out = tmp[7:0];
                CarryOut = tmp[8];
            end
            3'b001: begin // Subtraction
                tmp = A - B;
                ALU_Out = tmp[7:0];
                CarryOut = tmp[8];
            end
            3'b010: ALU_Out = A & B;   // AND
            3'b011: ALU_Out = A | B;   // OR
            3'b100: ALU_Out = A ^ B;   // XOR
            3'b101: ALU_Out = A << 1;  // Shift Left
            3'b110: ALU_Out = A >> 1;  // Shift Right
            3'b111: ALU_Out = (A == B) ? 8'd1 : 8'd0; // Equality
            default: ALU_Out = 8'd0;
        endcase
    end
endmodule
