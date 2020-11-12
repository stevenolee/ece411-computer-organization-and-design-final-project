import rv32i_types::*;

module EX (
    // inputs
	input clk,
	// input alumux1_sel,
	// input alumux2_sel,
	// input aluop,
	// input ir_out,
	// input cmpop,
	// input cmpmux_sel,
    input rv32i_control_word ctrl_in,
    input rv32i_reg rs1_out,
    input rv32i_reg rs2_out,
    input logic [31:0] pc_in,
	
	// outputs
	output rv32i_word alu_out,
	output logic br_en,
    output rv32i_reg rs2_out
);

alu ALU(
	.aluop	(aluop),
	.a		(alumux1_out),
	.b 		(alumux2_out),
	.f		(alu_out)
);

cmp CMP(
	.clk	(clk),
    .rst	(1'b0),     // do we need to reset?
	.cmpop	(ctrl_in.cmpop),
	.a		(rs1_out),
	.b		(cmp_mux_out),
    .br_en	(br_en)
);

/*** MUXES ***/

always_comb begin
    unique case (ctrl_in.alumux1_sel)
        alumux::rs1_out: alumux1_out = rs1_out;
        alumux::pc_out: alumux1_out = pc_out;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl_in.alumux2_sel)
        alumux::i_imm: alumux2_out = ctrl_in.i_imm;
        alumux::u_imm: alumux2_out = ctrl_in.u_imm;
        alumux::b_imm: alumux2_out = ctrl_in.b_imm;
        alumux::s_imm: alumux2_out = ctrl_in.s_imm;
        alumux::j_imm: alumux2_out = ctrl_in.j_imm;
        alumux::rs2_out: alumux2_out = rs2_out;
        default: `BAD_MUX_SEL;
    endcase

    unique case (ctrl.cmpmux_sel)
        rs2_out: 
            cmp_mux_out = rs2_out;
        ctrl.i_imm:
            cmp_mux_out = ctrl.i_imm;
    default: `BAD_MUX_SEL;
endcase
end



endmodule
