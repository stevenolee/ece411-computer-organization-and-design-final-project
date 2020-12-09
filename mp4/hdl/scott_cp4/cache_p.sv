module cache_p (
    input clk,
    input rst,
    /* Physical memory signals */
    input logic pmem_resp,
    input logic [255:0] pmem_rdata,
    output logic [31:0] pmem_address,
    output logic [31:0] mem_byte_enable,
    output logic [255:0] pmem_wdata,
    output logic pmem_read,
    output logic pmem_write,

    /* CPU memory signals */
    input logic mem_read,
    input logic mem_write,
    input logic stall_EX,
    input logic [3:0] mem_byte_enable_cpu,
    input logic [31:0] mem_address,
    input logic [31:0] mem_wdata_cpu,
    input logic branch_i,
    output logic mem_resp,
    output logic [31:0] mem_rdata_cpu,
    output logic [31:0] address_o,
    output logic stall_cache
);
logic [255:0] mem_wdata;
logic [255:0] mem_rdata;
logic [31:0] mem_byte_en_i;
logic load, load_lru, address_sel, access_sel, cache_hit, dirty;
logic cache_read, cache_write;

cache_p_control cache_p_control (
    .*,
    .stall          (stall_cache),
    .pmem_resp,
    .mem_read       (cache_read),
    .mem_write      (cache_write),
    .dirty,
    .hit            (cache_hit),
    .load,
    .access_sel,
    .load_lru,
    .pmem_read,
    .pmem_write,
    .address_sel,                       // If 0, then use CPU address, if 1, use cache_address
    .mem_resp
);

cache_p_datapath cache_p_datapath(
    .*,
    .stall          (stall_cache || stall_EX),
    .load,
    .load_lru,
    .address_sel,
    .access_sel,

    .cache_hit,
    .dirty,
    .write_o        (cache_write),
    .read_o         (cache_read),
    .mem_byte_en_o  (mem_byte_enable)
);

p_line_adapter bus (
    .mem_wdata_line         (mem_wdata),            // Outputted to Cache
    .mem_rdata_line         (mem_rdata),
    .mem_wdata              (mem_wdata_cpu),
    .mem_rdata              (mem_rdata_cpu),        // Outputted to the CPU
    .mem_byte_enable        (mem_byte_enable_cpu),  // 4 bit mem_byte_enable
    .mem_byte_enable_line   (mem_byte_en_i),        // Uses address to expand
    .address                (mem_address),          // Sets mem_byte enable for reads and writes, but also for rdata
    .address_rdata          (address_o)
);

endmodule : cache_p