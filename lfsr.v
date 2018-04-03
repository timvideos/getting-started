`timescale 1ns / 1ps
module lfsr #
(
   parameter LFSR_WIDTH = 31,
   parameter LFSR_POLY = 31'h10000001,
   parameter LFSR_FEED_FORWARD = 0,
   parameter DATA_WIDTH = 8
)
(
   input  wire [DATA_WIDTH-1:0] data_in,
   input  wire [LFSR_WIDTH-1:0] state_in,
   output wire [DATA_WIDTH-1:0] data_out,
   output wire [LFSR_WIDTH-1:0] state_out
);
reg [LFSR_WIDTH-1:0] lfsr_mask_state[LFSR_WIDTH-1:0];
reg [DATA_WIDTH-1:0] lfsr_mask_data[LFSR_WIDTH-1:0];
reg [LFSR_WIDTH-1:0] output_mask_state[DATA_WIDTH-1:0];
reg [DATA_WIDTH-1:0] output_mask_data[DATA_WIDTH-1:0];
reg [LFSR_WIDTH-1:0] state_val = 0;
reg [DATA_WIDTH-1:0] data_val = 0;
integer i, j, k;
initial begin
   // init bit masks
   for (i = 0; i < LFSR_WIDTH; i = i + 1) begin
       lfsr_mask_state[i] = {LFSR_WIDTH{1'b0}};
       lfsr_mask_state[i][i] = 1'b1;
       lfsr_mask_data[i] = {DATA_WIDTH{1'b0}};
   end
   for (i = 0; i < DATA_WIDTH; i = i + 1) begin
       output_mask_state[i] = {LFSR_WIDTH{1'b0}};
       if (i < LFSR_WIDTH) begin
           output_mask_state[i][i] = 1'b1;
       end
       output_mask_data[i] = {DATA_WIDTH{1'b0}};
   end
    // simulate shift register
 
       // Fibonacci configuration
       for (i= DATA_WIDTH-1; i >= 0; i = i - 1) begin
           // determine shift in value
           // current value in last FF, XOR with input data bit (MSB first)
           state_val = lfsr_mask_state[LFSR_WIDTH-1];
           data_val = lfsr_mask_data[LFSR_WIDTH-1];
           data_val = data_val ^ (1 << i);
            // add XOR inputs from correct indicies
           for (j = 1; j < LFSR_WIDTH; j = j + 1) begin
               if (LFSR_POLY & (1 << j)) begin
                   state_val = lfsr_mask_state[j-1] ^ state_val;
                   data_val = lfsr_mask_data[j-1] ^ data_val;
               end
           end
            // shift
           for (j = LFSR_WIDTH-1; j > 0; j = j - 1) begin
               lfsr_mask_state[j] = lfsr_mask_state[j-1];
               lfsr_mask_data[j] = lfsr_mask_data[j-1];
           end
           for (j = DATA_WIDTH-1; j > 0; j = j - 1) begin
               output_mask_state[j] = output_mask_state[j-1];
               output_mask_data[j] = output_mask_data[j-1];
           end
           output_mask_state[0] = state_val;
           output_mask_data[0] = data_val;
           if (LFSR_FEED_FORWARD) begin
               // only shift in new input data
               state_val = {LFSR_WIDTH{1'b0}};
               data_val = 1 << i;
           end
           lfsr_mask_state[0] = state_val;
           lfsr_mask_data[0] = data_val;
       end
end
genvar n;
generate
    for (n = 0; n < LFSR_WIDTH; n = n + 1) begin : loop1
       assign state_out[n] = ^{(state_in & lfsr_mask_state[n]), (data_in & lfsr_mask_data[n])};
   end
   for (n = 0; n < DATA_WIDTH; n = n + 1) begin : loop2
       assign data_out[n] = ^{(state_in & output_mask_state[n]), (data_in & output_mask_data[n])};
   end
endgenerate
endmodule