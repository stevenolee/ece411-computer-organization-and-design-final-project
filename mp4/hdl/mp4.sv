import rv32i_types::*;

module mp4(
    input clk,
    input rst,
    
    /* Burst Memory Ports */
//    input mem_resp,
//    input [63:0] mem_rdata,
//    output logic mem_read,
//    output logic mem_write,
//    output logic [31:0] mem_addr,
//    output logic [63:0] mem_wdata,

    /* I Cache Ports */
    input inst_resp,
    input logic [31:0] inst_rdata,
    output logic inst_read,
    output logic [31:0] inst_addr,

    /* D Cache Ports */
    input data_resp,
    input [31:0] data_rdata,
    output logic data_read,
    output logic data_write,
    output logic [3:0] data_mbe,
    output logic [31:0] data_addr,
    output logic [31:0] data_wdata
);
/*** Variables ***/
//logic i_mem_resp, i_mem_read, d_mem_resp, d_mem_read, d_mem_write, d_cache_hit;
//logic [3:0] i_mem_byte_en, d_mem_byte_en;
//logic [31:0] i_mem_rdata, i_mem_address, d_mem_rdata, d_mem_wdata, d_mem_address;

cpu_datapath cpu_datapath
(
    .clk,
    .rst,
    // .mem_resp,
    // .mem_rdata,
    // .mem_read,
    // .mem_write,
    // .mem_address,
    // .mem_wdata,
    /*** I-cache magic memory ports ***/
    .inst_read,
    .inst_resp,
    .inst_rdata,
    .inst_addr,
    /* D Cache Ports */
    .data_resp,
    .data_rdata,
    .data_read,
    .data_write,
    .data_mbe,
    .data_addr,
    .data_wdata
    
    
    
    /*** Cache Signals ***/
    // .i_mem_resp,
    // .i_mem_rdata,
    // .d_cache_hit,
    // .d_mem_resp,
    // .d_mem_rdata,
    // .i_mem_read,
    // .i_mem_byte_en,
    // .i_mem_wdata,
    // .i_mem_address,
    // .d_mem_read,
    // .d_mem_write,
    // .d_mem_byte_en,
    // .d_mem_address,
    // .d_mem_wdata
);

// cache i_cache
// (
//     .*,
//     .mem_read(i_mem_read),
//     .mem_write(1'b0),
//     .mem_address(i_mem_address),
//     .mem_resp(i_mem_resp),
//     .mem_rdata(i_mem_rdata),
//     .mem_wdata(32'b0),
//     .mem_byte_enable(i_mem_byte_en),
//     .mem_rdata(i_mem_rdata),
//     .mem_wdata(i_mem_wdata),
//     .mem_resp(i_mem_resp),
//     .mem_read(i_mem_read), // Maybe connect directly to cacheline adapter
//     .mem_write(i_mem_write),
//     .mem_address(i_mem_address) // You could also connect the CPU address directly to the cacheline_adapter
// );

// cache d_cache
// (
//     .*,
//     .mem_read(d_mem_read),
//     .mem_write(d_mem_write),
//     .mem_address(d_mem_address),
//     .mem_resp(d_mem_resp),
//     .mem_rdata(d_mem_rdata),
//     .mem_wdata(d_mem_wdata),
//     .mem_byte_enable(d_mem_byte_en),
//     .mem_rdata(d_mem_rdata),
//     .mem_wdata(d_mem_wdata),
//     .mem_resp(d_mem_resp),
//     .mem_read(d_mem_read),
//     .mem_write(d_mem_write),
//     .mem_address(d_mem_address) 
// );

endmodule : mp4
