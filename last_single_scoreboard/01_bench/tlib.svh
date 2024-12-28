// TASK: Clock Generator
task automatic tsk_clock_gen(ref logic i_clk);
  begin
    i_clk = 1'b1;
    forever #10 i_clk = !i_clk;
  end
endtask

// TASK: Reset is low active for a period of "RESETPERIOD"
task automatic tsk_reset(ref logic i_reset, input int RESETPERIOD);
  begin
    i_reset = 1'b0;
    #RESETPERIOD i_reset = 1'b1;
  end
endtask

// TASK: Timeout, assume after a period of "FINISH",
// the design is supposed to be "PASSED"
task tsk_timeout(input int FINISH);
  begin
    #FINISH $display("\nTimeout...\n\nDUT is considered\tP A S S E D\n");
            $finish;
  end
endtask