module decoder (
    input logic [4:0] x,
    output logic [31:0] en 
);
  logic [31:0] y;
   assign y=32'b1 << x;  
  assign en=y;
endmodule
