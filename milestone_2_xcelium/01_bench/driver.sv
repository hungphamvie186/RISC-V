module driver (
  output logic [31:0]   i_io_sw ,
  input  logic i_clk,
  input  logic i_reset
);

  logic [63:0] counter;

  always @(posedge i_clk) begin
    if (!i_reset)
      counter <= '0;
    else
      counter <= counter + 1;
  end

  always_comb begin
    if (counter > 2) begin
      i_io_sw = 32'hA5A5A5A5;
    end
    else begin
      i_io_sw = 32'h0;
    end
  end
endmodule : driver
