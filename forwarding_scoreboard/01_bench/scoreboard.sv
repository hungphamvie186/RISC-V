module scoreboard(
  input  logic [31:0]       i_io_sw  ,
  input  logic [31:0]       o_io_lcd ,
  input  logic [31:0]       o_io_ledg,
  input  logic [31:0]       o_io_ledr,
  input  logic [ 6:0]       o_io_hex0,
  input  logic [ 6:0]       o_io_hex1,
  input  logic [ 6:0]       o_io_hex2,
  input  logic [ 6:0]       o_io_hex3,
  input  logic [ 6:0]       o_io_hex4,
  input  logic [ 6:0]       o_io_hex5,
  input  logic [ 6:0]       o_io_hex6,
  input  logic [ 6:0]       o_io_hex7,
  input  logic [31:0]       o_pc_debug,
  input  logic              o_insn_vld,
  input  logic i_clk,
  input  logic i_reset
);

  logic [31:0] pc_debug;

  assign pc_debug = o_insn_vld ? o_pc_debug : 32'h0;

  logic insn_vld;

  always_comb begin
    case (o_pc_debug)
      32'h0004: begin
        $display("TEST for FORWARDING");
        insn_vld = 1;
      end
      32'h0020:                                                                            $write("[%9t]:: 1::ADD...............", $time);
      32'h0108: begin if (o_io_ledr == 32'h1) $write("PASSED_add\n"); else $write("FAILED_add\n"); $write("[%9t]:: 2::SUB...............", $time); end
      32'h0200: begin if (o_io_ledr == 32'h1) $write("PASSED_sub\n"); else $write("FAILED_sub\n"); $write("[%9t]:: 3::XOR...............", $time); end
      32'h02E4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 4::OR................", $time); end
      32'h03CC: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 5::AND...............", $time); end
      32'h04B4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 6::SLL...............", $time); end
      32'h057C: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 7::SRL...............", $time); end
      32'h0660: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 8::SRA...............", $time); end
      32'h073C: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]:: 9::SLT...............", $time); end
      32'h0808: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::10::SLTU..............", $time); end
      32'h08D4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::11::ADDI..............", $time); end
      32'h0964: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::12::XORI..............", $time); end
      32'h09F4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::13::ORI...............", $time); end
      32'h0A80: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::14::ANDI..............", $time); end
      32'h0B04: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::15::SLLI..............", $time); end
      32'h0B94: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::16::SRLI..............", $time); end
      32'h0C34: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::17::SRAI..............", $time); end
      32'h0CD8: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::18::SLTI..............", $time); end
      32'h0D50: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::19::SLTIU.............", $time); end
      32'h0DC8: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::20::LUI...............", $time); end
      32'h0E34: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::21::AUIPC.............", $time); end
      32'h0E80: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::22::LW................", $time); end
      32'h0F34: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::23::LH................", $time); end
      32'h0FB4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::24::LB................", $time); end
      32'h1024: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::25::LHU...............", $time); end
      32'h10A8: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::26::LBU...............", $time); end
      32'h1118: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::27::SW................", $time); end
      32'h1180: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::28::SH................", $time); end
      32'h1210: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::29::SB................", $time); end
      32'h1298: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::30::misaligned........", $time); end
      32'h12F0: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::31::BEQ...............", $time); end
      32'h1328: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::32::BNE...............", $time); end
      32'h1360: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::33::BLT...............", $time); end
      32'h13C8: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::34::BGE...............", $time); end
      32'h1434: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::35::BLTU..............", $time); end
      32'h149C: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::36::BGEU..............", $time); end
      32'h1508: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::37::JAL...............", $time); end
      32'h15C4: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::38::JALR..............", $time); end
      32'h1664: begin if (o_io_ledr == 32'h1) $write("PASSED\n"); else $write("FAILED\n"); $write("[%9t]::39::illegal_insn......", $time); end
      32'h166C: begin
        if (o_insn_vld == 1) insn_vld = insn_vld & 1'b0;
      end
      32'h1674: begin
        if (o_insn_vld == 1) insn_vld = insn_vld & 1'b0;
      end
      32'h1680: begin if (insn_vld) $write("PASSED\n"); else $write("FAILED\n"); end
    endcase
  end
endmodule : scoreboard
