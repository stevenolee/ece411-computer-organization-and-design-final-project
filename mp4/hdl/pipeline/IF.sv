import rv32i_types::*;
import rv32i_mux_types::*;

module IF (
    // inputs
    input clk,
    input logic [31:0] i_mem_address,
    input br_take,
    input pcmux::pcmux_sel_t pcmux_sel,
    // output
    output logic br_mispredict,
    output logic [31:0] inst_addr,
    output logic [31:0] pc_out
);
logic load_pc;
assign inst_addr = i_mem_address;

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
    load_pc = 1'b1;

    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out:	pcmux_out = alu_out;
		pcmux::alu_mod2: pcmux_out = {alu_out[31:1], 1'b0}; // ~(alu_out[0] && 1'b0); // 
        default: `BAD_MUX_SEL;
    endcase
end

endmodule
