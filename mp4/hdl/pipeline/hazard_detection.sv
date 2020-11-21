`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module hazard_detection
(
    // inputs
    input rv32i_control_word ID_EX_ctrl,
    input rv32i_control_word EX_MEM_ctrl,
    input rv32i_control_word MEM_WB_ctrl,
    
    input [31:0] data_in,
    input EX_MEM_br_en,
    input [31:0] EX_MEM_alu_out,
    input [31:0] EX_MEM_pc_out,
    input [3:0] data_mbe,
    input [31:0] WB_data,

    input [31:0] data_addr,
    input [31:0] MEM_WB_wdata,
    input [31:0] MEM_WB_alu_out,
    input data_read_in,

    // outputs
    output logic hazard_ID_EX_rs1,
    output logic hazard_ID_EX_rs2,
    output logic hazard_ID_MEM_rs1,
    output logic hazard_ID_MEM_rs2,
    output logic hazard_MEM_WB,
    output rv32i_word hazard_MEM_data,
    output rv32i_word hazard_WB_data,
    output rv32i_word MEM_WB_data,
    output logic data_read
);

logic stall;

function void set_defaults();
    hazard_ID_EX_rs1 = 1'b0;
    hazard_ID_EX_rs2 = 1'b0;
    hazard_ID_MEM_rs1 = 1'b0;
    hazard_ID_MEM_rs2 = 1'b0;
    hazard_MEM_data = 32'b0;
    hazard_WB_data = 32'b0;
    stall = 1'b0;
    data_read = data_read_in;
    MEM_WB_data = MEM_WB_wdata;
    hazard_MEM_WB = 1'b0;
endfunction

always_comb
begin: hazard_detection
    set_defaults();
    /* need ID_EX_ctrl, EX_MEM_ctrl, MEM_WB_ctrl */
    if(ID_EX_ctrl.rs1 == EX_MEM_ctrl.rd && ID_EX_ctrl.rs1 != 0) begin
        unique case (ID_EX_ctrl.opcode)
            op_imm: hazard_ID_EX_rs1 = 1'b1;
            op_load: hazard_ID_EX_rs1 = 1'b1;
            op_store: hazard_ID_EX_rs1 = 1'b1;
            op_jalr: hazard_ID_EX_rs1 = 1'b1;
            op_reg: hazard_ID_EX_rs1 = 1'b1;
            op_br: hazard_ID_EX_rs1 = 1'b1;
            default: ;
        endcase
    end

    // hazard_ID_EX_rs1 = (ID_EX_ctrl.rs1 == EX_MEM_ctrl.rd && ID_EX_ctrl.rs1 != 0) ? 1'b1 : 1'b0;
    if(ID_EX_ctrl.rs2 == EX_MEM_ctrl.rd && ID_EX_ctrl.rs2 != 0) begin
        unique case (ID_EX_ctrl.opcode)
            op_reg: hazard_ID_EX_rs2 = 1'b1;
            op_br: hazard_ID_EX_rs2 = 1'b1;
            default: ;
        endcase
    end

    // Determine to set mem_hazard_data
    if(hazard_ID_EX_rs1 || hazard_ID_EX_rs2) begin
        unique case (EX_MEM_ctrl.regfilemux_sel)
            regfilemux::alu_out: hazard_MEM_data = EX_MEM_alu_out;
            regfilemux::br_en: hazard_MEM_data = {31'b0000000000000000000000000000000, EX_MEM_br_en};
            regfilemux::u_imm: hazard_MEM_data = EX_MEM_ctrl.u_imm;
            regfilemux::lw: hazard_MEM_data = data_in;
            regfilemux::pc_plus4: hazard_MEM_data = EX_MEM_pc_out + 4;
            regfilemux::lb: begin
                unique case (data_mbe)
                    4'b0001: hazard_MEM_data = {{24{data_in[7]}}, data_in[7:0]};
                    4'b0010: hazard_MEM_data = {{24{data_in[15]}}, data_in[15:8]};
                    4'b0100: hazard_MEM_data = {{24{data_in[23]}}, data_in[23:16]};
                    4'b1000: hazard_MEM_data = {{24{data_in[31]}}, data_in[31:24]};
                    default: hazard_MEM_data = {{24{data_in[7]}}, data_in[7:0]};
                endcase
            end
            regfilemux::lbu: begin
                unique case (data_mbe)
                    4'b0001: hazard_MEM_data = {24'b0, data_in[7:0]};
                    4'b0010: hazard_MEM_data = {24'b0, data_in[15:8]};
                    4'b0100: hazard_MEM_data = {24'b0, data_in[23:16]};
                    4'b1000: hazard_MEM_data = {24'b0, data_in[31:24]};
                    default: hazard_MEM_data = {24'b0, data_in[7:0]};
                endcase
            end
            regfilemux::lh: begin
                unique case (data_mbe)
                    4'b0011: hazard_MEM_data = {{16{data_in[15]}}, data_in[15:0]};
                    4'b1100: hazard_MEM_data = {{16{data_in[31]}}, data_in[31:16]};
                    default: hazard_MEM_data = {{16{data_in[15]}}, data_in[15:0]};
                endcase
            end
            regfilemux::lhu: begin
                unique case (data_mbe)
                    4'b0011: hazard_MEM_data = {16'b0, data_in[15:0]};
                    4'b1100: hazard_MEM_data = {16'b0, data_in[31:16]};
                    default: hazard_MEM_data = {16'b0, data_in[15:0]};
                endcase
            end
            default: `BAD_MUX_SEL;
        endcase
    end

    // hazard_ID_EX_rs2 = (ID_EX_ctrl.rs2 == EX_MEM_ctrl.rd) ? 1'b1 : 1'b0;
    if(ID_EX_ctrl.rs1 == MEM_WB_ctrl.rd && ID_EX_ctrl.rs1 != 0) begin
        unique case (ID_EX_ctrl.opcode)
            op_imm: hazard_ID_MEM_rs1 = 1'b1;
            op_load: hazard_ID_MEM_rs1 = 1'b1;
            op_store: hazard_ID_MEM_rs1 = 1'b1;
            op_jalr: hazard_ID_MEM_rs1 = 1'b1;
            op_reg: hazard_ID_MEM_rs1 = 1'b1;
            op_br: hazard_ID_MEM_rs1 = 1'b1;
            default: ;
        endcase
    end

    // hazard_ID_MEM_rs2 = (ID_EX_ctrl.rs2 == MEM_WB_ctrl.rd) ? 1'b1 : 1'b0;
    if(ID_EX_ctrl.rs2 == MEM_WB_ctrl.rd && ID_EX_ctrl.rs2 != 0) begin
        unique case (ID_EX_ctrl.opcode)
            op_reg: hazard_ID_MEM_rs2 = 1'b1;
            op_br: hazard_ID_MEM_rs2 = 1'b1;
            default: ;
        endcase
    end

    // Determine to set mem_hazard_data
    if(hazard_ID_MEM_rs1 || hazard_ID_MEM_rs2) begin
        hazard_WB_data = WB_data;
    end

    if(data_read_in) begin
        if((MEM_WB_ctrl.data_read || MEM_WB_ctrl.data_write) && data_addr == MEM_WB_alu_out) begin
            data_read = 1'b0;
            hazard_MEM_WB = 1'b1;
        end
    end
    
    // stall = (EX_MEM_ctrl.opcode == op_load && (hazard_ID_EX_rs1 || hazard_ID_EX_rs2)) ? 1'b1 : 1'b0;
end

endmodule
