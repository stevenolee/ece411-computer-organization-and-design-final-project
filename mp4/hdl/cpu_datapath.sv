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


endmodule : cpu_datapath