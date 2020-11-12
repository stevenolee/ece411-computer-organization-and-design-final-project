import rv32i_types::*;

module ID (
    // inputs
	input clk,
	input load_regfile,
	input logic [31:0] regfilemux_out,
    input rv32i_reg rd,
	input rv32i_reg rs1, 
	input rv32i_reg rs2
	input inst_read,
	input inst_resp,
	input inst_rdata,

    // output
	output rv32i_word rs1_out,
	output rv32i_word rs2_out,
	output rv32i_control_word ctrl_word
);


control_rom control_rom
(
	.instruction	(inst_rdata),
	.ctrl			(ctrl_word)
);

/***************************** Registers *****************************/
regfile regfile(
	.clk	(clk),
    .rst	(rst),
    .load	(load_regfile),
	.in		(regfilemux_out),
	.src_a	(rs1),
	.src_b	(rs2),
	.dest	(rd),
	.reg_a	(rs1_out),
	.reg_b	(rs2_out)
);


endmodule : ID