import rv32i_types::*;

module MEM (
    // inputs
    input clk,
    input rst,
    input rv32i_control_word ctrl_in,
    input pcmux::pcmux_sel_t pcmux_sel,
    input [31:0] addr_in,
    // input [31:0] pc_in,
    input [31:0] wdata_in,
    input [3:0] mem_byte,

    // output
    output logic read_data,
    output logic write_data,
    output logic [31:0] addr_out,
    output logic [3:0] data_mbe,
    output logic [31:0] wdata_out
); 
// addr_in is the same as alu_in
assign addr_out = {addr_in[31:2], 2'b0};
assign write_data = ctrl_in.data_write;
assign read_data = ctrl_in.data_read;
assign data_mbe = mem_byte;

always_comb begin
    unique case (mem_byte) // mem_data_out
		4'b1111: wdata_out = wdata_in;
		4'b0011: wdata_out = {16'b0, wdata_in[15:0]};
		// 4'b0110: wdata_out = {8'b0, wdata_in[23:8], 8'b0};
		4'b1100: wdata_out = {wdata_in[31:16], 16'b0};
		4'b0001: wdata_out = {24'b0, wdata_in[7:0]};
		4'b0010: wdata_out = {16'b0, wdata_in[15:8], 8'b0};
		4'b0100: wdata_out = {8'b0, wdata_in[23:16], 16'b0};
		4'b1000: wdata_out = {wdata_in[31:24], 24'b0};
		default: wdata_out = wdata_in;
	endcase
end

endmodule
