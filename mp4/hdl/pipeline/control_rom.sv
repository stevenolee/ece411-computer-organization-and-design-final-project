import rv32i_types::*;

module control_rom (
    input rv32i_word instruction,
    output rv32i_control_word ctrl
);

    /*** signals that i needa set in this bih ***/
    // [x]  rv32i_opcode opcode;
    // [x]  alu_ops aluop;
    // [ ]  rv32i_word pc;
    // [ ]  logic regfilemux_sel;
    // [x]  logic load_regfile;
    // [x]  rv32i_reg rd;
    // [x]  rv32i_reg rs1;
    // [x]  rv32i_reg rs2;
    // [x]  rv32i_word ir_out;
    // [x]  logic [2:0] funct3;
    // [x]  logic [6:0] funct7;
    // [ ]  pcmux pcmux_sel;
    // [ ]  cmpmux cmpmux_sel;
    // [ ]  alumux alumux_sel;
    // [ ]  regfilemux regfilemux_sel;
    // [ ]  rv32i_mem_wmask mem_byte_enable;
    // [x]  rv32i_word i_imm;
    // [x]  rv32i_word s_imm;
    // [x]  rv32i_word b_imm;
    // [x]  rv32i_word u_imm;
    // [x]  rv32i_word j_imm;

    // added after implementing opcode decoding
    // [x]  load_pc;
    // alumux_sel_t alumux2_sel;


/***************************** Parse instruction *****************************/
assign ctrl.funct3 = instruction[14:12];
assign ctrl.funct7 = instruction[31:25];
assign ctrl.opcode = rv32i_opcode'(instruction[6:0]);
assign ctrl.i_imm = {{21{instruction[31]}}, instruction[30:20]};
assign ctrl.s_imm = {{21{instruction[31]}}, instruction[30:25], instruction[11:7]};
assign ctrl.b_imm = {{20{instruction[31]}}, instruction[7], instruction[30:25], instruction[11:8], 1'b0};
assign ctrl.u_imm = {instruction[31:12], 12'h000};
assign ctrl.j_imm = {{12{instruction[31]}}, instruction[19:12], instruction[20], instruction[30:21], 1'b0};
assign ctrl.rs1 = instruction[19:15];
assign ctrl.rs2 = instruction[24:20];
assign ctrl.rd = instruction[11:7];
// assign ir_out = instruction;


/*** Check opcode ***/ 
always_comb 
begin
    ctrl.load_pc = 1'b1;
    ctrl.load_regfile = 1'b1;
    ctrl.aluop = alu_ops'(ctrl.funct3);
    unique case (ctrl.opcode)
        op_imm:
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
        op_lui:
            begin
                ctrl.load_regfile = 1'b1;
                ctrl.load_pc = 1'b1;
                ctrl.regfilemux_sel = regfilemux::u_imm;
            end
        op_load:
            begin
                ctrl.aluop = alu_add;
                ctrl.data_read = 1'b1;
                // marmux_sel = marmux::alu_out;
            end
        op_store:
            begin 
                ctrl.alumux2_sel = alumux::s_imm;
                ctrl.aluop = alu_add;
                ctrl.data_write = 1'b1;
                // marmux_sel = marmux::alu_out;
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
    endcase


end



endmodule : control_rom
