/* MODIFY. The cache controller. It is a state machine
that controls the behavior of the cache. */

module cache_control (
    input clk,
    input rst,
    input mem_resp,
    input mem_read,
    input mem_write,
    input dirty,
    input hit,
    output logic load,
    output logic read,
    output logic access_sel,
    output logic load_lru,
    output logic mem_read_o,
    output logic mem_write_o,
    output logic address_sel, // If 0, then use CPU address, if 1, use cache_address
    output logic mem_resp_o
);

/***** States *****/
enum int unsigned {
    /* List of states */
    IDLE,
    WRITE_BACK,
    CHECK_HIT,
    MISS,
    BUFFER
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
    read = 1'b1;
    load = 1'b0;
    mem_read_o = 1'b0;
    mem_write_o = 1'b0;
    access_sel = 1'b0;
    mem_resp_o = 1'b0;
    address_sel = 1'b0;

    unique case (state)
        IDLE: begin
        end

        WRITE_BACK: begin
            address_sel = 1'b1;
            mem_write_o = 1'b1;
        end

        CHECK_HIT: begin
            if(hit) begin
                if(mem_read) // If read, set data_in to memory
                    access_sel = 1'b1;
                if(mem_write) begin // If write, set data_in to CPU
                    access_sel = 1'b0;
                    load = 1'b1;
                end
                mem_resp_o = 1'b1;
                load_lru = 1'b1;
            end
        end
        
        MISS: begin
            access_sel = 1'b1;
            mem_read_o = 1'b1;
            load = 1'b1;
            read = 1'b0;
        end

        BUFFER: begin
            if(mem_read) begin
                access_sel = 1'b1; // Now accessing cache from memory
            end
            else if(mem_write) begin
                access_sel = 1'b0;
            end
            // read = 1'b0;
            load = 1'b1;
            mem_resp_o = 1'b1;
            load_lru = 1'b1;
        end
    endcase
end

always_comb begin: next_state_assignment
    next_state = state;

    unique case (state)
        IDLE: begin
            if (mem_read || mem_write)
                next_state = CHECK_HIT;
        end

        WRITE_BACK: begin
            if(mem_resp)
                next_state = MISS;
        end

        CHECK_HIT: begin
            if(hit) 
                next_state = IDLE;
            else if (dirty)
                next_state = WRITE_BACK;
            else
                next_state = MISS;
        end

        MISS: begin
            if(mem_resp)
                next_state = BUFFER;
        end

        BUFFER: begin
            if(~mem_resp)
                next_state = IDLE;
        end
    endcase
end

endmodule : cache_control
