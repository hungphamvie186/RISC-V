module decoder_5to32 (
  input  logic [4:0]  x,  // 5-bit input
  output logic [31:0] en   // 32-bit output
);

  always_comb begin
    en = 32'b0;            // Initialize output to 0
    en[x] = 1'b1;      // Set the selected output bit to 1
  end

endmodule

