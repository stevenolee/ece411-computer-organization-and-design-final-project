module sreg_IF_ID(
    input clk,
    input rst,
    input logic [31:0] inst_addr,
    input logic [31:0] pc_in,
    input logic [31:0] inst_rdata, 
    input logic inst_resp,
    input br_mispredict,

    output logic [31:0] pc_out,
    output logic [31:0] data_out
);
logic [31:0] addr, pc, rdata;

always_ff @(posedge clk)
begin
    addr <= inst_addr;
    pc <= pc_in; 
    if(inst_resp) begin
        rdata = inst_rdata;
    end
    if (rst || br_mispredict) 
    begin
        addr <= 32'b0;
        pc <= 32'b0;
    end
end 

assign addr_out = addr;
assign pc_out = pc;
assign data_out = rdata;

endmodule