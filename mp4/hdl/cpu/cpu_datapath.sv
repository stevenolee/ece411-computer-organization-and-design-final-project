`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module cpu_datapath
(
    input clk,
    input rst,
	
	/* I Cache Ports */
    input inst_resp,
    input logic [31:0] inst_rdata,
	output inst_read,
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
rv32i_word regfilemux_out;
rv32i_reg rd;
rv32i_word rs1_out, rs2_out, EX_alu_out, MEM_WB_alu_out, EX_MEM_alu_out, EX_MEM_pc_out, MEM_WB_pc_out;
logic [3:0] d_mem_byte, MEM_WB_mbe;
logic EX_cmp_out, EX_MEM_br_en;
logic [31:0] IF_pc_out, IF_ID_data_out;
logic [31:0] IF_ID_pc_out, IF_ID_inst_addr, ID_EX_pc_out;
rv32i_word ID_rs1_out, ID_rs2_out, ID_EX_rs1_out, ID_EX_rs2_out, EX_rs2_out, EX_MEM_rs2_out;
logic [31:0] MEM_WB_data_out;
rv32i_control_word ID_ctrl, ID_EX_ctrl, EX_MEM_ctrl, MEM_WB_ctrl;
pcmux::pcmux_sel_t pcmux_sel;
logic br_mispredict, MEM_BW_br_en, load_regfile;
logic hazard_ID_EX_rs1, hazard_ID_EX_rs2, hazard_ID_MEM_rs1, hazard_ID_MEM_rs2, hazard_load;

/*****************************************************************************/
/* * * NEED TO SET D MEM ADDRESS FROM STATE REGISTER (SUB CONTROL ROM) * * */
assign inst_addr = IF_pc_out;

/************************* Stages/Stage Registers ********************************/
/*** IF ***/
IF stage_IF (
	// inputs
	.clk			(clk),
	.rst			(rst),
	.pcmux_sel		(EX_MEM_ctrl.pcmux_sel), // This is here b/c we need to implement branch
	.br_take		(EX_MEM_br_en),
	.inst_resp,
	.alu_in			(EX_MEM_alu_out),
	// outputs
	.br_mispredict,
	.pc_out			(IF_pc_out)
);

/*** IF -> ID ***/

sreg_IF_ID sreg_IF_ID(
	// inputs 
	.clk			(clk),
	.rst			(rst),
	.inst_addr		(IF_pc_out),
	.pc_in			(IF_pc_out),
	.inst_rdata,
	.inst_resp,
	.br_mispredict,

	// outputs
	.pc_out			(IF_ID_pc_out),
	.data_out		(IF_ID_data_out)
);

/*** ID ***/
ID stage_ID (
	// inputs
	.clk			(clk),
	.rst			(rst),
	.load_regfile, // From MEM_WB 
	.regfilemux_in	(regfilemux_out),
    .inst_resp		(inst_resp),
    .inst_rdata		(IF_ID_data_out),
	.rd,
	
	// outputs
	.inst_read		(inst_read),
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
	.ctrl_in		(ID_EX_ctrl),
	.rs1_in			(ID_EX_rs1_out),
	.rs2_in			(ID_EX_rs2_out),
	.pc_in			(ID_EX_pc_out),

	.hazard_ID_EX_rs1,
	.hazard_ID_EX_rs2,
	.hazard_ID_MEM_rs1,
	.hazard_ID_MEM_rs2,
	.hazard_load,
	.hazard_MEM_data	(data_addr),
	.hazard_WB_data	(regfilemux_out),

	// outputs
	.alu_out		(EX_alu_out),
	.cmp_out		(EX_cmp_out),
	.rs2_out		(EX_rs2_out)
);

/*** EX -> MEM ***/
sreg_EX_MEM sreg_EX_MEM (
    //inputs
	.clk			(clk),
	.rst			(rst),
	.alu_in			(EX_alu_out),
	.cmp_in			(EX_cmp_out),
	.ctrl_in		(ID_EX_ctrl),
	.rs2_in			(EX_rs2_out),
	.pc_in			(ID_EX_pc_out),

    //outputs
	.alu_out			(EX_MEM_alu_out),
	.mem_byte_enable_out	(d_mem_byte),
	.br_en_out			(EX_MEM_br_en),
	.ctrl_out			(EX_MEM_ctrl),
	.rs2_out			(EX_MEM_rs2_out),
	.pc_out				(EX_MEM_pc_out)
);

/*** MEM ***/
// This module is empty because it only uses d_cache
// and send PCmux_sel back to IF
MEM stage_MEM (
	// inputs
	.clk,
	.rst,
	.addr_in			(EX_MEM_alu_out),
	.ctrl_in			(EX_MEM_ctrl),
	.mem_byte			(d_mem_byte),
	.pcmux_sel			(EX_MEM_ctrl.pcmux_sel),
	.wdata_in			(EX_MEM_rs2_out),

	// outputs, should be the same as inputs except addr_out
	.addr_out			(data_addr),
	.write_data			(data_write),
	.read_data			(data_read),
	.wdata_out			(data_wdata),
	.data_mbe
);


/*** MEM -> WB ***/
sreg_MEM_WB sreg_MEM_WB(
	// inputs
	.clk,
    .rst,
    .alu_in			(EX_MEM_alu_out),
    .data_rdata_in	(data_rdata),
    .ctrl_in		(EX_MEM_ctrl),
	.br_en_in 		(EX_MEM_br_en),
	.pc_in 			(EX_MEM_pc_out),
	.mem_byte_en_in	(d_mem_byte),
	.data_resp,

	// outputs
    .alu_out		(MEM_WB_alu_out),
    .data_rdata_out (MEM_WB_data_out),
    .ctrl_out		(MEM_WB_ctrl),
	.br_en_out		(MEM_BW_br_en),
	.pc_out			(MEM_WB_pc_out),
	.mem_byte_en_o	(MEM_WB_mbe)
);

/*** WB ***/
WB stage_WB (
	// inputs
	.clk,
	.rst,
	// .data_in		(mem_read_data),
	.data_in		(MEM_WB_data_out),	// there's no "mem_read_data" so i replaced it with data_rdata
	.alu_in			(MEM_WB_alu_out),
	.ctrl_in		(MEM_WB_ctrl),
	.pc_in			(MEM_WB_pc_out),
	.br_en			(MEM_BW_br_en),
	.mem_byte_enable(MEM_WB_mbe),

	// outputs 
	.regfilemux_o	(regfilemux_out),
	.load_regfile,
	.rd_reg			(rd)	
);

hazard_detection hazard_detection(
	// inputs
	.ID_EX_ctrl,
	.EX_MEM_ctrl,
	.MEM_WB_ctrl,
	
	// outputs
	.hazard_ID_EX_rs1,
	.hazard_ID_EX_rs2,
	.hazard_ID_MEM_rs1,
	.hazard_ID_MEM_rs2,
	.hazard_load
);

endmodule : cpu_datapath