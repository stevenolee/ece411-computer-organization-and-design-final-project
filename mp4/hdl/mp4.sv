import rv32i_types::*;

module mp4(
    input clk,
    input rst,
    input pmem_resp,
    input [63:0] pmem_rdata,
    output logic pmem_read,
    output logic pmem_write,
    output rv32i_word pmem_address,
    output [63:0] pmem_wdata
);
/*** Variables ***/
logic i_mem_resp, i_mem_read, d_mem_resp, d_mem_read, d_mem_write, d_cache_hit;
logic [3:0] i_mem_byte_en, d_mem_byte_en;
logic [31:0] i_mem_rdata, i_mem_address, d_mem_rdata, d_mem_wdata, d_mem_address;

/*** SIGNALS STILL TO CONNECT TO THE Arbiter ***/
logic i_pmem_resp, i_pmem_read, i_pmem_write, d_pmem_resp, d_pmem_read, d_pmem_write;
logic [31:0] i_pmem_rdata, i_pmem_wdata, i_pmem_address, d_pmem_rdata, d_pmem_wdata, d_pmem_address;
/*** END OF SIGNALS TO CONNECT TO WITH Arbiter ***/

cpu_datapath cpu_datapath
(
    .clk,
    .rst,
    .i_mem_resp,
    .i_mem_rdata,
    .d_cache_hit,
    .d_mem_resp,
    .d_mem_rdata,
    .i_mem_read,
    .i_mem_byte_en,
    .i_mem_wdata,
    .i_mem_address,
    .d_mem_read,
    .d_mem_write,
    .d_mem_byte_en,
    .d_mem_address,
    .d_mem_wdata
);

cache i_cache
(
    .*,
    .mem_read(i_mem_read),
    .mem_write(1'b0),
    .mem_address(i_mem_address),
    .mem_resp(i_mem_resp),
    .mem_rdata(i_mem_rdata),
    .mem_wdata(32'b0),
    .mem_byte_enable(i_mem_byte_en),
    .pmem_rdata(i_pmem_rdata),
    .pmem_wdata(i_pmem_wdata),
    .pmem_resp(i_pmem_resp),
    .pmem_read(i_pmem_read), // Maybe connect directly to cacheline adapter
    .pmem_write(i_pmem_write),
    .pmem_address(i_pmem_address) // You could also connect the CPU address directly to the cacheline_adapter
);

cache d_cache
(
    .*,
    .mem_read(d_mem_read),
    .mem_write(d_mem_write),
    .mem_address(d_mem_address),
    .mem_resp(d_mem_resp),
    .mem_rdata(d_mem_rdata),
    .mem_wdata(d_mem_wdata),
    .mem_byte_enable(d_mem_byte_en),
    .pmem_rdata(d_pmem_rdata),
    .pmem_wdata(d_pmem_wdata),
    .pmem_resp(d_pmem_resp),
    .pmem_read(d_pmem_read),
    .pmem_write(d_pmem_write),
    .pmem_address(d_pmem_address) 
);

endmodule : mp4
