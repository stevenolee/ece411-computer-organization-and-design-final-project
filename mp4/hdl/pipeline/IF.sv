`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module IF (
    // inputs
    input clk,
    input rst,
    input br_take,
    input inst_resp,
    input pcmux::pcmux_sel_t pcmux_sel,
    input logic [31:0] alu_in,
    // output
    output logic br_mispredict,
    output logic [31:0] inst_addr,
    output logic [31:0] pc_out
);
logic load_pc;
assign inst_addr = pc_out;
logic [31:0] pcmux_out;

/*** PC REGISTER ***/
pc_register PC(
	.clk  	(clk),
    .rst 	(rst),
    .load 	(load_pc),
    .in   	(pcmux_out),
    .out  	(pc_out)
); 

/*** PC MUX ***/
always_comb
begin
    br_mispredict = br_take;
    load_pc = inst_resp;

    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out:	pcmux_out = alu_in;
		pcmux::alu_mod2: pcmux_out = {alu_in[31:1], 1'b0}; // ~(alu_out[0] && 1'b0); // 
        default: `BAD_MUX_SEL;
    endcase
end

endmodule
