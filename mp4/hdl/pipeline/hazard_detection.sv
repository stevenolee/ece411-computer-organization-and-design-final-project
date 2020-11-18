import rv32i_types::*;

module hazard_detection
(
    // inputs
    input rv32i_control_word ID_EX_ctrl,
    input rv32i_control_word EX_MEM_ctrl,
    input rv32i_control_word MEM_WB_ctrl,

    // outputs
    output logic hazard_ID_EX_rs1,
    output logic hazard_ID_EX_rs2,
    output logic hazard_ID_MEM_rs1,
    output logic hazard_ID_MEM_rs2,
    output logic hazard_load
);

function void set_defaults();
    hazard_ID_EX_rs1 = 1'b0;
    hazard_ID_EX_rs2 = 1'b0;
    hazard_ID_MEM_rs1 = 1'b0;
    hazard_ID_MEM_rs2 = 1'b0;
    hazard_load = 1'b0;
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

    hazard_load = (ID_EX_ctrl.opcode == op_load && (hazard_ID_EX_rs1 || hazard_ID_EX_rs2)) ? 1'b1 : 1'b0;
end

endmodule
