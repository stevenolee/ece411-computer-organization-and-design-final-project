module p_line_adapter (
  output logic [255:0] mem_wdata_line,
  input logic [255:0] mem_rdata_line,
  input logic [31:0] mem_wdata,
  output logic [31:0] mem_rdata,
  input logic [3:0] mem_byte_enable,
  output logic [31:0] mem_byte_enable_line,
  input logic [31:0] address,
  input logic [31:0] address_rdata
);
logic [31:0] debug_word, debug_word2;
assign debug_word = mem_rdata_line[31:0];
assign debug_word2 = mem_rdata_line[0+:32];

assign mem_wdata_line = {8{mem_wdata}};
assign mem_rdata = mem_rdata_line[(32*address_rdata[4:2]) +: 32];
assign mem_byte_enable_line = {28'h0, mem_byte_enable} << (address[4:2]*4);

endmodule : p_line_adapter
