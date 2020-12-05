module branch_history_table #(parameter length = 8)
(
    input clk,
    // input rst,
    input logic [31:0] pc,
    input logic read,
    input logic write,
    input logic taken,

    output logic prediction
    // output logic [31:0] target_address

);
// assign length = bits*bits*bits;

logic [2:0] bhr;                   // branch history register           3 = number of bits 2^3
// logic prediction;
logic [31:0] target_address;
// logic [31:0] br_address_arr [length];
logic [31:0] target_address_arr [length];
logic [1:0] history [length];                   // 2 bit history 
logic [1:0] pht00 [length];              // phts based on the history bits        
logic [1:0] pht01 [length];                
logic [1:0] pht10 [length];                
logic [1:0] pht11 [length];  

assign index = pc[2:0] ^ bhr[2:0];

initial begin
    for (int i = 0; i < length; i++) begin
        // br_address_arr[i] = 32'b0;
        target_address_arr[i] = 32'b0;
        history[i] = 2'b00;
        // initialize pht values to weakly not taken
        pht00[i] = 2'b01;
        pht01[i] = 2'b01;
        pht10[i] = 2'b01;
        pht11[i] = 2'b01;
    end
    bhr = 3'b0;     // 3 = number of bits (2^3 = 8)
end


always_comb
begin
    prediction = 0;
    target_address = 32'b0;

    if (read) begin
        // check if address in history table
        // if (br_address_arr[index] == pc) begin
            unique case (history[index]) 
                00: prediction = pht00[index][1];
                01: prediction = pht01[index][1];
                10: prediction = pht10[index][1];
                11: prediction = pht11[index][1];
            endcase
        // end
    end

    else if (write) begin
        unique case (history[index]) 
            00: pht00[index] = (taken) ? (pht00[index] + 1) : (pht00[index] - 1);
            01: pht01[index] = (taken) ? (pht01[index] + 1) : (pht01[index] - 1);
            10: pht10[index] = (taken) ? (pht10[index] + 1) : (pht10[index] - 1);
            11: pht11[index] = (taken) ? (pht11[index] + 1) : (pht11[index] - 1);
        endcase
    end
end

// always_ff@(posedge clk)
// begin
//     if (write)
//         bhr <= {(bhr << 1), taken};
//     else 
//         bhr <= bhr;
// end







endmodule