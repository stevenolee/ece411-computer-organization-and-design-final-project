`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module EX (
    // inputs
	input clk,
    input rv32i_control_word ctrl_in,
    input rv32i_word rs1_in,
    input rv32i_word rs2_in,
    input logic [31:0] pc_in,
    input logic hazard_ID_EX_rs1,
	input logic hazard_ID_EX_rs2,
	input logic hazard_ID_MEM_rs1,
	input logic hazard_ID_MEM_rs2,
	input logic stall,
    input logic [31:0] hazard_MEM_data,
	input logic [31:0] hazard_WB_data,


	// outputs
	output rv32i_word alu_out,
	output logic cmp_out,
    output rv32i_word rs2_out
);
assign rs2_out = rs2_in;

rv32i_word rs1;
rv32i_word alumux1_out;
rv32i_word alumux2_out;
rv32i_word cmp_mux_out;

alu ALU(
	.aluop	(ctrl_in.aluop),
	.a		(alumux1_out),
	.b 		(alumux2_out),
	.f		(alu_out)
);

cmp CMP(
	.clk	(clk),
    .rst	(1'b0),     // do we need to reset?
	.cmpop	(ctrl_in.cmpop),
	.a		(rs1),
	.b		(cmp_mux_out),
    .br_en	(cmp_out)
);

/*** MUXES ***/

always_comb begin

    if (hazard_ID_EX_rs1 == 1'b1)
        rs1 = hazard_MEM_data;
    else if (hazard_ID_MEM_rs1 == 1'b1)
        rs1 = hazard_WB_data;
    else
        rs1 = rs1_in;

    unique case (ctrl_in.alumux1_sel)
        alumux::rs1_out: alumux1_out = rs1;
        alumux::pc_out: alumux1_out = pc_in;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl_in.alumux2_sel)
        alumux::rs2_out: begin
            if (hazard_ID_EX_rs2 == 1'b1)
                alumux2_out = hazard_MEM_data;
            else if (hazard_ID_MEM_rs2 == 1'b1)
                alumux2_out = hazard_WB_data;
            else
                alumux2_out = rs2_in;
        end
        alumux::i_imm: alumux2_out = ctrl_in.i_imm;
        alumux::u_imm: alumux2_out = ctrl_in.u_imm;
        alumux::b_imm: alumux2_out = ctrl_in.b_imm;
        alumux::s_imm: alumux2_out = ctrl_in.s_imm;
        alumux::j_imm: alumux2_out = ctrl_in.j_imm;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl_in.cmpmux_sel)
        cmpmux::rs2_out: begin
            if (hazard_ID_EX_rs2 == 1'b1)
                cmp_mux_out = hazard_MEM_data;
            else if (hazard_ID_MEM_rs2 == 1'b1)
                cmp_mux_out = hazard_WB_data;
            else
                cmp_mux_out = rs2_in;
        end
        cmpmux::i_imm:
            cmp_mux_out = ctrl_in.i_imm;
        default: `BAD_MUX_SEL;
    endcase
end



endmodule
