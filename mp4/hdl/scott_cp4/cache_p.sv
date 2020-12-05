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
    input logic [3:0] mem_byte_enable_cpu,
    input logic [31:0] mem_address,
    input logic [31:0] mem_wdata_cpu,
    output logic mem_resp,
    output logic [31:0] mem_rdata_cpu,
    output logic stall_cache
);
logic [255:0] mem_wdata;
logic [255:0] mem_rdata;
// logic [31:0] mem_byte_enable;

cache_p_datapath cache_p_datapath(
    .*,
    .stall  (stall_cache)
);

line_adapter bus (
    .mem_wdata_line(mem_wdata),
    .mem_rdata_line(mem_rdata),
    .mem_wdata(mem_wdata_cpu),
    .mem_rdata(mem_rdata_cpu),
    .mem_byte_enable(mem_byte_enable_cpu),
    .mem_byte_enable_line(mem_byte_enable),
    .address(mem_address)
);

endmodule : cache_p