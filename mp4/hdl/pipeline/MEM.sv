import rv32i_types::*;

module MEM (
    // inputs
    input clk,
    input rst,
    input rv32i_control_word ctrl_in,
    input pcmux::pcmux_sel_t pcmux_sel,
    input [31:0] addr_in,
    input [31:0] pc_in,
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
    unique case (mem_byte_enable) // mem_data_out
		4'b1111: mem_wdata = mem_wdata_full;
		4'b0011: mem_wdata = {16'b0, mem_wdata_full[15:0]};
		// 4'b0110: mem_wdata = {8'b0, mem_wdata_full[23:8], 8'b0};
		4'b1100: mem_wdata = {mem_wdata_full[31:16], 16'b0};
		4'b0001: mem_wdata = {24'b0, mem_wdata_full[7:0]};
		4'b0010: mem_wdata = {16'b0, mem_wdata_full[15:8], 8'b0};
		4'b0100: mem_wdata = {8'b0, mem_wdata_full[23:16], 16'b0};
		4'b1000: mem_wdata = {mem_wdata_full[31:24], 24'b0};
		default: mem_wdata = mem_wdata_full;
	endcase
end

endmodule
