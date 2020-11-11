`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module cpu_datapath
(
    input clk,
    input rst,
    /* CPU <-- I-Cache */
    // input i_cache_hit,
    input i_mem_resp,
    input rv32i_word i_mem_rdata,
    /* CPU <-- D-Cache */
    input d_cache_hit,
    input d_mem_resp,
    input rv32i_word d_mem_rdata,
    /* CPU --> I-Cache */
    // No need for writing into i_cache
    output logic i_mem_read,
    output logic [3:0] i_mem_byte_en,
    output rv32i_word i_mem_wdata,
    output rv32i_word i_mem_address,
    /* CPU --> D-Cache */
    output logic d_mem_read,
    output logic d_mem_write,
    output logic [3:0] d_mem_byte_en,
    output rv32i_word d_mem_address,
    output rv32i_word d_mem_wdata
);

/***************************** Variables *************************************/
rv32i_word pcmux_out, alumux1_out, alumux2_out, regfilemux_out, marmux_out, cmp_mux_out;
rv32i_word pc_out, rs1_out, rs2_out, alu_out;
rv32i_word d_mem_address_raw, mem_wdata_full;
rv32i_word i_imm, s_imm, u_imm, j_imm, b_imm;
logic [1:0] d_mem_byte;

/*****************************************************************************/
assign d_mem_address = {{d_mem_address_raw[31:2]}, {2'b0}};
assign d_mem_byte = {30'b0, d_mem_address_raw[1:0]};
assign i_mem_address = {{pc_out[31:2]}, {2'b0}};
assign i_mem_address = {30'b0, pc_out[1:0]};

/***************************** Registers *************************************/
pc_register PC(
	.clk  	(clk),
    .rst 	(rst),
    .load 	(load_pc),
    .in   	(pcmux_out),
    .out  	(pc_out)
);

register MAR(
    .clk  	(clk),
    .rst 	(rst),
    .load 	(load_mar),
    .in   	(marmux_out),
    .out  	(d_mem_address_raw)
);

register mem_data_out(
	.clk  	(clk),
    .rst 	(rst),
    .load 	(load_data_out),
    .in   	(rs2_out),
    .out  	(mem_wdata_full)
);

alu ALU(
	.aluop	(aluop),
	.a		(alumux1_out),
	.b 		(alumux2_out),
	.f		(alu_out)
);

regfile regfile(
	.clk	(clk),
    .rst	(rst),
    .load	(load_regfile),
	.in		(regfilemux_out),
	.src_a	(rs1),
	.src_b	(rs2),
	.dest	(rd),
	.reg_a	(rs1_out),
	.reg_b	(rs2_out)
);

cmp CMP(
	.clk	(clk),
    .rst	(rst),
	.cmpop	(cmpop),
	.a		(rs1_out),
	.b		(cmp_mux_out),
    .br_en	(br_en)
);

/******************************** Muxes **************************************/
always_comb begin : MUXES
    // We provide one (incomplete) example of a mux instantiated using
    // a case statement.  Using enumerated types rather than bit vectors
    // provides compile time type safety.  Defensive programming is extremely
    // useful in SystemVerilog.  In this case, we actually use
    // Offensive programming --- making simulation halt with a fatal message
    // warning when an unexpected mux select value occurs
	pcmux_out = pc_out + 4; 
	marmux_out = pc_out;
	cmp_mux_out = rs2_out; 
	alumux1_out = rs1_out; 
	alumux2_out = i_imm; 
	regfilemux_out = alu_out; 
    d_mem_byte_en = 4'b1111;

    unique case (d_mem_byte) 
        2'b00:
    endcase

    unique case (pcmux_sel)
        pcmux::pc_plus4: pcmux_out = pc_out + 4;
        pcmux::alu_out:	pcmux_out = alu_out;
		pcmux::alu_mod2: pcmux_out = {alu_out[31:1], 1'b0}; // ~(alu_out[0] && 1'b0); // 
        default: `BAD_MUX_SEL;
    endcase

	unique case (marmux_sel) // marmux
		marmux::pc_out: marmux_out = pc_out;
		marmux::alu_out: marmux_out = alu_out;
		default: begin 
			`BAD_MUX_SEL;
		end
	endcase

	unique case	(cmpmux_sel) // cmpmux
		cmpmux::rs2_out: cmp_mux_out = rs2_out;
		cmpmux::i_imm: cmp_mux_out = i_imm;
		default: `BAD_MUX_SEL;
	endcase

	unique case (alumux1_sel) // alumux1
		alumux::rs1_out: alumux1_out = rs1_out;
		alumux::pc_out: alumux1_out = pc_out;
		default: `BAD_MUX_SEL;
	endcase

	unique case (alumux2_sel) // alumux2
		alumux::i_imm: alumux2_out = i_imm;
		alumux::u_imm: alumux2_out = u_imm;
		alumux::b_imm: alumux2_out = b_imm;
		alumux::s_imm: alumux2_out = s_imm;
		alumux::j_imm: alumux2_out = j_imm;
		alumux::rs2_out: alumux2_out = rs2_out;
		default: `BAD_MUX_SEL;
	endcase
 
	unique case (regfilemux_sel) // regfilemux
		regfilemux::alu_out: regfilemux_out = alu_out;
		regfilemux::br_en: regfilemux_out = {31'b0000000000000000000000000000000,br_en};
		regfilemux::u_imm: regfilemux_out = u_imm;
		regfilemux::lw: regfilemux_out = mdrreg_out;
		regfilemux::pc_plus4: regfilemux_out = pc_out + 4;
		regfilemux::lb: begin
			unique case (mem_byte_enable)
				4'b0001: regfilemux_out = {{24{mdrreg_out[7]}}, mdrreg_out[7:0]};
				4'b0010: regfilemux_out = {{24{mdrreg_out[15]}}, mdrreg_out[15:8]};
				4'b0100: regfilemux_out = {{24{mdrreg_out[23]}}, mdrreg_out[23:16]};
				4'b1000: regfilemux_out = {{24{mdrreg_out[31]}}, mdrreg_out[31:24]};
				default: regfilemux_out = {{24{mdrreg_out[7]}}, mdrreg_out[7:0]};
			endcase
		end
		regfilemux::lbu: begin
			unique case (mem_byte_enable)
				4'b0001: regfilemux_out = {24'b0, mdrreg_out[7:0]};
				4'b0010: regfilemux_out = {24'b0, mdrreg_out[15:8]};
				4'b0100: regfilemux_out = {24'b0, mdrreg_out[23:16]};
				4'b1000: regfilemux_out = {24'b0, mdrreg_out[31:24]};
				default: regfilemux_out = {24'b0, mdrreg_out[7:0]};
			endcase
		end
		regfilemux::lh: begin
			unique case (mem_byte_enable)
				4'b0011: regfilemux_out = {{16{mdrreg_out[15]}}, mdrreg_out[15:0]};
				4'b1100: regfilemux_out = {{16{mdrreg_out[31]}}, mdrreg_out[31:16]};
				default: regfilemux_out = {{16{mdrreg_out[15]}}, mdrreg_out[15:0]};
			endcase
		end
		regfilemux::lhu: begin
			unique case (mem_byte_enable)
				4'b0011: regfilemux_out = {16'b0, mdrreg_out[15:0]};
				4'b1100: regfilemux_out = {16'b0, mdrreg_out[31:16]};
				default: regfilemux_out = {16'b0, mdrreg_out[15:0]};
			endcase
		end
		default: `BAD_MUX_SEL;
	endcase 

	unique case (mem_byte_enable) // mem_data_out
		4'b1111: mem_wdata = mem_wdata_full;
		4'b0011: mem_wdata = {16'b0, mem_wdata_full[15:0]};
		// 4'b0110: mem_wdata = {8'b0, mem_wdata_full[23:8], 8'b0};
		4'b1100: mem_wdata = {mem_wdata_full[31:16], 16'b0};
		4'b0001: mem_wdata = {24'b0, mem_wdata_full[7:0]};
		4'b0010: mem_wdata = {16'b0, mem_wdata_full[15:8], 8'b0};
		4'b0100: mem_wdata = {8'b0, mem_wdata_full[23:16], 16'b0};
		4'b1000: mem_wdata = {mem_wdata_full[31:24], 24'b0};
		default: mem_wdata = mem_wdata_full;
	endcase
end

endmodule : cpu_datapath