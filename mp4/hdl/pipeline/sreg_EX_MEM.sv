import rv32i_types::*;

module sreg_EX_MEM (
    input clk,
    input rst,
    input cmp_in,
    input [31:0] rs2_in,
    input [31:0] alu_in,
    input [31:0] pc_in,
    input rv32i_control_word ctrl_in,

    output logic [31:0] alu_out,
    output logic [3:0] mem_byte_enable_out,
    output logic br_en_out,
    output rv32i_control_word ctrl_out,
    output logic [31:0] rs2_out,
    output rv32i_word pc_out
);
/*** Variables ***/
rv32i_word pc, alu;
logic [3:0] mem_byte_enable;
logic br_en;
rv32i_control_word ctrl;
logic [31:0] rs2;

always_ff @(posedge clk) begin
    if (rst == 1'b1) begin
        alu <= 0;
        // br_en <= 0;
        ctrl <= 0;
        rs2 <= 0;
        pc <= 0;
    end else begin
        alu <= alu_in;
        // br_en <= cmp_in;
        ctrl <= ctrl_in;
        rs2 <= rs2_in;
        pc <= pc_in;
    end
end

always_comb begin
    /*** Set Defaults ***/
    // read = 1'b0;
    // write = 1'b0;
    mem_byte_enable_out = 4'b1111;
    // ctrl_out.pcmux_sel = pcmux::pc_plus4;
    br_en_out = 0;
    ctrl_out = ctrl;

    unique case (ctrl.opcode)
        op_load: begin
            case (load_funct3_t'(ctrl.funct3))
                lw: mem_byte_enable_out = 4'b1111;
                lh, lhu: begin
                    case (alu_in[1:0])
                        2'b00: mem_byte_enable_out = 4'b0011;
                        2'b01: mem_byte_enable_out = 4'b0110;
                        2'b10: mem_byte_enable_out = 4'b1100;
                        default: mem_byte_enable_out = 4'b0011;
                    endcase
                end
                lb, lbu: begin
                    case (alu_in[1:0])
                        2'b00: mem_byte_enable_out = 4'b0001;
                        2'b01: mem_byte_enable_out = 4'b0010;
                        2'b10: mem_byte_enable_out = 4'b0100;
                        2'b11: mem_byte_enable_out = 4'b1000;
                        default: mem_byte_enable_out = 4'b0001;
                    endcase
                end
                default: ;
            endcase
        end

        op_store: begin
            case (store_funct3_t'(ctrl.funct3))
                lw: mem_byte_enable_out = 4'b1111;
                lh, lhu: begin
                    case (alu_in[1:0])
                        2'b00: mem_byte_enable_out = 4'b0011;
                        2'b01: mem_byte_enable_out = 4'b0110;
                        2'b10: mem_byte_enable_out = 4'b1100;
                        default: mem_byte_enable_out = 4'b0011;
                    endcase
                end
                lb, lbu: begin
                    case (alu_in[1:0])
                        2'b00: mem_byte_enable_out = 4'b0001;
                        2'b01: mem_byte_enable_out = 4'b0010;
                        2'b10: mem_byte_enable_out = 4'b0100;
                        2'b11: mem_byte_enable_out = 4'b1000;
                        default: mem_byte_enable_out = 4'b0001;
                    endcase
                end
                default: ;
            endcase
        end

        op_br: begin
            br_en_out = cmp_in;
            ctrl_out.pcmux_sel = pcmux::pc_plus4;
            if(cmp_in)
                ctrl_out.pcmux_sel = pcmux::alu_out;
        end

        op_jal: begin
            ctrl_out.pcmux_sel = pcmux::alu_out;
            br_en_out = 1'b1;
        end

        op_jalr: begin
            ctrl_out.pcmux_sel = pcmux::alu_mod2;
            br_en_out = 1'b1;
        end

        default: begin
            mem_byte_enable_out = 4'b1111;
        end
    endcase
end

always_comb begin
    alu_out = alu;
    // Put this in the always_comb above because there's additional logic to this
    // ctrl_out = ctrl;
    // br_en_out = br_en;
    rs2_out = rs2;
    pc_out = pc;
end

endmodule
