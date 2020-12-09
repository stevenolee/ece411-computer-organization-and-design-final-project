module arbiter
(
    input clk,
    input reset_n,
 
    // Port to DATA CACHE (Lowest Level Cache)
	input d_read_i,
    input d_write_i,
    input logic [31:0] d_mem_byte_en,
    input logic [255:0] d_line_i,
    input logic [31:0] d_address,
    output logic d_resp_o,
	output logic [255:0] d_line_o,

    // Port to INSTRUCTION CACHE (Lowest Level Cache)
	input i_read_i,
	input logic [31:0] i_address,
    input logic [31:0] i_mem_byte_en,
    output logic [255:0] i_line_o,
    output logic i_resp_o,

    // Port to L2 Cache
	input resp_i,
    input [255:0] data_i,
    output logic [31:0] mem_byte_en,
    output logic [31:0] address_o,
    output logic [255:0] data_o,
    output logic read_o,
    output logic write_o,

    // Port to CPU
    output logic stall
);

logic [255:0] read_out, next_read_out;

/***** States *****/
enum int unsigned {
    /* List of states */
    IDLE,
	CACHE2
} state, next;

always_ff @(posedge clk, posedge reset_n) begin
	if (reset_n) begin
        state <= IDLE;
		read_out <= 256'b0;
	end
	else begin
		state <= next;
		read_out <= next_read_out;
	end
end

always_comb begin
    if(reset_n) begin
        read_o = 0;
		write_o = 0;
		address_o = 0;
        d_resp_o = 0;
        i_resp_o = 0;
        mem_byte_en = 32'hFFFFFFFF;
    end

    /* Initialize Values */
	read_o = 1'b0;
	write_o = 1'b0;
	address_o = i_address;
	d_resp_o = 0;
	i_resp_o = 0;
    stall = 0;
	next_read_out = read_out;
	i_line_o = read_out;
	d_line_o = read_out;
    data_o = d_line_i;
    mem_byte_en = i_mem_byte_en;

    case(state)
        IDLE : begin
            if(d_read_i) begin
                stall = 1'b1;
                address_o = d_address;
                mem_byte_en = d_mem_byte_en;
                read_o = 1'b1;
            end
            else if(d_write_i) begin
                stall = 1'b1;
                address_o = d_address;
                mem_byte_en = d_mem_byte_en;
                write_o = 1'b0;
                data_o = d_line_i;
            end
            else if(i_read_i) begin
                stall = 1'b1;
                address_o = i_address;
                read_o = 1'b1;
            end
            next_read_out = data_i;
        end
 
        CACHE2 : begin
            if(d_read_i) begin
                d_line_o = read_out;
                d_resp_o = 1'b1;
                mem_byte_en = d_mem_byte_en;
            end
            else if (d_write_i) begin
                stall = 1'b1;
				d_resp_o = 1'b1;
                mem_byte_en = d_mem_byte_en;
            end
            else if (i_read_i) begin
                i_line_o = read_out;
                i_resp_o  = 1'b1;
            end
        end
    endcase
end

always_comb 
begin: next_state_logic
	if(reset_n) begin
		next = IDLE;
	end

    /* Initialize values */
	next = state;

    case(state)
		IDLE :	begin
            // if(d_write_i || d_read_i || i_read_i) begin
            if(resp_i) begin
                next = CACHE2;
            end
        end

        CACHE2: begin
            if (~resp_i)
                next = IDLE;
        end
    endcase
end

endmodule : arbiter