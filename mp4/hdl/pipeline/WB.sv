import rv32i_types::*;

module WB (
    // inputs
	input clk,
	input rst,
	input [31:0] data_in,
	input [31:0] alu_in,
	input ctrl_in,
	input br_en,

    // output
	output logic load_regfile,
	output rv32i_reg rd,
	output logic [31:0] regfilemux_out
);

assign rd = ctrl_in.rd;
assign load_regfile = ctrl_in.load_regfile;

always_comb begin
    regfilemux_out = alu_in; 

    unique case (ctrl_in.regfilemux_sel) // regfilemux
		regfilemux::alu_out: regfilemux_out = alu_in;
		regfilemux::br_en: regfilemux_out = {31'b0000000000000000000000000000000, br_en};
		regfilemux::u_imm: regfilemux_out = ctrl_in.u_imm;
		regfilemux::lw: regfilemux_out = data_in;
		regfilemux::pc_plus4: regfilemux_out = ctrl_in.pc_out + 4;
		regfilemux::lb: begin
			unique case (ctrl_in.mem_byte_enable)
				4'b0001: regfilemux_out = {{24{data_in[7]}}, data_in[7:0]};
				4'b0010: regfilemux_out = {{24{data_in[15]}}, data_in[15:8]};
				4'b0100: regfilemux_out = {{24{data_in[23]}}, data_in[23:16]};
				4'b1000: regfilemux_out = {{24{data_in[31]}}, data_in[31:24]};
				default: regfilemux_out = {{24{data_in[7]}}, data_in[7:0]};
			endcase
		end
		regfilemux::lbu: begin
			unique case (ctrl_in.mem_byte_enable)
				4'b0001: regfilemux_out = {24'b0, data_in[7:0]};
				4'b0010: regfilemux_out = {24'b0, data_in[15:8]};
				4'b0100: regfilemux_out = {24'b0, data_in[23:16]};
				4'b1000: regfilemux_out = {24'b0, data_in[31:24]};
				default: regfilemux_out = {24'b0, data_in[7:0]};
			endcase
		end
		regfilemux::lh: begin
			unique case (ctrl_in.mem_byte_enable)
				4'b0011: regfilemux_out = {{16{data_in[15]}}, data_in[15:0]};
				4'b1100: regfilemux_out = {{16{data_in[31]}}, data_in[31:16]};
				default: regfilemux_out = {{16{data_in[15]}}, data_in[15:0]};
			endcase
		end
		regfilemux::lhu: begin
			unique case (ctrl_in.mem_byte_enable)
				4'b0011: regfilemux_out = {16'b0, data_in[15:0]};
				4'b1100: regfilemux_out = {16'b0, data_in[31:16]};
				default: regfilemux_out = {16'b0, data_in[15:0]};
			endcase
		end
		default: `BAD_MUX_SEL;
			endcase
		end
		default: `BAD_MUX_SEL;
	endcase 
end

endmodule : WB