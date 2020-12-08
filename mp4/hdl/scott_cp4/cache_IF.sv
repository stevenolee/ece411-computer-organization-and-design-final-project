module cache_IF(
    input clk, 
    input rst,
    input mem_read,
    input mem_write,
    input hit,
    input [255:0] cache_data,
    input [255:0] pmem_rdata,
    output logic read_o,
    output logic [255:0] data_o         // Goes into IF_ID for writing back into cache, CPU. if mem_write, then write with mask over it
);

always_comb begin
    read_o = 1'b0;
    data_o = pmem_rdata;
    /********** FETCH LOGIC **********/
    if((mem_read || mem_write) && ~hit) begin
        read_o = 1'b1;
    end

    if(hit) begin
        data_o = cache_data;
    end
end
endmodule