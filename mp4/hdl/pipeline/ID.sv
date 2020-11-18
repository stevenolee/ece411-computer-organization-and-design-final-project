import rv32i_types::*;

module ID (
    // inputs
	input clk,
	input rst,
	input load_regfile,
	input logic [31:0] regfilemux_in,
    input rv32i_reg rd,
	input inst_resp,
	input logic [31:0] inst_rdata,

    // output
	output logic inst_read,
	output rv32i_word rs1_out,
	output rv32i_word rs2_out,
	output rv32i_control_word ctrl_word
); 
assign inst_read = 1'b1;

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
	.in		(regfilemux_in),
	.src_a	(ctrl_word.rs1),
	.src_b	(ctrl_word.rs2),
	.dest	(rd),
	.reg_a	(rs1_out),
	.reg_b	(rs2_out)
);


endmodule : ID