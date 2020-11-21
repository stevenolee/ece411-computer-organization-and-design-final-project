import rv32i_types::*;

module sreg_MEM_WB (
    input clk,
    input rst,
    input [31:0] alu_in,
    input [31:0] pc_in,
    input [31:0] data_rdata_in,
    input rv32i_control_word ctrl_in,
    input br_en_in,
    input data_resp,
    input [3:0] mem_byte_en_in,
    input logic stall,
    input [31:0] wdata_in,
    input hazard_MEM_WB,
    input [31:0] MEM_WB_data,

    output logic [31:0] alu_out,
    output logic [31:0] pc_out,
    output logic [31:0] data_rdata_out,
    output rv32i_control_word ctrl_out,
    output logic br_en_out,
    output logic [3:0] mem_byte_en_o,
    output logic [31:0] wdata_out
);
rv32i_control_word ctrl;
rv32i_word alu, pc, wdata;
rv32i_word data;
logic br_en;
logic [3:0] mem_byte_en;

always_ff @(posedge clk) begin
    if (rst) begin
        ctrl <= 0;
        alu <= 0;
        pc <= 0;
        data <= 0;
        br_en <= 0;
        mem_byte_en <= 0;
        wdata <= 0;
    end
    else if (!stall) begin
        ctrl <= ctrl_in;
        alu <= alu_in;
        pc <= pc_in;
        if(data_resp) begin
            if(hazard_MEM_WB)
                data <= MEM_WB_data;
            else
                data <= data_rdata_in;
        end
        br_en <= br_en_in;
        mem_byte_en <= mem_byte_en_in;
        wdata <= wdata_in;
    end
end

always_comb begin
    ctrl_out = ctrl;
    pc_out = pc;
    alu_out = alu;
    br_en_out = br_en;
    mem_byte_en_o = mem_byte_en;
    data_rdata_out = data;
    wdata_out = wdata;
end

endmodule
