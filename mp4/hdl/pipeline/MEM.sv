import rv32i_types::*;

module MEM (
    // inputs
    input clk,
    input rst,
    input pcmux pcmux_sel,
    input [31:0] addr_in,
    input [31:0] pc_in,

    // output
    output logic read_data,
    output logic write_data,
    output logic [31:0] addr_out,
    output logic [31:0] pcmux_out
);
// addr_in is the same as alu_in
assign addr_out = addr_in;

always_comb
begin
    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_in + 4;
        pcmux::alu_in:	pcmux_out = addr_in; // addr_in is the same as alu_in
		pcmux::alu_mod2: pcmux_out = {alu_in[31:1], 1'b0};
        default: `BAD_MUX_SEL;
    endcase


end

endmodule
