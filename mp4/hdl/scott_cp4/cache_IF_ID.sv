module cache_IF_ID(
    input clk,
    input rst,
    input hit_i,
    input dirty_i,
    input read_i,
    input write_i,
    input [1:0] hit_ind_i,
    input logic [31:0] address_i,
    input logic [255:0] data_i,
    input logic [255:0] cache_data_i,
    input logic stall,

    output logic [1:0] hit_ind_o,
    output logic [31:0] address_o,
    output logic [255:0] cpu_data_o,
    output logic [255:0] cache_data_o,
    output logic read_o,
    output logic write_o,
    output logic load,
    output logic access_sel,
    output logic hit_o,
    output logic load_lru
);
logic read, write, dirty, hit, 
logic [1:0] hit_index;
logic [31:0] address;
logic [255:0] cpu_data, cache_data;

always_ff @(posedge clk)
begin
    if(rst) begin
        address <= 32'b0;
        cpu_data <= 256'b0;
        cache_data <= 256'b0;
        read <= 1'b0;
        write <= 1'b0;
        dirty <= 1'b0;
        hit <= 1'b0;
        hit_index <= 1'b0;
    end
    else if(!stall) begin
        address <= address_i;
        cpu_data <= data_i;
        cache_data <= cache_data_i;
        read <= read_i;
        write <= write_i;
        dirty <= dirty_i;
        hit <= hit_i;
        hit_index <= hit_ind_i;
    end
end 

always_comb begin
    load = 1'b0;
    load_lru = 1'b1;
    pmem_read = 1'b0;
    pmem_write = 1'b0;
    access_sel = 1'b0;

    if(read) begin
        load_lru = 1'b1;
        if(!hit) begin
            pmem_read = 1'b1;
            access_sel = 1'b1;
            load = 1'b1;
        end
    end
    
    if(write) begin
        load_lru = 1'b1;
        load = 1'b1;
        access_sel = 1'b0;
        if(dirty) begin
            pmem_write = 1'b1;
        end
    end
end

assign address_o = address;
assign cpu_data_o = cpu_data;
assign cache_data_o = cache_data;
assign hit_o = hit;
assign hit_ind_o = hit_index;

endmodule