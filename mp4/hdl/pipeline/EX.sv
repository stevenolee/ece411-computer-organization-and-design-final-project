import rv32i_types::*;

module EX (
    // inputs
	input clk,
    input rv32i_control_word ctrl_in,
    input rv32i_reg rs1_in,
    input rv32i_reg rs2_in,
    input logic [31:0] pc_in,
	
	// outputs
	output rv32i_word alu_out,
	output logic br_en,
    output rv32i_reg rs2_out
);
assign rs2_out = rs1_in;

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
	.a		(rs1_in),
	.b		(cmp_mux_out),
    .br_en	(br_en)
);

/*** MUXES ***/

always_comb begin
    unique case (ctrl_in.alumux1_sel)
        alumux::rs1_out: alumux1_out = rs1_in;
        alumux::pc_out: alumux1_out = pc_in;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl_in.alumux2_sel)
        alumux::i_imm: alumux2_out = ctrl_in.i_imm;
        alumux::u_imm: alumux2_out = ctrl_in.u_imm;
        alumux::b_imm: alumux2_out = ctrl_in.b_imm;
        alumux::s_imm: alumux2_out = ctrl_in.s_imm;
        alumux::j_imm: alumux2_out = ctrl_in.j_imm;
        alumux::rs2_out: alumux2_out = rs2_in;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl_in.cmpmux_sel)
        cmpmux::rs2_out: 
            cmp_mux_out = rs2_in;
        cmpmux::i_imm:
            cmp_mux_out = ctrl_in.i_imm;
    default: `BAD_MUX_SEL;
endcase
end



endmodule
