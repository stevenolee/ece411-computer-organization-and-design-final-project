import rv32i_types::*;

module sreg_MEM_WB (
    input clk,
    input rst,
    input [31:0] alu_in,
    input [31:0] pc_in,
    input [31:0] data_rdata_in,
    input rv32i_control_word ctrl_in,
    input br_en_in,
    input [3:0] mem_byte_en_in,

    output logic [31:0] alu_out,
    output logic [31:0] pc_out,
    output logic [31:0] data_rdata_out,
    output rv32i_control_word ctrl_out,
    output logic br_en_out,
    output logic [3:0] mem_byte_en_o
);
rv32i_control_word ctrl;
rv32i_word alu, pc;
rv32i_word data;
logic br_en;
logic [3:0] mem_byte_en;

initial begin
    ctrl <= 0;
    alu <= 0;
    pc <= 0;
    data <= 0;
    br_en <= 0;
    mem_byte_en <= 0;
end

always_ff @(posedge clk) begin
    if (rst) begin
        ctrl <= 0;
        alu <= 0;
        pc <= 0;
        data <= 0;
        br_en <= 0;
        mem_byte_en <= 0;
    end
    else begin
        ctrl <= ctrl_in;
        alu <= alu_in;
        pc <= pc_in;
        data <= data_rdata_in;
        br_en <= br_en_in;
        mem_byte_en <= mem_byte_en_in;
    end
end

always_comb begin
    ctrl_out = ctrl;
    pc_out = pc;
    alu_out = alu;
    data_rdata_out = data;
    br_en_out = br_en;
    mem_byte_en_o = mem_byte_en;
end

endmodule
