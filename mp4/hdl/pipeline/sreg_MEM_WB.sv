import rv32i_types::*;

module sreg_MEM_WB (
    input clk,
    input rst,
    input [31:0] alu_in,
    input [31:0] data_rdata_in,
    input rv32i_control_word ctrl_in,
    output [31:0] alu_out,
    output [31:0] data_rdata_out,
    output rv32i_control_word ctrl_out
);
rv32i_control_word ctrl;
rv32i_word alu;
rv32i_word data;

initial begin
    ctrl <= 0;
    alu <= 0;
    data <= 0;
end

always_ff @(posedge clk) begin
    if (rst) begin
        ctrl <= 0;
        alu <= 0;
        data <= 0;
    end
    else begin
        ctrl <= ctrl_in;
        alu <= alu_in;
        data <= data_rdata_in;
    end
end

always_comb begin
    ctrl_out = ctrl;
    alu_out = alu;
    data_rdata_out = data;
end

endmodule
