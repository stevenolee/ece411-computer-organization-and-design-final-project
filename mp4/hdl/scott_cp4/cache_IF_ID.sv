module cache_IF_ID(
    input clk,
    input rst,
    input read_i,
    input write_i,
    input logic [31:0] address_i,
    input logic [31:0] mem_byte_en_i,
    input logic [255:0] data_i,
    input logic stall,
    input logic branch_i,

    output logic [31:0] address_o,
    output logic [31:0] mem_byte_en_o,
    output logic [255:0] cpu_data_o,
    output logic write_o,
    output logic read_o
);
logic read, write;
logic [1:0] hit_index;
logic [31:0] address, mem_byte_en;
logic [255:0] cpu_data;

always_ff @(posedge clk)
begin
    if(rst || branch_i) begin
        address <= 32'b0;
        cpu_data <= 256'b0;
        read <= 1'b0;
        write <= 1'b0;
        mem_byte_en <= 31'b0;
    end
    else if(!stall) begin
    // else begin
        address <= address_i;
        cpu_data <= data_i;
        read <= read_i;
        write <= write_i;
        mem_byte_en <= mem_byte_en_i;
    end
end 

assign cpu_data_o = cpu_data;
assign write_o = write;
assign address_o = address;
assign mem_byte_en_o = mem_byte_en;
assign read_o = read;

endmodule