/* MODIFY. The cache datapath. It contains the data,
valid, dirty, tag, and LRU arrays, comparators, muxes,
logic gates and other supporting logic. */
`define BAD_MUX_SEL $fatal("%0t %s %0d: Illegal mux select", $time, `__FILE__, `__LINE__)

import rv32i_types::*;

module cache_p_datapath #(
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
    input logic mem_read,
    input logic mem_write,
    input [31:0] mem_address,
    input [31:0] mem_byte_enable,
    input [255:0] mem_wdata,
    input logic branch_i,
    output logic [255:0] mem_rdata,

    /***** Cache Adapter / MEMORY *****/
    input [255:0] pmem_rdata,
    output logic [255:0] pmem_wdata,
    output logic [31:0] pmem_address,
    output logic [31:0] address_o,

    /***** Cache Control *****/
    input load,
    input load_lru,
    input address_sel,
    input access_sel,
    input stall,
    output logic cache_hit,
    output logic dirty,
    output logic write_o,
    output logic read_o
);
/***** Variables *****/
logic hit;
logic IF_ID_write;
logic load_0, load_1, load_2, load_3, hit_0, hit_1, hit_2, hit_3;
logic valid_0, valid_1, valid_2, valid_3, dirty_0, dirty_1, dirty_2, dirty_3;
logic [s_index-1:0] index, IF_ID_index;
logic [s_tag-1:0] tag, tag_0, tag_1, tag_2, tag_3, IF_ID_tag;
logic [s_line-1:0] cache_data_i, cache_data_o, IF_data,  IF_ID_cpu_data;
logic [s_line-1:0] data_out_0, data_out_1, data_out_2, data_out_3;
logic [31:0] IF_ID_addr, write_mask, IF_ID_mbe;
logic [1:0] lru, lru_in;

/***** Assign *****/
assign index = IF_ID_addr[7:5];
assign IF_ID_tag = IF_ID_addr[31:8];
assign IF_ID_index = IF_ID_addr[7:5];
assign tag = IF_ID_addr[31:8];
assign hit_0 = valid_0 && tag == tag_0;
assign hit_1 = valid_1 && tag == tag_1;
assign hit_2 = valid_2 && tag == tag_2;
assign hit_3 = valid_3 && tag == tag_3;
assign address_o = IF_ID_addr;
assign mem_rdata = cache_data_o;
assign pmem_wdata = cache_data_o;

/***** Muxes *****/
always_comb begin
    cache_data_i = IF_ID_cpu_data;
    cache_data_o = 256'b0;
    write_mask = IF_ID_mbe;
    cache_hit = hit_0 || hit_1 || hit_2 || hit_3;
    pmem_address = IF_ID_addr;
    dirty = 1'b0;
    load_0 = 1'b0;
    load_1 = 1'b0;
    load_2 = 1'b0;
    load_3 = 1'b0;
    lru_in = lru;

    /********** Reading and Writing from Memory **********/
    unique case(address_sel)
        1'b1: begin
            unique case (lru)
                2'b00: pmem_address = {{tag_0}, {IF_ID_index}, 5'b0};
                2'b01: pmem_address = {{tag_1}, {IF_ID_index}, 5'b0};
                2'b10: pmem_address = {{tag_2}, {IF_ID_index}, 5'b0};
                2'b11: pmem_address = {{tag_3}, {IF_ID_index}, 5'b0};
                default: ;
            endcase
        end
        1'b0: begin
            pmem_address = IF_ID_addr;
        end
        default: ;
    endcase

    unique case(access_sel)
        1'b0: begin
            write_mask = IF_ID_mbe;
            cache_data_i = IF_ID_cpu_data;
        end
        1'b1: begin
            write_mask = {32{1'b1}};
            cache_data_i = pmem_rdata;
        end
        default: ;
    endcase
    
    /********** HIT **********/
    unique case ({hit_3, hit_2, hit_1, hit_0})
        4'b0000: begin
            lru_in = lru;
            unique case(lru) 
                2'b00: begin
                    cache_data_o = data_out_0;
                    dirty = dirty_0;
                    load_0 = load;
                end
                2'b01: begin
                    cache_data_o = data_out_1;
                    dirty = dirty_1;
                    load_1 = load;
                end
                2'b10: begin
                    cache_data_o = data_out_2;
                    dirty = dirty_2;
                    load_2 = load;
                end
                2'b11: begin
                    cache_data_o = data_out_3;
                    dirty = dirty_3;
                    load_3 = load;
                end
                default: ;
            endcase
        end
        4'b0001: begin
            cache_data_o = data_out_0;
            dirty = dirty_0;
            lru_in = 2'b00;
            load_0 = load;
        end
        4'b0010: begin
            cache_data_o = data_out_1;
            dirty = dirty_1;
            lru_in = 2'b01;
            load_1 = load;
        end
        4'b0100: begin
            cache_data_o = data_out_2;
            dirty = dirty_2;
            lru_in = 2'b10;
            load_2 = load;
        end
        4'b1000: begin
            cache_data_o = data_out_3;
            dirty = dirty_3;
            lru_in = 2'b11;
            load_3 = load;
        end
        default: $display("ERROR: More than one cache way hits!");
    endcase
end

/***** State Registers *****/
cache_IF_ID cache_IF_ID(
    .clk,
    .rst,
    .read_i         (mem_read),
    .write_i        (mem_write),
    .address_i      (mem_address),
    .data_i         (mem_wdata), 
    .mem_byte_en_i  (mem_byte_enable),
    .stall,
    .branch_i,

    .address_o      (IF_ID_addr),
    .cpu_data_o     (IF_ID_cpu_data),
    .mem_byte_en_o  (IF_ID_mbe),
    .read_o,
    .write_o
);

/***** Cache Ways *****/
cache_p_way cache_way_0
(
    .*,
    .load           (load_0),
    .read           (1'b1),
    .access_sel,
    .mem_byte_enable(write_mask),
    .tag_in         (IF_ID_tag),
    .tag_out        (tag_0),
    .index_r        (index),
    .index_w        (IF_ID_index),
    .datain         (cache_data_i),
    .valid          (valid_0),
    .dirty          (dirty_0),
    .dataout        (data_out_0)
);

cache_p_way cache_way_1
(
    .*,
    .load           (load_1),
    .read           (1'b1),
    .access_sel,
    .mem_byte_enable(write_mask),
    .tag_in         (IF_ID_tag),
    .tag_out        (tag_1),
    .index_r        (index),
    .index_w        (IF_ID_index),
    .datain         (cache_data_i),
    .valid          (valid_1),
    .dirty          (dirty_1),
    .dataout        (data_out_1)
);

cache_p_way cache_way_2
(
    .*,
    .load           (load_2),
    .read           (1'b1),
    .access_sel,
    .mem_byte_enable(write_mask),
    .tag_in         (IF_ID_tag),
    .tag_out        (tag_2),
    .index_r        (index),
    .index_w        (IF_ID_index),
    .datain         (cache_data_i),
    .valid          (valid_2),
    .dirty          (dirty_2),
    .dataout        (data_out_2)
);

cache_p_way cache_way_3
(
    .*,
    .load           (load_3),
    .read           (1'b1),
    .access_sel,
    .mem_byte_enable(write_mask),
    .tag_in         (IF_ID_tag),
    .tag_out        (tag_3),
    .index_r        (index),
    .index_w        (IF_ID_index),
    .datain         (cache_data_i),
    .valid          (valid_3),
    .dirty          (dirty_3),
    .dataout        (data_out_3)
);

lru_array lru_array
(
    .clk,
    .rst,
    .read       (1'b1),
    .load       (load_lru && (!stall)), // KEEP AN EYE ON THIS LOGIC
    .rindex     (index),
    .windex     (IF_ID_index),
    .datain     (lru_in),
    .dataout    (lru)
);

endmodule : cache_p_datapath