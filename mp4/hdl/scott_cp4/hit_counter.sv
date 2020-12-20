/* A special register array specifically for your
data arrays. This module supports a write mask to
help you update the values in the array. */

module hit_counter
(
    input clk,
    input rst,
    input request,
    input load,
    input hit,
    input stall
);
int hit_count;
/* synthesis ramstyle = "logic" */

always_ff @(posedge clk)
begin
    if (rst) begin
        hit_count = 0;
    end
    else begin
        if (load & hit & request & !stall)
            hit_count = hit_count + 1;   
    end
end

endmodule : hit_counter