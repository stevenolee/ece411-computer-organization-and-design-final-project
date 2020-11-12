`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module cpu_datapath
(
    input clk,
    input rst,
	input mem_resp,
    input [31:0] mem_rdata,
    output logic mem_read,
    output logic mem_write,
    output rv32i_word mem_address,
    output [31:0] mem_wdata
	
	/* I Cache Ports */
    input inst_read,
    input inst_resp,
    input logic [31:0] inst_rdata,
    output logic [31:0] inst_addr,

    /* D Cache Ports */
    input data_resp,
    input [31:0] data_rdata,
    output logic data_read,
    output logic data_write,
    output logic [3:0] data_mbe,
    output logic [31:0] data_addr,
    output logic [31:0] data_wdata

    /* CPU <-- I-Cache */
    // input i_cache_hit,
    // input i_mem_resp,
    // input rv32i_word i_mem_rdata,
    // /* CPU <-- D-Cache */
    // input d_cache_hit,
    // input d_mem_resp,
    // input rv32i_word d_mem_rdata,
    // /* CPU --> I-Cache */
    // // No need for writing into i_cache
    // output logic i_mem_read,
    // output logic [3:0] i_mem_byte_en,
    // // output rv32i_word i_mem_wdata,
    // output rv32i_word i_mem_address,
    // /* CPU --> D-Cache */
    // output logic d_mem_read,
    // output logic d_mem_write,
    // output logic [3:0] d_mem_byte_en,
    // output rv32i_word d_mem_address,
    // output rv32i_word d_mem_wdata
);

/***************************** Variables *************************************/
rv32i_word pcmux_out, alumux1_out, alumux2_out, regfilemux_out, marmux_out, cmp_mux_out;
rv32i_word pc_out, rs1_out, rs2_out, EX_alu_out, MEM_WB_alu_out, EX_MEM_alu_out;
rv32i_word d_mem_address_raw, mem_wdata_full;
rv32i_word i_imm, s_imm, u_imm, j_imm, b_imm;
logic [1:0] i_mem_byte, d_mem_byte;
logic [1:0] EX_br_en, EX_MEM_br_en;
logic [31:0] IF_pc_out, IF_inst_addr;
logic [31:0] IF_ID_pc_out, IF_ID_inst_addr, ID_EX_pc_out;
rv32i_reg ID_rs1_out, ID_rs2_out, ID_EX_rs1_out, ID_EX_rs2_out, EX_rs2_out, EX_MEM_rs2_out;
logic [31:0] write_data, MEM_WB_data_out;
rv32i_control_word ID_ctrl, ID_EX_ctrl, EX_MEM_ctrl, MEM_WB_ctrl;
logic br_mispredict;

/*****************************************************************************/
/* * * NEED TO SET D MEM ADDRESS FROM STATE REGISTER (SUB CONTROL ROM) * * */
assign d_mem_address = {{d_mem_address_raw[31:2]}, {2'b0}};
assign d_mem_byte = d_mem_address_raw[1:0];
assign i_mem_address = {{pc_out[31:2]}, {2'b0}};
assign i_mem_byte = pc_out[1:0];

/************************* Stages/Stage Registers ********************************/
/*** IF ***/
IF stage_IF (
	// inputs
	.clk			(clk),
	.i_mem_address  (i_mem_address),
	.pcmux_sel		(EX_MEM_br_en),
	// outputs
	.inst_addr		(IF_inst_addr),
	.br_mispredict,
	.pc_out			(IF_pc_out)
);

/*** IF -> ID ***/

sreg_IF_ID sreg_IF_ID(
	// inputs 
	.clk			(clk),
	.rst			(rst),
	.inst_addr		(IF_inst_addr),
	.pc_in			(IF_pc_out),
	.br_mispredict,

	// outputs
	.addr_out		(IF_ID_addr_out),
	.pc_out			(IF_ID_pc_out)
);

/*** ID ***/
ID stage_ID (
	// inputs
	.clk			(clk),
	.load_regfile	(load_regfile),
	// .ir_out			(ir_out),
	.regfilemux_out	(regfilemux_out),
	.inst_read		(inst_read),
    .inst_resp		(inst_resp),
    .inst_rdata		(inst_rdata),
	
	// outputs
	.ctrl_word		(ID_ctrl),
	.rs1_out		(ID_rs1_out),
	.rs2_out		(ID_rs2_out)
);

/*** ID -> EX ***/
sreg_ID_EX sreg_ID_EX(
	// inputs
	.clk			(clk),
	.rst			(rst),
	.ctrl_in		(ID_ctrl),
	.pc_in			(IF_ID_pc_out),
	.br_mispredict,
	.rs1_in			(ID_rs1_out),
	.rs2_in			(ID_rs2_out),

	// outputs
	.ctrl_out		(ID_EX_ctrl),
	.pc_out			(ID_EX_pc_out),
	.rs1_out		(ID_EX_rs1_out),
	.rs2_out		(ID_EX_rs2_out)
);

/*** EX ***/
EX stage_EX (
	// inputs
	.clk			(clk),
	// .alumux1_sel	(alumux1_sel),
	// .alumux2_sel	(alumux2_sel),
	// .aluop			(aluop),
	// .ir_out			(ir_out),
	// .cmpop			(cmpop),
	// .cmpmux_sel		(cmpmux_sel),
	.ctrl_in		(ID_EX_ctrl),
	.rs1_out		(ID_EX_rs1_out),
	.rs2_out			(ID_EX_rs2_out),
	.pc_in			(ID_EX_pc_out),

	// outputs
	.alu_out		(EX_alu_out),
	.br_en			(EX_br_en),
	.rs2_out		(EX_rs2_out),
);

/*** EX -> MEM ***/
sreg_EX_MEM sreg_EX_MEM (
    //inputs
	.clk		(clk),
	.rst		(rst),
	.alu_in		(EX_alu_out),
	.br_en_in	(EX_br_en),
	.ctrl_in	(ID_EX_ctrl),
	.rs2_in		(EX_rs2_out),

    //outputs
	.alu_out	(EX_MEM_alu_out),
	.mem_byte_enable_out (d_mem_byte),
	.br_en_out	(EX_MEM_br_en),
	.ctrl_out	(EX_MEM_ctrl),
	.rs2_out	(EX_MEM_rs2_out)
);

/*** MEM ***/
// assign data_read = 
// assign data_write = 
// assign data_wdata = 
MEM stage_MEM (
	// inputs
	.clk,
	.rst,
	.addr_in	(EX_MEM_alu_out),
	// .mem_byte	(d_mem_byte),
	.pcmux_sel	(EX_MEM_ctrl.pcmux_sel),
	// outputs
	.addr_out	(data_addr),
	.write_data	(data_write),
	.read_data	(data_read),
	.pcmux_out
);


/*** MEM -> WB ***/
sreg_MEM_WB sreg_MEM_WB(
	.clk,
    .rst,
    .alu_in			(mem_addr_out),
    .data_rdata_in	(data_rdata),
    .ctrl_in		(EX_MEM_ctrl),
    .alu_out		(MEM_WB_alu_out),
    .data_rdata_out (MEM_WB_data_out),
    .ctrl_out		(MEM_WB_ctrl)
);

/*** WB ***/
WB stage_WB (
	// inputs
	.clk			(clk),
	.addr_in		(mem_addr_out),
	.read_data		(mem_read_data),
	.pc				(pc),
	.ir				(ir_out),
	.br_en			(br_en),
	.regfilemux_sel	(regfilemux_sel),

	// outputs 
	regfilemux_out	(regfilemux_out)
);
