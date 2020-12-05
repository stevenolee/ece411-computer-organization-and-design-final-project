`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module IF (
    // inputs
    input clk,
    input rst,
    input br_mispredict,
    input inst_resp,
    input pcmux::pcmux_sel_t pcmux_sel,
    input logic [31:0] alu_in,
    input logic stall,
    // output
    // output logic br_mispredict,
    output logic [31:0] pc_out,
    output logic br_predict
);
logic load_pc;
logic [31:0] pcmux_out;
//logic br_predict;

/*** PC REGISTER ***/
pc_register PC(
	.clk  	(clk),
    .rst 	(rst),
    .load 	(load_pc),
    .in   	(pcmux_out),
    .out  	(pc_out)
); 


/*** branch predictor module ***/
branch_history_table branch_history_table(
    .clk,
    // .rst,
    .pc             (pc_out),
    .read           (1'b1),
    .write          (1'b0),
    .taken          (1'b0),

    .prediction     (br_predict)
);


/*** PC MUX ***/
always_comb
begin
    load_pc = inst_resp & !stall;

    if(!stall) begin
        if(!inst_resp) begin
            if(br_mispredict) load_pc = 1'b1;
        end
    end
    
    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out:	pcmux_out = alu_in;
		pcmux::alu_mod2: pcmux_out = {alu_in[31:1], 1'b0};
        default: `BAD_MUX_SEL;
    endcase
end

endmodule
