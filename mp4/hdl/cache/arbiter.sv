module arbiter
(
    input clk,
    input reset_n,
 
    // Port to DATA CACHE (Lowest Level Cache)
    input logic [255:0] d_line_i,
    output logic [255:0] d_line_o,
    input logic [31:0] d_address,
    input d_read_i,
    input d_write_i,
    output logic d_resp_o,

    // Port to INSTRUCTION CACHE (Lowest Level Cache)
    output logic [255:0] i_line_o,
    input logic [31:0] i_address,
    input i_read_i,
    output logic i_resp_o,

    // Port to memory
	input resp_i,
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,

    // Port to CPU
    output logic stall
);
logic [255:0] read_out, next_read_out;
reg [3:0] state, next;
parameter	IDLE = 4'b0000,
			READ0 = 4'b0001,
			READ1 = 4'b0010,
			READ2 = 4'b0011,
			READ3 = 4'b0100,
			READ4 = 4'b1001,
			WRITE0 = 4'b0101,
			WRITE1 = 4'b0110,
			WRITE2 = 4'b0111,
			WRITE3 = 4'b1000,
			WRITE4 = 4'b1010;

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

assign line_o = read_out;

always_comb begin
	if(reset_n) begin
		read_o = 0;
		write_o = 0;
		address_o = 0;
		burst_o = 0;
        d_resp_o = 0;
        i_resp_o = 0;
	end

	/* Initialize Values */
	read_o = 1'b0;
	write_o = 1'b0;
	address_o = i_address;
	burst_o = 0;
	d_resp_o = 0;
	i_resp_o = 0;
    stall = 0;
	next_read_out = read_out;

	case(state)
		IDLE :	begin
				if (d_read_i || i_read_i || d_write_i)
					stall = 1'b1;

				if(d_read_i) begin
					address_o = i_address;
					read_o = 1'b1;
				end
				else if(d_write_i) begin
					address_o = d_address;
					write_o = 1'b0;
				end
				else if(i_read_i) begin
					address_o = i_address;
					read_o = 1'b1;
				end
			end
		READ0 :	begin
                    stall = 1'b1;
					read_o = 1'b1;
					if(resp_i) begin
						next_read_out[63:0] = burst_i;
					end
				end
		READ1 :	begin
                    stall = 1'b1;
					read_o = 1'b1;
					if(resp_i) begin
						next_read_out[127:64] = burst_i;
					end
				end
		READ2 :	begin
                    stall = 1'b1;
					read_o = 1'b1;
					if(resp_i) begin
						next_read_out[191:128] = burst_i;
					end
				end
		READ3 :	begin
					read_o = 1'b1;
					if(resp_i) begin
						next_read_out[255:192] = burst_i;
					end
				end
		READ4 :	begin
                    stall = 1'b1;
                    if(d_read_i)
                        d_resp_o = 1'b1;
                    else if (i_read_i)
                        i_resp_o  = 1'b1;
				end
		WRITE0: begin
                    stall = 1'b1;
					write_o = 1'b1;
					burst_o = d_line_i[63:0];
				end
		WRITE1: begin
                    stall = 1'b1;
					write_o = 1'b1;
					burst_o = d_line_i[127:64];
				end
		WRITE2: begin
                    stall = 1'b1;
					write_o = 1'b1;
					burst_o = d_line_i[191:128];
				end
		WRITE3: begin
                    stall = 1'b1;
					write_o = 1'b1;
					burst_o = d_line_i[255:192];
				end
		WRITE4: begin
                    stall = 1'b1;
					d_resp_o = 1'b1;
				end
		default: begin
			
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
                if(d_write_i) begin
                    next = WRITE0;
                end
                else if(d_read_i) begin
                    next = READ0;
                end
                else if(i_read_i) begin
                    next = WRITE0;
                end
                else
                    next = IDLE;
            end
		READ0 :	begin
					if(resp_i) begin
						next = READ1;
					end
					else begin
						next = READ0;
					end
				end
		READ1 :	begin
					if(resp_i) begin
						next = READ2;
					end
					else begin
						next = READ1;
					end
				end
		READ2 :	begin
					if(resp_i) begin
						next = READ3;
					end
					else begin
						next = READ2;
					end
				end
		READ3 :	begin
					if(resp_i) begin
						next = READ4;
					end
					else begin
						next = READ3;
					end
				end
		READ4 :	begin
					next = IDLE;
				end
		WRITE0: begin
					if(resp_i)
						next = WRITE1;
					else
						next = WRITE0;
				end
		WRITE1: begin
					if(resp_i) begin
						next = WRITE2;
					end
					else begin
						next = WRITE1;
					end
				end
		WRITE2: begin
					if(resp_i) begin
						next = WRITE3;
					end
					else begin
						next = WRITE2;
					end
				end
		WRITE3: begin
					if(resp_i) begin
						next = WRITE4;
					end
					else begin
						next = WRITE3;
					end
				end
		WRITE4: begin
                    if(i_read_i)
                        next = READ0;
                    else
					    next = IDLE;
				end
		default: begin
			next = IDLE;
		end
	endcase


end

endmodule : arbiter