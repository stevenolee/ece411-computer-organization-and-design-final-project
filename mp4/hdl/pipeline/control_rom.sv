import rv32i_types::*;

module control_rom (
    input rv32i_word instruction,
    output rv32i_control_word ctrl
);

/***************************** Variables *****************************/
rv32i_word i_imm, s_imm, b_imm, u_imm, j_imm, ir_out;
rv32i_reg rd, rs1, rs2;
branch_funct3_t cmpop;
alu_ops aluop;
rv32i_opcode opcode;
logic [2:0] funct3;
logic [6:0] funct7;

/***************************** Assign is Necessary *****************************/
assign funct3 = instruction[14:12];
assign funct7 = instruction[31:25];
assign opcode = rv32i_opcode'(instruction[6:0]);
assign i_imm = {{21{instruction[31]}}, instruction[30:20]};
assign s_imm = {{21{instruction[31]}}, instruction[30:25], instruction[11:7]};
assign b_imm = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};
assign u_imm = {instruction[31:12], 12'h000};
assign j_imm = {{12{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0};
assign rs1 = instruction[19:15];
assign rs2 = instruction[24:20];
assign rd = instruction[11:7];
assign ir_out = instruction;
assign cmpop = branch_funct3_t'(instruction[14:12]);
assign aluop = alu_ops'(instruction[14:12]);

/***************************** Parse instruction *****************************/
function void set_defaults();
    ctrl.funct3 = funct3;
    ctrl.funct7 = funct7;
    ctrl.opcode = opcode;
    ctrl.i_imm = i_imm;
    ctrl.s_imm = s_imm;
    ctrl.b_imm = b_imm;
    ctrl.u_imm = u_imm;
    ctrl.j_imm = j_imm;
    ctrl.rs1 = rs1;
    ctrl.rs2 = rs2;
    ctrl.rd = rd;
    ctrl.ir_out = ir_out;
    ctrl.alumux1_sel = alumux::rs1_out;
    ctrl.alumux2_sel = alumux::i_imm;
    ctrl.pcmux_sel = pcmux::pc_plus4;
    ctrl.regfilemux_sel = regfilemux::alu_out;
    ctrl.cmpop = branch_funct3_t'(instruction[14:12]);
    ctrl.cmpmux_sel = cmpmux::rs2_out;
    ctrl.aluop = alu_ops'(instruction[14:12]);
    ctrl.load_regfile = 1'b0;
    ctrl.data_write = 1'b0;
    ctrl.data_read = 1'b0;
    ctrl.load_pc = 1'b0;

endfunction


/*** Check opcode ***/ 
always_comb 
begin : state_actions
    set_defaults();
    unique case (ctrl.opcode)
        op_imm: 
            begin
                ctrl.load_regfile = 1'b1;
                unique case (ctrl.funct3)	
                    slt: 
                        begin
                            ctrl.cmpop = blt;
                            ctrl.regfilemux_sel = regfilemux::br_en;
                            ctrl.cmpmux_sel = cmpmux::i_imm;
                        end 
                    sltu: 
                        begin
                            ctrl.cmpop = bltu;
                            ctrl.regfilemux_sel = regfilemux::br_en;
                            ctrl.cmpmux_sel = cmpmux::i_imm;
                        end
                    sr:    //check bit30 for logical/arithmetic
                        if (ctrl.funct7[5] == 0) 	// SRLI	
                            ctrl.aluop = alu_ops'(ctrl.funct3);
                        else 					// SRAI
                            ctrl.aluop = alu_sra;
                    default: ;	
                endcase
            end
        op_lui:
            begin
                ctrl.load_regfile = 1'b1;
                ctrl.load_pc = 1'b1;
                ctrl.regfilemux_sel = regfilemux::u_imm;
            end
        op_load:
            begin
                ctrl.load_regfile = 1'b1;
                ctrl.aluop = alu_add;
                ctrl.data_read = 1'b1;
                unique case(load_funct3_t'(funct3))
                    lw: ctrl.regfilemux_sel = regfilemux::lw;
                    lh: ctrl.regfilemux_sel = regfilemux::lh;
                    lhu: ctrl.regfilemux_sel = regfilemux::lhu;
                    lb: ctrl.regfilemux_sel = regfilemux::lb;
                    lbu: ctrl.regfilemux_sel = regfilemux::lbu;
                    default: ctrl.regfilemux_sel = regfilemux::lw;
                endcase
            end
        op_store:
            begin 
                ctrl.alumux2_sel = alumux::s_imm;
                ctrl.aluop = alu_add;
                ctrl.data_write = 1'b1;
            end
        op_auipc:
            begin
                ctrl.alumux1_sel = alumux::pc_out;
                ctrl.alumux2_sel = alumux::u_imm;
                ctrl.load_regfile = 1'b1;
                ctrl.load_pc = 1'b1;
                ctrl.aluop = alu_add;
            end
        op_br:
            begin
                unique case (branch_funct3_t'(instruction[14:12]))
                    beq: ctrl.cmpop = beq;
                    bne: ctrl.cmpop = bne;
                    blt: ctrl.cmpop = blt;
                    bge: ctrl.cmpop = bge;
                    bltu: ctrl.cmpop = bltu;
                    bgeu: ctrl.cmpop = bgeu;
                    default: $display("Invalid CMP opcode");
                endcase
                ctrl.cmpmux_sel = cmpmux::rs2_out;
				ctrl.pcmux_sel = pcmux::pc_plus4;				
				ctrl.load_pc = 1'b1;
				ctrl.alumux1_sel = alumux::pc_out;
				ctrl.alumux2_sel = alumux::b_imm;
				ctrl.aluop = alu_add;
			end
        op_reg:
            begin
				ctrl.load_regfile = 1'b1;
				ctrl.load_pc = 1'b1;
				ctrl.alumux1_sel = alumux::rs1_out;
				ctrl.alumux2_sel = alumux::rs2_out;
				ctrl.aluop = alu_ops'(ctrl.funct3);
				unique case (ctrl.funct3)
					add:   //check bit30 for sub if op_reg opcode
						begin
							if (ctrl.funct7[5] == 0)		// ADD
								ctrl.aluop  = alu_add;
							else
								ctrl.aluop = alu_sub;
						end			
					sll:  
						ctrl.aluop = alu_sll;
					axor: 
						ctrl.aluop = alu_xor;
					aor:  
						ctrl.aluop = alu_or;
					aand: 
						ctrl.aluop = alu_and;
					default: ;
				endcase
			 end
        op_jal:
            begin
				ctrl.aluop = alu_add;
				ctrl.alumux1_sel = alumux::pc_out;
				ctrl.alumux2_sel = alumux::j_imm;
				ctrl.load_pc = 1'b1;
				ctrl.pcmux_sel = pcmux::alu_out;
				ctrl.load_regfile = 1'b1;
    			ctrl.regfilemux_sel = regfilemux::pc_plus4;
			end
        op_jalr:
            begin
				ctrl.aluop = alu_add;
				ctrl.alumux1_sel = alumux::rs1_out;
				ctrl.alumux2_sel = alumux::i_imm;
				ctrl.load_regfile = 1'b1;
				ctrl.load_pc = 1'b1;
				ctrl.pcmux_sel = pcmux::alu_mod2;
    			ctrl.regfilemux_sel = regfilemux::pc_plus4;
			end
        // op_csr
        default: ;
    endcase

end



endmodule : control_rom
