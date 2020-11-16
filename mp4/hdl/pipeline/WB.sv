`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module WB (
    // inputs
	input clk,
	input rst,
	input [31:0] data_in,
	input [31:0] alu_in,
	input rv32i_control_word ctrl_in,
	input br_en,
	input [31:0] pc_in,
	input [3:0] mem_byte_enable,

    // output
	output logic load_regfile,
	output rv32i_reg rd_reg,
	output logic [31:0] regfilemux_o
);

assign rd_reg = ctrl_in.rd;
assign load_regfile = ctrl_in.load_regfile;

always_comb begin
    regfilemux_o = alu_in;

    unique case (ctrl_in.regfilemux_sel) // regfilemux
		regfilemux::alu_out: regfilemux_o = alu_in;
		regfilemux::br_en: regfilemux_o = {31'b0000000000000000000000000000000, br_en};
		regfilemux::u_imm: regfilemux_o = ctrl_in.u_imm;
		regfilemux::lw: regfilemux_o = data_in;
		regfilemux::pc_plus4: regfilemux_o = pc_in + 4;
		regfilemux::lb: begin
			unique case (mem_byte_enable)
				4'b0001: regfilemux_o = {{24{data_in[7]}}, data_in[7:0]};
				4'b0010: regfilemux_o = {{24{data_in[15]}}, data_in[15:8]};
				4'b0100: regfilemux_o = {{24{data_in[23]}}, data_in[23:16]};
				4'b1000: regfilemux_o = {{24{data_in[31]}}, data_in[31:24]};
				default: regfilemux_o = {{24{data_in[7]}}, data_in[7:0]};
			endcase
		end
		regfilemux::lbu: begin
			unique case (mem_byte_enable)
				4'b0001: regfilemux_o = {24'b0, data_in[7:0]};
				4'b0010: regfilemux_o = {24'b0, data_in[15:8]};
				4'b0100: regfilemux_o = {24'b0, data_in[23:16]};
				4'b1000: regfilemux_o = {24'b0, data_in[31:24]};
				default: regfilemux_o = {24'b0, data_in[7:0]};
			endcase
		end
		regfilemux::lh: begin
			unique case (mem_byte_enable)
				4'b0011: regfilemux_o = {{16{data_in[15]}}, data_in[15:0]};
				4'b1100: regfilemux_o = {{16{data_in[31]}}, data_in[31:16]};
				default: regfilemux_o = {{16{data_in[15]}}, data_in[15:0]};
			endcase
		end
		regfilemux::lhu: begin
			unique case (mem_byte_enable)
				4'b0011: regfilemux_o = {16'b0, data_in[15:0]};
				4'b1100: regfilemux_o = {16'b0, data_in[31:16]};
				default: regfilemux_o = {16'b0, data_in[15:0]};
			endcase
		end
		default: `BAD_MUX_SEL;
	endcase 
end

endmodule : WB