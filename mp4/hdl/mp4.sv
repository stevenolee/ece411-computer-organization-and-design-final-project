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
    output logic [63:0] mem_wdata
);
/*** CPU <--> Cache Variables ***/
logic inst_resp, inst_read, data_resp, data_read, data_write, branch_i;
logic [31:0] inst_addr, inst_rdata, inst_pc, data_addr, data_rdata, data_wdata;
logic [3:0] data_mbe;
logic i_stall_cache, d_stall_cache;
/*** Cache <--> Arbiter Variables ***/
logic i_mem_resp, i_mem_read, i_mem_write, d_mem_resp, d_mem_read, d_mem_write;
logic [31:0] i_mem_address, d_mem_address, i_mem_byte_en, d_mem_byte_en;
logic [255:0] i_mem_rdata, i_mem_wdata, d_mem_rdata, d_mem_wdata;
/*** CPU <--> Arbiter Variables ***/
logic stall, stall_EX;
/*** arbiter <--> L2 ***/
logic l2_resp_o, l2_resp_i, l2_read_o, l2_write_o, l2_read_i, l2_write_i;
logic [31:0] l2_mem_byte_en;
logic [31:0] ar_addr_o, l2_addr_o, data_address_o;
logic [255:0] l2_mem_rdata, l2_mem_wdata, l2_rdata_o, l2_wdata_i;

cpu_datapath cpu_datapath
(
    .clk,
    .rst,

    /* Arbiter Ports */
    .stall,

    /*** I-cache magic memory ports ***/
    .inst_read,
    .inst_resp,
    .inst_rdata,
    .inst_pc,
    .inst_addr,
    .br_mispredict  (branch_i),
    /* D Cache Ports */
    .data_resp,
    .data_rdata,
    .data_read,
    .data_write,
    .data_mbe,
    .data_addr,
    .data_wdata,
    .stall_c        (i_stall_cache || d_stall_cache),
    .stall_EX
);

cache_p i_cache
(
    .*,
    .mem_read           (inst_read),
    .mem_write          (1'b0),
    .mem_address        (inst_addr),
    .mem_resp           (inst_resp),
    .stall_EX           (stall_EX || d_stall_cache),
    .branch_i,
    .mem_rdata_cpu      (inst_rdata),
    .mem_wdata_cpu      (32'b0),
    .mem_byte_enable_cpu(4'b1111),
    .pmem_rdata         (i_mem_rdata),
    .pmem_wdata         (i_mem_wdata),
    .pmem_resp          (i_mem_resp),
    .pmem_read          (i_mem_read),
    .pmem_write         (i_mem_write),
    .pmem_address       (i_mem_address),
    .mem_byte_enable    (i_mem_byte_en),
    .stall_cache        (i_stall_cache),
    .address_o          (inst_pc),
    .prefetch           (1'b1)
);

cache_p d_cache
(
    .*,
    .stall_EX           (1'b0),
    .mem_read           (data_read),
    .mem_write          (data_write),
    .mem_address        (data_addr),
    .mem_resp           (data_resp),
    .mem_rdata_cpu      (data_rdata),
    .mem_wdata_cpu      (data_wdata),
    .mem_byte_enable_cpu(data_mbe),
    .pmem_rdata         (d_mem_rdata),
    .pmem_wdata         (d_mem_wdata),
    .pmem_resp          (d_mem_resp),
    .pmem_read          (d_mem_read),
    .pmem_write         (d_mem_write),
    .pmem_address       (d_mem_address),
    .mem_byte_enable    (d_mem_byte_en),
    .stall_cache        (d_stall_cache),
    .address_o          (data_address_o),
    .branch_i           (1'b0),
    .prefetch           (1'b1)
);

arbiter arbiter(
    .clk,
    .reset_n            (rst),
    .d_line_i           (d_mem_wdata),
    .d_line_o           (d_mem_rdata),
    .d_address          (d_mem_address),
    .d_read_i           (d_mem_read),
    .d_write_i          (d_mem_write),
    .d_mem_byte_en      (32'hFFFFFFFF),     // L1 <--> L2 should have all 1 mask right?
    .d_resp_o           (d_mem_resp),
    .i_line_o           (i_mem_rdata),
    .i_address          (i_mem_address),
    .i_read_i           (i_mem_read),
    .i_mem_byte_en      (32'hFFFFFFFF),     // L1 <--> L2 should have all 1 mask right?
    .i_resp_o           (i_mem_resp),
    .resp_i             (l2_resp_o),
    .data_i             (l2_rdata_o),
    .address_o          (ar_addr_o),
    .read_o             (l2_read_i),
    .write_o            (l2_write_i),
    .data_o             (l2_wdata_i),
    .mem_byte_en        (l2_mem_byte_en),
    .stall
);

cache l2_cache(
    .*,
    .mem_read           (l2_read_i),
    .mem_write          (l2_write_i),
    .mem_address        (ar_addr_o),
    .mem_resp           (l2_resp_o),
    .mem_rdata_l1       (l2_rdata_o),
    .mem_wdata_l1       (l2_wdata_i),
    .mem_byte_enable_l1 (l2_mem_byte_en),
    .pmem_rdata         (l2_mem_rdata),
    .pmem_wdata         (l2_mem_wdata),
    .pmem_resp          (l2_resp_i),
    .pmem_read          (l2_read_o),
    .pmem_write         (l2_write_o),
    .pmem_address       (l2_addr_o)
);

cacheline_adaptor cacheline_adaptor
(
    .clk,
    .reset      (rst),

    .line_i     (l2_mem_wdata),
    .line_o     (l2_mem_rdata),
    .address_i  (l2_addr_o),
    .read_i     (l2_read_o),
    .write_i    (l2_write_o),
    .resp_o     (l2_resp_i),

    .resp_i     (mem_resp),
    .burst_i    (mem_rdata),
    .burst_o    (mem_wdata),
    .address_o  (mem_addr),
    .read_o     (mem_read),
    .write_o    (mem_write)
);

endmodule : mp4
