module cache_ID_WB(
    input clk,
    input rst,
    input logic [31:0] address_i,
    input logic [31:0] data_i, 
    input logic mem_resp,
    input logic stall,

    output logic [31:0] address_o,
    output logic [31:0] data_o,
    output logic resp_o
);
logic [31:0] address, pc, data;

always_ff @(posedge clk)
begin
    if(!stall) begin
        address <= address_i;
        if(mem_resp) begin
            data = data_i;
        end
    end
    if (rst) 
    begin
        address <= 32'b0;
        rdata <= 256'b0;
    end
end 

assign address_o = address;
assign data_o = data;

endmodule