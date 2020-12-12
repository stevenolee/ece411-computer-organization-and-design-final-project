/* MODIFY. The cache controller. It is a state machine
that controls the behavior of the cache. */

module cache_p_control (
    input clk,
    input rst,
    input pmem_resp,
    input mem_read,
    input mem_write,
    input dirty,
    input hit,
    input prefetch,
    output logic load,
    output logic access_sel,
    output logic load_lru,
    output logic pmem_read,
    output logic pmem_write,
    output logic [1:0] address_sel, // If 0, then use CPU address, if 1, use cache_address, if 2 use address + 32
    output logic mem_resp,
    output logic stall
);

/***** States *****/
enum int unsigned {
    /* List of states */
    IDLE,
    WRITE_BACK,
    MISS,
    BUFFER,
    STALL,
    PREFETCH,
    PREFETCH_BUFFER
} state, next_state;

always_ff @(posedge clk)
begin
    /* Assignment of next state on clock edge */
    if(rst)
        state <= IDLE;
    else
        state <= next_state;
end

always_comb begin: state_execute
    load_lru = 1'b0;
    load = 1'b0;
    stall = 1'b0;
    pmem_read = 1'b0;
    pmem_write = 1'b0;
    access_sel = 1'b0;
    mem_resp = 1'b0;
    address_sel = 2'b00;

    unique case (state)
        IDLE: begin
            if (mem_read || mem_write) begin 
                if(hit) begin
                    load_lru = 1'b1;
                    mem_resp = 1'b1;
                    if(mem_write)
                        load = 1'b1;
                end
                else begin 
                    stall = 1'b1;
                end
            end
        end

        WRITE_BACK: begin
            address_sel = 2'b01;
            pmem_write = 1'b1;
            stall = 1'b1;
        end
        
        MISS: begin
            access_sel = 1'b1;
            pmem_read = 1'b1;
            load = 1'b1;
            stall = 1'b1;
        end

        BUFFER: begin
            if(mem_read) begin
                access_sel = 1'b1; // Now accessing cache from memory
            end
            else if(mem_write) begin
                access_sel = 1'b0;
            end
            load = 1'b1;
            stall = 1'b1;
        end

        STALL: begin
            stall = 1'b1;
            address_sel = 2'b10;
        end

        PREFETCH: begin
            access_sel = 1'b1;
            pmem_read = 1'b1;
            load = 1'b1;
            stall = 1'b1;
            address_sel = 2'b10;
        end

        PREFETCH_BUFFER: begin
            access_sel = 1'b1;
            load = 1'b1;
            stall = 1'b1;
            address_sel = 2'b10;
        end
    endcase
end

always_comb begin: next_state_assignment
    next_state = state;

    unique case (state)
        IDLE: begin
            if ((mem_read || mem_write) && !hit) begin
                if(dirty)
                    next_state = WRITE_BACK;
                else 
                    next_state = MISS;
            end
        end

        WRITE_BACK: begin
            if(pmem_resp)
                next_state = MISS;
        end

        MISS: begin
            if(pmem_resp)
                next_state = BUFFER;
        end

        BUFFER: begin
            if(~pmem_resp) begin
                if (prefetch == 1'b1)
                    next_state = STALL;
                else
                    next_state = IDLE;
            end
        end

        STALL: begin
            next_state = PREFETCH;
        end

        PREFETCH: begin
            if(pmem_resp)
                next_state = PREFETCH_BUFFER;
        end

        PREFETCH_BUFFER: begin
            if(~pmem_resp)
                next_state = IDLE;
        end
    endcase
end

endmodule : cache_p_control