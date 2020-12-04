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
    output logic [255:0] mem_rdata,
    output logic mem_resp,
    output logic stall,

    /***** Cache Adapter / MEMORY *****/
    input [255:0] pmem_rdata,
    input pmem_resp,
    output logic pmem_read,
    output logic pmem_write,
    output logic [255:0] pmem_wdata,
    output logic [31:0] pmem_address
);
/***** Variables *****/
logic load, load_lru, dirty, hit, access_sel;
logic IF_ID_read, IF_ID_write, IF_ID_hit;
logic load_0, load_1, load_2, load_3, hit_0, hit_1, hit_2, hit_3;
logic valid_0, valid_1, valid_2, valid_3, dirty_0, dirty_1, dirty_2, dirty_3;
logic [s_index-1:0] index, IF_ID_index;
logic [s_tag-1:0] tag, tag_0, tag_1, tag_2, tag_3, IF_ID_tag;
logic [s_line-1:0] cache_data_i, cache_data_o, IF_ID_data;
logic [s_line-1:0] data_out_0, data_out_1, data_out_2, data_out_3;
logic [31:0] IF_ID_addr, write_mask;
logic [1:0] lru, lru_in, hit_ind_i, hit_ind_o;

/***** Assign *****/
assign index = mem_address[7:5];
assign IF_ID_tag = IF_ID_addr[31:8];
assign IF_ID_index = IF_ID_addr[7:5];
assign tag = mem_address[31:8];
assign hit_0 = valid_0 && tag == tag_0;
assign hit_1 = valid_1 && tag == tag_1;
assign hit_2 = valid_2 && tag == tag_2;
assign hit_3 = valid_3 && tag == tag_3;

/***** Muxes *****/
always_comb begin
    mem_resp = 1'b0;
    cache_data_i = mem_wdata;
    cache_data_o = data_out_0;
    mem_rdata = pmem_wdata;
    write_mask = mem_byte_enable;
    hit = hit_0 || hit_1 || hit_2 || hit_3;
    hit_ind_i = 2'b00;
    pmem_address = IF_ID_addr;
    dirty = 1'b0;
    load_0 = 1'b0;
    load_1 = 1'b0;
    load_2 = 1'b0;
    load_3 = 1'b0;
    stall = 1'b0;

    /********** STALL **********/
    if((pmem_read || pmem_write) && !pmem_resp) begin
        stall = 1'b1;
    end
    /********** CPU DATA OUT **********/
    unique case (pmem_read) // Use pmem_read because we want post IF_ID register logic,
    // could change to IF_ID_hit, but would need to reverse the logic
        1'b0: begin
            mem_rdata = pmem_rdata;
        end
        1'b1: begin
            mem_rdata = pmem_wdata; // pmem_wdata is the same as cache_data_o read from ID stage
        end
    endcase
    /********** HIT **********/
    unique case ({hit_3, hit_2, hit_1, hit_0})
        4'b0000: begin
            unique case(lru) 
                2'b00: begin
                    cache_data_o = data_out_0;
                    dirty = dirty_0;
                end
                2'b01: begin
                    cache_data_o = data_out_1;
                    dirty = dirty_1;
                end
                2'b10: begin
                    cache_data_o = data_out_2;
                    dirty = dirty_2;
                end
                2'b11: begin
                    cache_data_o = data_out_3;
                    dirty = dirty_3;
                end
            endcase
        end
        4'b0001: begin
            hit_ind_i = 2'b00;
            cache_data_o = data_out_0;
            dirty = dirty_0;
        end
        4'b0010: begin
            hit_ind_i = 2'b01;
            cache_data_o = data_out_1;
            dirty = dirty_1;
        end
        4'b0100: begin
            hit_ind_i = 2'b10;
            cache_data_o = data_out_2;
            dirty = dirty_2;
        end
        4'b1000: begin
            hit_ind_i = 2'b11;
            cache_data_o = data_out_3;
            dirty = dirty_3;
        end
        default: $display("ERROR: More than one cache way hits!");
    endcase
    /********** CACHE LOAD **********/
    if(IF_ID_hit) begin
        mem_resp = 1'b1;
        unique case(hit_ind_o)
            2'b00: begin
                lru_in = 2'b00;
                load_0 = load;
            end
            2'b01: begin
                lru_in = 2'b01;
                load_2 = load;
            end
            2'b10: begin
                lru_in = 2'b10;
                load_2 = load;
            end
            2'b11: begin
                lru_in = 2'b11;
                load_3 = load;
            end
        endcase
    end
    else begin
        lru_in = lru;
        if(pmem_resp)
            mem_resp = 1'b1;
        unique case(lru) 
            2'b00: begin
                load_0 = load;
            end
            2'b01: begin
                load_1 = load;
            end
            2'b10: begin
                load_2 = load;
            end
            2'b11: begin
                load_3 = load;
            end
        endcase
    end
    /********** ADDRESS OUT **********/
    unique case(access_sel)
        1'b0: begin
            unique case (lru)
                2'b00: pmem_address = {{tag_0}, {index}, 5'b0};
                2'b01: pmem_address = {{tag_1}, {index}, 5'b0};
                2'b01: pmem_address = {{tag_2}, {index}, 5'b0};
                2'b01: pmem_address = {{tag_3}, {index}, 5'b0};
            endcase
            cache_data_i = IF_ID_data;
            write_mask = mem_byte_enable;
        end
        1'b1: begin
            pmem_address = IF_ID_addr;
            write_mask = {32{1'b1}};
            cache_data_i = pmem_rdata;
        end
        default: ;
    endcase
end

/***** State Registers *****/
cache_IF_ID cache_IF_ID(
    .clk,
    .rst,
    .hit_i          (hit),
    .hit_ind_i,
    .dirty_i        (dirty),
    .read_i         (mem_read),
    .write_i        (mem_write),
    .address_i      (mem_address),
    .data_i         (mem_wdata), 
    .cache_data_i   (cache_data_o),
    .stall,
    .address_o      (IF_ID_addr),
    .cpu_data_o     (IF_ID_cpu_data),
    .cache_data_o   (pmem_wdata),
    .read_o         (pmem_read),
    .write_o        (pmem_write),
    .load,
    .load_lru,
    .access_sel,
    .hit_ind_o,
    .hit_o          (IF_ID_hit)
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
    .datain         (data_in),
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
    .datain         (data_in),
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
    .datain         (data_in),
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
    .datain         (data_in),
    .valid          (valid_3),
    .dirty          (dirty_3),
    .dataout        (data_out_3)
);

lru_array lru_array
(
    .clk,
    .rst,
    .read       (1'b1),
    .load       (load_lru  && (IF_ID_hit || pmem_resp)), // KEEP AN EYE ON THIS LOGIC
    .rindex     (index),
    .windex     (IF_ID_index),
    .datain     (lru_in),
    .dataout    (lru)
);

endmodule : cache_p_datapath