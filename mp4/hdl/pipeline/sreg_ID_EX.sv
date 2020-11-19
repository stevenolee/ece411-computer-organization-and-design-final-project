import rv32i_types::*;

module sreg_ID_EX(
	input clk,		
	input rst,		
	input rv32i_control_word ctrl_in,
	input [31:0] pc_in,	
    input logic br_mispredict,
    input rv32i_word rs1_in,
	input rv32i_word rs2_in,
    input logic stall,

	output rv32i_control_word ctrl_out,			
	output logic [31:0] pc_out,
    output rv32i_word rs1_out,
	output rv32i_word rs2_out
);
logic [31:0] rs1, rs2, pc;
rv32i_control_word ctrl;

always_ff @(posedge clk && !stall)
begin
    if (rst || br_mispredict)
    begin
        ctrl <= 0;
        pc <= 0;
        rs1 <= 0;
        rs2 <= 0;
    end
    else if (!stall) begin
        ctrl <= ctrl_in;
        pc <= pc_in;
        rs1 <= rs1_in;
        rs2 <= rs2_in;
    end
end

//always_comb begin
//    if (!stall) begin
//        ctrl_out = ctrl;
//        pc_out = pc;
//        rs1_out = rs1;
//        rs2_out = rs2;
//    end
//end

endmodule