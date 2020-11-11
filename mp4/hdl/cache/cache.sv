/* MODIFY. Your cache design. It contains the cache
controller, cache datapath, and bus adapter. */
import rv32i_types::*;

module cache #(
    parameter s_offset = 5,
    parameter s_index  = 3,
    parameter s_tag    = 32 - s_offset - s_index,
    parameter s_mask   = 2**s_offset,
    parameter s_line   = 8*s_mask,
    parameter num_sets = 2**s_index
)
(
    input clk,
    input rst,

    /***** CPU *****/
    input mem_read,
    input mem_write,
    input rv32i_word mem_address,
    input [31:0] mem_wdata,
    input [3:0] mem_byte_enable,
    output [31:0] mem_rdata,
    output logic mem_resp,

    /***** CACHE ADAPTER *****/
    input pmem_resp,
    input logic [255:0] pmem_rdata,
    output logic pmem_read, // Maybe connect directly to cacheline adapter
    output logic pmem_write,
    output logic [255:0] pmem_wdata,
    output rv32i_word pmem_address // You could also connect the CPU address directly to the cacheline_adapter
);

/***** Variables *****/
logic dirty, hit, access_sel, load, read, load_lru, address_sel;
logic [31:0] mem_byte_enable256;
logic [255:0] cpu_data_i, mem_data_i;
logic [255:0] cache_data_o;

cache_control control
(
    .clk(clk),
    .rst(rst),
    .dirty,
    .hit,
    .access_sel,
    .load,
    .load_lru,
    .read,
    .mem_resp(pmem_resp),
    .mem_read(mem_read),
    .mem_write(mem_write),
    .mem_resp_o(mem_resp),
    .mem_read_o(pmem_read),
    .address_sel,
    .mem_write_o(pmem_write)
);

cache_datapath datapath
(
    .clk,
    .rst,
    .dirty,
    .hit,
    .access_sel,
    .address_sel,
    .load,
    .load_lru,
    .read,
    .cpu_data_in(mem_data_i),
    .cpu_data_out(cache_data_o),
    .mem_rdata(pmem_rdata),
    .mem_address_i(mem_address),
    .mem_address_o(pmem_address),
    .mem_wdata(pmem_wdata),
    .mem_byte_sel(mem_byte_enable256)
);
 
bus_adapter bus_adapter 
(
    .mem_wdata256(mem_data_i), // Out of bus
    .mem_rdata256(cache_data_o), // Into bus
    .mem_wdata, // Goes into the bus
    .mem_rdata, // Comes out of the bus
    .mem_byte_enable,
    .mem_byte_enable256,
    .address(mem_address)
); 

endmodule : cache
