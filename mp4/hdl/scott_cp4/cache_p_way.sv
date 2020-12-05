// import rv32i_types::*;

module cache_p_way
(
    input clk,
    input rst,
    input load,
    input read,
    input access_sel,
    input [31:0] mem_byte_enable,
    input [23:0] tag_in,
    input [2:0] index_r,
    input [2:0] index_w,
    input [255:0] datain,
    output [23:0] tag_out,
    // output logic hit,
    output valid,
    output logic dirty,
    output logic [255:0] dataout
);

/** HIT **/
// assign hit = valid && (tag_in == tag_out); // MIGHT WANT TO CHANGE IT TO JUST READ INSTEAD OF READ || LOAD

/** DATA ARRAY **/
data_array_p data_array
(
    .*,
    .read,
    .load,
    .write_en   (mem_byte_enable),
    .rindex     (index_r),
    .windex     (index_w),
    .datain,
    .dataout
);
/** TAG ARRAY **/
array_p #(.width(24)) tag_array
(
    .clk,
    .rst,
    .read,
    .load,
    .rindex     (index_r),
    .windex     (index_w),
    .datain     (tag_in),
    .dataout    (tag_out)
);
/** VALID ARRAY **/
array_p #(.width(1)) valid_array
( 
    .clk,
    .rst,
    .read,
    .load,
    .rindex     (index_r),
    .windex     (index_w),
    .datain     (1'b1),
    .dataout    (valid)
);
/** DIRTY ARRAY **/
array_p #(.width(1)) dirty_array
(
    .clk,
    .rst,
    .read       (1'b1),
    .load,
    .rindex     (index_r),
    .windex     (index_w),
    .datain     (~access_sel), // REMEMBER THIS ONLY LOADS 1 IF DATA IS FROM THE CPU, IF FROM MEMORY THEN 0
    .dataout    (dirty)
);

endmodule : cache_p_way