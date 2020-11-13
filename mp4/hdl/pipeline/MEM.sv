import rv32i_types::*;

module MEM (
    // inputs
    input clk,
    input rst,
    input rv32i_control_word ctrl_in,
    input pcmux::pcmux_sel_t pcmux_sel,
    input [31:0] addr_in,
    input [31:0] pc_in,
    input [3:0] mem_byte,

    // output
    output logic read_data,
    output logic write_data,
    output logic [31:0] addr_out,
    output logic [3:0] data_mbe
);
// addr_in is the same as alu_in
assign addr_out = {addr_in[31:2], 2'b0};
assign write_data = ctrl_in.data_write;
assign read_data = ctrl_in.data_read;
assign data_mbe = mem_byte;

endmodule
