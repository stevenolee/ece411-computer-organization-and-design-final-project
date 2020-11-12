/* MODIFY. The cache datapath. It contains the data,
valid, dirty, tag, and LRU arrays, comparators, muxes,
logic gates and other supporting logic. */
`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module cache_datapath #(
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
    input access_sel, // 0 is CPU, 1 is memory
    input address_sel, // 0 is CPU add, 1 is cache add
    input rv32i_word mem_address_i,
    input [255:0] mem_rdata,
    input [255:0] cpu_data_in,
    input load,
    input read,
    input load_lru,
    input [31:0] mem_byte_sel,
    /***** Cache Control *****/
    output logic hit,
    output logic dirty,
    /***** BUS / CPU *****/
    output logic [255:0] cpu_data_out,
    /***** Cache Adapter / MEMORY *****/
    output logic [255:0] mem_wdata,
    output rv32i_word mem_address_o
);
/************* VARIABLES *************/
logic lru_in, lru, load_0, load_1;
logic [s_index-1:0] index;
logic [s_tag-1:0] tag, tag_0, tag_1;
logic hit_0, hit_1, dirty_0, dirty_1;
logic [255:0] data_in, data_out_0, data_out_1;
logic [31:0] write_mask;

assign index = mem_address_i[7:5];
assign tag = mem_address_i[31:8];

/************* MUXES *************/
always_comb begin
    /* Initialize variables */
    hit = hit_0 || hit_1;
    lru_in = 1'b0;
    mem_wdata = data_out_0;
    cpu_data_out = data_out_0;
    mem_address_o = mem_address_i;
    write_mask = mem_byte_sel;
    dirty = 1'b0;
    load_0 = 1'b0;
    load_1 = 1'b0;

    /* * * Load DEMUX * * */
    unique case({hit_0, hit_1})
        2'b00: begin
            unique case(lru)
                1'b0: load_0 = load;
                1'b1: load_1 = load;
            endcase
        end
        2'b01: load_1 = load;
        2'b10: load_0 = load;
    endcase

    /* * * LRU array * * */
    unique case({hit_0, hit_1})
        2'b00: lru_in = ~lru;
        2'b01: lru_in = 1'b0;
        2'b10: lru_in = 1'b1;
        default: begin
        end
    endcase

    /* * * Dirty MUX * * */
    unique case(lru)
        1'b0: dirty = dirty_0;
        1'b1: dirty = dirty_1;
    endcase

    /* * * Mem_address_o MUX * * */
    unique case (address_sel)
        1'b0: mem_address_o = mem_address_i;
        1'b1: begin
            unique case(lru)
                1'b0: begin
                    mem_wdata = data_out_0;
                    mem_address_o = {{tag_0}, {index}, 5'b0};
                end
                1'b1: begin
                    mem_wdata = data_out_1;
                    mem_address_o = {{tag_1}, {index}, 5'b0};
                end
            endcase
        end
    endcase

    /* * * DATA OUT MUX * * */
    unique case({hit_0, hit_1})
        2'b00: begin
            cpu_data_out = mem_rdata;
            // unique case(lru)
            //     1'b0: begin
            //         mem_wdata = data_out_0;
            //     end
            //     1'b1: begin
            //         mem_wdata = data_out_1;
            //     end
            // endcase
        end
        2'b01: begin
            // mem_wdata = data_out_1;
            cpu_data_out = data_out_1;
        end
        2'b10: begin
            // mem_wdata = data_out_0;
            cpu_data_out = data_out_0;
        end
        default: begin
        end
    endcase

    /* * * DATA_IN and Mem_byte_enable MUX * * */
    unique case(access_sel)
        1'b0: begin
            write_mask = mem_byte_sel;
            data_in = cpu_data_in;
        end
        1'b1: begin
            write_mask = {32{1'b1}};
            data_in = mem_rdata;
        end
        default: data_in = cpu_data_in;
    endcase
end

/************* STRUCTURES *************/
cache_way cache_way_0
(
    .*,
    .load(load_0),
    .read,
    .access_sel,
    .mem_byte_sel(write_mask),
    .tag_in(tag),
    .tag_out(tag_0),
    .index,
    .datain(data_in),
    .hit(hit_0),
    .dirty(dirty_0),
    .dataout(data_out_0)
);

cache_way cache_way_1
(
    .*,
    .load(load_1),
    .read,
    .access_sel,
    .mem_byte_sel(write_mask),
    .tag_in(tag),
    .tag_out(tag_1),
    .index,
    .datain(data_in),
    .hit(hit_1),
    .dirty(dirty_1),
    .dataout(data_out_1)
);

array lru_array
(
    .clk,
    .rst,
    .read,
    .load(load_lru), // want to load the LRU even on reads
    .datain(lru_in),
    .rindex(index),
    .windex(index),
    .dataout(lru)
);
endmodule : cache_datapath
