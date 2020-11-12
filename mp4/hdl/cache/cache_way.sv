// import rv32i_types::*;

module cache_way
(
    input clk,
    input rst,
    input load,
    input read,
    input access_sel,
    input [31:0] mem_byte_sel,
    input [23:0] tag_in,
    input [2:0] index,
    input [255:0] datain,
    output [23:0] tag_out,
    output logic hit,
    output logic dirty,
    output logic [255:0] dataout
);
logic [23:0] valid;

/** HIT **/
assign hit = valid && (tag_in == tag_out); // MIGHT WANT TO CHANGE IT TO JUST READ INSTEAD OF READ || LOAD

/** DATA ARRAY **/
data_array data_array
(
    .*,
    .read,
    .load,
    .write_en(mem_byte_sel),
    .rindex(index),
    .windex(index),
    .datain,
    .dataout
);
/** TAG ARRAY **/
array #(.width(24)) tag_array
(
    .clk,
    .rst,
    .read,
    .load,
    .rindex(index),
    .windex(index),
    .datain(tag_in),
    .dataout(tag_out)
);
/** VALID ARRAY **/
array #(.width(1)) valid_array
( 
    .clk,
    .rst,
    .read,
    .load,
    .rindex(index),
    .windex(index),
    .datain(1'b1),
    .dataout(valid)
);
/** DIRTY ARRAY **/
array #(.width(1)) dirty_array
(
    .clk,
    .rst,
    .read(1'b1),
    .load,
    .rindex(index),
    .windex(index),
    .datain(~access_sel), // REMEMBER THIS ONLY LOADS 1 IF DATA IS FROM THE CPU, IF FROM MEMORY THEN 0
    .dataout(dirty)
);

endmodule : cache_way