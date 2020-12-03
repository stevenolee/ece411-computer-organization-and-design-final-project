/* A register array to be used for tag arrays, LRU array, etc. */

module lru_array #(
    parameter s_index = 3,
    parameter width = 8
)
(
    clk,
    rst,
    read,
    load,
    rindex,
    windex,
    datain,
    dataout
);

localparam num_sets = 2**s_index;

input clk;
input rst;
input read;
input load;
input [s_index-1:0] rindex;
input [s_index-1:0] windex;
input [1:0] datain;
output logic [1:0] dataout;

logic [width-1:0] data [num_sets-1:0] /* synthesis ramstyle = "logic" */;
logic [width-1:0] _dataout;
assign dataout = _dataout;

initial begin
    for (int i = 0; i < num_sets; ++i)
        data[i] <= 8'b11100100;
end

always_ff @(posedge clk)
begin
    if (rst) begin
        for (int i = 0; i < num_sets; ++i)
            data[i] <= 8'b11100100;
    end
    else begin
        if (read)
            _dataout <= (load  & (rindex == windex)) ? datain : data[rindex][1:0];

        if(load)
            if(data[windex][1:0] == datain) begin
                data[windex][1:0] = data[windex][3:2];
                data[windex][3:2] = data[windex][5:4];
                data[windex][5:4] = data[windex][7:6];
            end
            else if(data[windex][3:2] == datain) begin
                data[windex][3:2] = data[windex][5:4];
                data[windex][5:4] = data[windex][7:6];
            end
            else if(data[windex][5:4] == datain) begin
                data[windex][5:4] = data[windex][7:6];
            end
            data[windex][7:6] = datain;
    end
end

endmodule : array