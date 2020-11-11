import rv32i_types::*;

module cmp
(
	input clk,
    input rst,
	input [31:0] a,
	input [31:0] b,
	input branch_funct3_t cmpop,
	output logic br_en
);
logic result;
logic unsigned [31:0] a_u, b_u;
logic signed [31:0] a_s, b_s;
assign a_u = a;
assign b_u = b;
assign a_s = a;
assign b_s = b;

always_comb
begin
	unique case (cmpop)
		beq: br_en = (a_s == b_s) ? 1'b1 : 1'b0;
		bne: br_en = (a_s != b_s) ? 1'b1 : 1'b0;
		blt: br_en = (a_s < b_s) ? 1'b1 : 1'b0;
		bge: br_en = (a_s >= b_s) ? 1'b1 : 1'b0;
		bltu: br_en = (a_u < b_u) ? 1'b1 : 1'b0;
		bgeu: br_en = (a_u >= b_u) ? 1'b1 : 1'b0;
		default: br_en = 1'b0;
	endcase
end

endmodule : cmp