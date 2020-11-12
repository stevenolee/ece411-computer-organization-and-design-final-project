module sreg_ID_EX(
	// inputs
	input clk,		
	input rst,		
	input rv32i_control_word ctrl_in,		
	input logic [31:0] pc_in,	
    input logic br_mispredict,
    input logic [31:0] rs1_in,
	input logic [31:0] rs2_in,
	
    // outputs
	output rv32i_control_word ctrl_out,			
	output logic [31:0] pc_out,
    output logic [31:0] rs1_out,
	output logic [31:0] rs2_out
);
logic [31:0] rs1, rs2, pc;
rv32i_control_word ctrl;

always_ff @(posedge clk)
begin
    if (reset || br_mispredict)
    begin
        ctrl <= 0;
        pc <= 0;
        rs1 <= 0;
        rs2 <= 0;
    end
    else begin
        ctrl <= ctrl_in;
        pc <= pc_in;
        rs1 <= rs1_in;
        rs2 <= rs2_in;
    end
end

always_comb begin
    ctrl_out = ctrl;
    pc_out = pc;
    rs1_out = rs1;
    rs2_out = rs2;
end

endmodule