module cacheline_adaptor
(
    input clk,
    input reset,
 
    // Port to LLC (Lowest Level Cache)
    input logic [255:0] line_i,
    output logic [255:0] line_o,
    input logic [31:0] address_i,
    input read_i,
    input write_i,
    output logic resp_o,

    // Port to memory
    input logic [63:0] burst_i,
    output logic [63:0] burst_o,
    output logic [31:0] address_o,
    output logic read_o,
    output logic write_o,
    input resp_i
);
logic [255:0] read_out, next_read_out;
enum int unsigned {
    /* List of states */
    IDLE,
	READ0, 
	READ1, 
	READ2,  
	READ3, 
	READ4, 
	WRITE0,
	WRITE1,
	WRITE2,
	WRITE3,
	WRITE4
} state, next;

always_ff @(posedge clk, posedge reset) begin
	if (reset) begin
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
	if(reset) begin
		read_o = 0;
		write_o = 0;
		address_o = 0;
		burst_o = 0;
		resp_o = 0;
		next = IDLE;
	end

	/* Initialize Values */
	read_o = 1'b0;
	write_o = 1'b0;
	address_o = address_i;
	burst_o = 0;
	resp_o = 0;
	next = state;
	next_read_out = read_out;

	case(state)
		IDLE :	begin
            resp_o = 1'b0;
            write_o = 1'b0;
            if(read_i) begin
                read_o = 1'b1;
                next = READ0;
                address_o = address_i;
            end
            else if(write_i) begin
                next = WRITE0;
                address_o = address_i;
                write_o = 1'b0;
            end
            else
                next = IDLE;
        end

		READ0 :	begin
            if(resp_i) begin
                read_o = 1'b1;
                next_read_out[63:0] = burst_i;
                next = READ1;
            end
            else begin
                next = READ0;
                read_o = 1'b1;
            end
        end

		READ1 :	begin
            if(resp_i) begin
                read_o = 1'b1;
                next_read_out[127:64] = burst_i;
                next = READ2;
            end
            else begin
                next = READ1;
                read_o = 1'b1;
            end
        end

		READ2 :	begin
            if(resp_i) begin
                read_o = 1'b1;
                next_read_out[191:128] = burst_i;
                next = READ3;
            end
            else begin
                next = READ2;
                read_o = 1'b1;
            end
        end

		READ3 :	begin
            if(resp_i) begin
                read_o = 1'b0;
                next_read_out[255:192] = burst_i;
                next = READ4;
            end
            else begin
                next = READ3;
                read_o = 1'b1;
            end
        end

		READ4 :	begin
            next = IDLE;
            read_o = 1'b0;
            resp_o = 1'b1;
        end

		WRITE0: begin
            write_o = 1'b1;
            burst_o = line_i[63:0];
            if(resp_i)
                next = WRITE1;
            else
                next = WRITE0;
        end

		WRITE1: begin
            write_o = 1'b1;
            burst_o = line_i[127:64];
            if(resp_i) begin
                next = WRITE2;
            end
            else begin
                next = WRITE1;
            end
        end

		WRITE2: begin
            write_o = 1'b1;
            burst_o = line_i[191:128];
            if(resp_i) begin
                next = WRITE3;
            end
            else begin
                next = WRITE2;
            end
        end

		WRITE3: begin
            write_o = 1'b1;
            burst_o = line_i[255:192];
            if(resp_i) begin
                next = WRITE4;
            end
            else begin
                next = WRITE3;
            end
		end

		WRITE4: begin
            next = IDLE;
            write_o = 1'b0;
            resp_o = 1'b1;
        end
        
		default: begin
			next = IDLE;
		end
	endcase
end

endmodule : cacheline_adaptor