import rv32i_types::*;

module mp4(
    input clk,
    input rst,
    
    /* Burst Memory Ports */
   input mem_resp,
   input [63:0] mem_rdata,
   output logic mem_read,
   output logic mem_write,
   output logic [31:0] mem_addr,
   output logic [63:0] mem_wdata,

    // /* I Cache Ports */
    // input inst_resp,
    // input logic [31:0] inst_rdata,
    // output logic inst_read,
    // output logic [31:0] inst_addr,

    // /* D Cache Ports */
    // input data_resp,
    // input [31:0] data_rdata,
    // output logic data_read,
    // output logic data_write,
    // output logic [3:0] data_mbe,
    // output logic [31:0] data_addr,
    // output logic [31:0] data_wdata
);
/*** CPU <--> Cache Variables ***/
logic inst_resp, inst_read, data_resp, data_read, data_write;
logic [31:0] inst_addr, inst_rdata, data_addr, data_rdata, data_wdata;
logic [3:0] data_mbe;
/*** Cache <--> Arbiter Variables ***/
logic i_mem_resp, i_mem_read, d_mem_resp, d_mem_read, d_mem_write;
logic [3:0] i_mem_byte_en, d_mem_byte_en;
logic [31:0] i_mem_rdata, i_mem_address, d_mem_rdata, d_mem_wdata, d_mem_address;
/*** CPU <--> Arbiter Variables ***/
logic stall;

cpu_datapath cpu_datapath
(
    .clk,
    .rst,
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
);

cache i_cache
(
    .*,
    .mem_read       (inst_read),
    .mem_write      (1'b0),
    .mem_address    (inst_addr),
    .mem_resp       (inst_resp),
    .mem_rdata      (inst_rdata),
    .mem_wdata      (32'b0),
    .mem_byte_enable(4'b1111),
    .pmem_rdata     (i_mem_rdata),
    .pmem_wdata     (i_mem_wdata),
    .pmem_resp      (i_mem_resp),
    .pmem_read      (i_mem_read), // Maybe connect directly to cacheline adapter
    .pmem_write     (i_mem_write),
    .pmem_address   (i_mem_address) // You could also connect the CPU address directly to the cacheline_adapter
);

cache d_cache
(
    .*,
    .mem_read       (data_read),
    .mem_write      (data_write),
    .mem_address    (data_addr),
    .mem_resp       (data_resp),
    .mem_rdata      (data_rdata),
    .mem_wdata      (data_wdata),
    .mem_byte_enable(data_mbe),
    .pmem_rdata     (d_mem_rdata),
    .pmem_wdata     (d_mem_wdata),
    .pmem_resp      (d_mem_resp),
    .pmem_read      (d_mem_read),
    .pmem_write     (d_mem_write),
    .pmem_address   (d_mem_address) 
);

arbiter arbiter(
    .
);

endmodule : mp4
