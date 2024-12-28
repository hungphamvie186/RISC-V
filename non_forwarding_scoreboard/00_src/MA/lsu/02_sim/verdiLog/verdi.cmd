verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "500" "180" "900" "700"
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "design_test"
verdiSetActWin -win $_nSchema_3
schSetOptions -win $_nSchema3 -portName on
schSetOptions -win $_nSchema3 -pinName on
schSetOptions -win $_nSchema3 -instName on
schSetOptions -win $_nSchema3 -localNetName on
schSetOptions -win $_nSchema3 -completeName on
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/earth/mars/mars04/workspace/School_Pj/milestone_3/test for debug/02_sim/design_test.fsdb}
schZoomIn -win $_nSchema3 -pos 1234 30068
schZoomIn -win $_nSchema3 -pos 1145 30157
schZoomIn -win $_nSchema3 -pos 1144 30156
schZoomIn -win $_nSchema3 -pos 1144 30156
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "i_io_sw\[31:0\]"
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -port "i_clk"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -port "i_rst"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -port "funct3\[2:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_lsu_addr\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_st_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_lsu_rden"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_lsu_wren"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
schZoomOut -win $_nSchema3 -pos 3169 32612
schZoomOut -win $_nSchema3 -pos 3216 32659
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 53517 23424
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_io_sw\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_io_btn\[3:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
verdiSetActWin -win $_nSchema_3
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 4 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 9)}
schZoomOut -win $_nSchema3 -pos 32921 26137
schZoomOut -win $_nSchema3 -pos 32920 26137
schZoomOut -win $_nSchema3 -pos 32919 26137
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 53475 23375
schZoomIn -win $_nSchema3 -pos 53086 23051
schZoomIn -win $_nSchema3 -pos 52844 22518
schZoomIn -win $_nSchema3 -pos 52771 22408
schZoomIn -win $_nSchema3 -pos 52743 22326
schSelect -win $_nSchema3 -port "o_io_ledr\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_ledg\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvZoomOut -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 95.619159 -snap {("G2" 0)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
debReload
wvSelectSignal -win $_nWave2 {( "G1" 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 9 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 104.664215 -snap {("G1" 11)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
debReload
wvSetCursor -win $_nWave2 79.826205 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 109.402101 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 159.508838 -snap {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 0)}
debReload
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 1310 20586
schZoomOut -win $_nSchema3 -pos 1310 20587
schZoomOut -win $_nSchema3 -pos 1310 20587
schZoomOut -win $_nSchema3 -pos 1310 20587
schZoomOut -win $_nSchema3 -pos 1310 20587
schSelect -win $_nSchema3 -port "i_rst"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomIn -win $_nSchema3 -pos 1186 20316
schZoomIn -win $_nSchema3 -pos 1185 20316
schZoomIn -win $_nSchema3 -pos 1185 20315
schSelect -win $_nSchema3 -port "i_lsu_wren"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "i_lsu_rden"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomOut -win $_nSchema3 -pos 313 21435
schZoomOut -win $_nSchema3 -pos 313 21434
schZoomOut -win $_nSchema3 -pos 313 21434
schZoomOut -win $_nSchema3 -pos 313 27918
schZoomOut -win $_nSchema3 -pos 312 27918
schZoomIn -win $_nSchema3 -pos 231 33470
schZoomIn -win $_nSchema3 -pos 231 33470
schZoomIn -win $_nSchema3 -pos 231 33470
schSelect -win $_nSchema3 -port "i_io_sw\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
schZoomOut -win $_nSchema3 -pos -6931 33344
schZoomOut -win $_nSchema3 -pos -6932 33343
schZoomOut -win $_nSchema3 -pos -6933 33343
schZoomOut -win $_nSchema3 -pos -6933 33343
schZoomOut -win $_nSchema3 -pos -6933 33342
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos -2997 23423
schZoomIn -win $_nSchema3 -pos -2997 23422
schZoomIn -win $_nSchema3 -pos -2997 23422
schZoomIn -win $_nSchema3 -pos -2997 23422
schZoomIn -win $_nSchema3 -pos -2997 23421
schSelect -win $_nSchema3 -port "i_lsu_addr\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomOut -win $_nSchema3 -pos 887 525
schZoomOut -win $_nSchema3 -pos 886 524
schZoomOut -win $_nSchema3 -pos 886 524
schZoomIn -win $_nSchema3 -pos -459 17344
schZoomIn -win $_nSchema3 -pos -458 17344
schZoomIn -win $_nSchema3 -pos -459 17343
schSelect -win $_nSchema3 -port "i_st_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomOut -win $_nSchema3 -pos 432 19388
schZoomOut -win $_nSchema3 -pos 432 19362
schZoomOut -win $_nSchema3 -pos -9252 14584
schZoomOut -win $_nSchema3 -pos -9253 14584
schZoomOut -win $_nSchema3 -pos -9253 14584
schZoomOut -win $_nSchema3 -pos -9254 14583
schZoomOut -win $_nSchema3 -pos -9253 14583
schZoomOut -win $_nSchema3 -pos -9253 14583
schZoomIn -win $_nSchema3 -pos 52427 23515
schZoomIn -win $_nSchema3 -pos 52427 23515
schZoomIn -win $_nSchema3 -pos 52428 23514
schZoomIn -win $_nSchema3 -pos 52428 23514
schZoomIn -win $_nSchema3 -pos 52429 23514
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_ledr\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_ledg\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
debReload
debReload
debReload
debReload
debReload
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 6)}
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "o_io_hex0\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
schSelect -win $_nSchema3 -port "o_io_hex0\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex1\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomIn -win $_nSchema3 -pos 54835 24034
schZoomIn -win $_nSchema3 -pos 54835 24034
schSelect -win $_nSchema3 -port "o_io_hex2\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_ledr\[31:0\]"
schZoomOut -win $_nSchema3 -pos 54286 17758
schZoomOut -win $_nSchema3 -pos 54286 17758
schZoomOut -win $_nSchema3 -pos 54286 17758
schZoomOut -win $_nSchema3 -pos 54284 17758
schSelect -win $_nSchema3 -port "o_io_hex3\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex4\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex5\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex6\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex7\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
debReload
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
debReload
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
verdiSetActWin -win $_nSchema_3
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "i_lsu_wren"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
schSelect -win $_nSchema3 -port "i_lsu_wren"
schSelect -win $_nSchema3 -port "i_lsu_wren"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvScrollDown -win $_nWave2 1
wvSelectGroup -win $_nWave2 {G3}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 13)}
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G1" 13 14 )} 
wvSetPosition -win $_nWave2 {("G1" 14)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 13)}
schZoomOut -win $_nSchema3 -pos -4247 16375
schZoomOut -win $_nSchema3 -pos -4248 16376
schZoomOut -win $_nSchema3 -pos -4249 16375
schZoomOut -win $_nSchema3 -pos -4480 16221
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos -4480 16220
schZoomOut -win $_nSchema3 -pos -4480 16220
schZoomOut -win $_nSchema3 -pos -4480 16220
schZoomIn -win $_nSchema3 -pos 51601 22409
schZoomIn -win $_nSchema3 -pos 51601 22409
schZoomIn -win $_nSchema3 -pos 51601 22409
schZoomIn -win $_nSchema3 -pos 51601 22013
schZoomIn -win $_nSchema3 -pos 53084 19045
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -signal "o_ld_data_op\[31:0\]"
verdiSetActWin -win $_nSchema_3
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
schSelect -win $_nSchema3 -signal "o_ld_data_op\[31:0\]"
schSelect -win $_nSchema3 -inst "output_buf"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 69794 17187
schZoomIn -win $_nSchema3 -pos 69793 17187
schZoomIn -win $_nSchema3 -pos 69653 17116
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomIn -win $_nSchema3 -pos 54951 12594
schZoomIn -win $_nSchema3 -pos 54912 12515
schZoomIn -win $_nSchema3 -pos 54912 12485
schSelect -win $_nSchema3 -signal "byte_offset\[1:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSelectSignal -win $_nWave2 {( "G1" 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSelectSignal -win $_nWave2 {( "G1" 5 6 7 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -signal "read_en"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -inst "output_bank:Always2:77:114:Combo"
schPushViewIn -win $_nSchema3
srcSetScope "design_test.dut.output_buf" -delim "." -win $_nTrace1
srcSelect -win $_nTrace1 -range {77 114 1 3 1 1}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_3
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -signal "read_en"
schZoomOut -win $_nSchema3 -pos 52257 6531
schZoomOut -win $_nSchema3 -pos 52201 6531
schZoomOut -win $_nSchema3 -pos 52131 6496
schZoomOut -win $_nSchema3 -pos 52131 6496
schZoomOut -win $_nSchema3 -pos 52077 6496
schZoomOut -win $_nSchema3 -pos 52009 6223
schZoomIn -win $_nSchema3 -pos 44094 -415
schZoomIn -win $_nSchema3 -pos 44094 -415
schZoomIn -win $_nSchema3 -pos 44093 -415
schZoomIn -win $_nSchema3 -pos 44093 -415
schZoomIn -win $_nSchema3 -pos 44092 -415
schSelect -win $_nSchema3 -signal "i_lsu_rden"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schDeselectAll -win $_nSchema3
schSelect -win $_nSchema3 -signal "output_buf_en"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
verdiSetActWin -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
debReload
verdiSetActWin -win $_nSchema_3
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 5 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 3)}
schZoomOut -win $_nSchema3 -pos 37979 314
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 37979 314
schSelect -win $_nSchema3 -port "i_lsu_rden"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -port "i_lsu_wren"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "output_buf_en"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 168 22639
schZoomOut -win $_nSchema3 -pos 168 22638
schZoomOut -win $_nSchema3 -pos 168 22639
schZoomOut -win $_nSchema3 -pos 168 22639
schZoomOut -win $_nSchema3 -pos 168 22638
schZoomIn -win $_nSchema3 -pos 62904 25541
schZoomIn -win $_nSchema3 -pos 62904 25541
schZoomIn -win $_nSchema3 -pos 62903 25541
schZoomIn -win $_nSchema3 -pos 62905 25541
schZoomIn -win $_nSchema3 -pos 62935 25541
schZoomIn -win $_nSchema3 -pos 63096 29137
schZoomIn -win $_nSchema3 -pos 63113 29154
schZoomOut -win $_nSchema3 -pos 62647 29379
schZoomOut -win $_nSchema3 -pos 62647 29378
schZoomOut -win $_nSchema3 -pos 62646 29378
schZoomOut -win $_nSchema3 -pos 62645 29378
schZoomOut -win $_nSchema3 -pos 62645 29377
schZoomOut -win $_nSchema3 -pos 62645 29377
schZoomIn -win $_nSchema3 -pos 62448 32483
schZoomIn -win $_nSchema3 -pos 62485 31558
schSelect -win $_nSchema3 -port "o_io_hex0\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex1\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex3\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomIn -win $_nSchema3 -pos 62678 28518
schZoomIn -win $_nSchema3 -pos 62679 28518
schZoomIn -win $_nSchema3 -pos 62681 28518
schZoomOut -win $_nSchema3 -pos 62446 26635
schZoomOut -win $_nSchema3 -pos 62446 26635
schZoomOut -win $_nSchema3 -pos 62445 26634
schZoomOut -win $_nSchema3 -pos 62443 26633
schZoomOut -win $_nSchema3 -pos 62442 26633
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
schZoomOut -win $_nSchema3 -pos 62691 18603
schZoomOut -win $_nSchema3 -pos 62689 18603
schZoomOut -win $_nSchema3 -pos 62689 18603
schZoomOut -win $_nSchema3 -pos 62479 18533
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 62131 29256
schZoomIn -win $_nSchema3 -pos 62130 29255
schZoomIn -win $_nSchema3 -pos 62130 29256
schZoomIn -win $_nSchema3 -pos 62130 29255
schZoomIn -win $_nSchema3 -pos 62131 29254
schSelect -win $_nSchema3 -port "o_io_hex0\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex1\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex2\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex1\[6:0\]"
schSelect -win $_nSchema3 -port "o_io_hex3\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex4\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex5\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_hex6\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "o_io_ledg\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schZoomOut -win $_nSchema3 -pos 62274 24164
schZoomOut -win $_nSchema3 -pos 62248 24138
schZoomOut -win $_nSchema3 -pos 62182 24138
schZoomOut -win $_nSchema3 -pos 62181 24138
schZoomOut -win $_nSchema3 -pos 62181 24138
schZoomIn -win $_nSchema3 -pos 61865 16066
schZoomIn -win $_nSchema3 -pos 61913 15923
schZoomIn -win $_nSchema3 -pos 61914 15923
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 12)}
verdiSetActWin -win $_nSchema_3
schZoomIn -win $_nSchema3 -pos 62021 23425
schZoomIn -win $_nSchema3 -pos 62021 23425
schZoomIn -win $_nSchema3 -pos 62305 23409
schSelect -win $_nSchema3 -port "o_io_hex7\[6:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
verdiSetActWin -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 6 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G1" 5)}
schZoomOut -win $_nSchema3 -pos 58090 24461
schZoomOut -win $_nSchema3 -pos 58090 24461
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 52856 25900
schZoomOut -win $_nSchema3 -pos 52856 25900
schSelect -win $_nSchema3 -signal "o_io_ledg\[31:0\]"
schZoomIn -win $_nSchema3 -pos 31740 24775
schZoomIn -win $_nSchema3 -pos 31738 24774
schZoomIn -win $_nSchema3 -pos 31723 24820
schSelect -win $_nSchema3 -signal "seven_seg_reg\[1:0\]\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
verdiSetActWin -win $_nWave2
schZoomOut -win $_nSchema3 -pos 35103 25411
schZoomOut -win $_nSchema3 -pos 35103 25425
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 35103 25425
schZoomOut -win $_nSchema3 -pos 35057 25221
schZoomOut -win $_nSchema3 -pos 35058 25108
schZoomOut -win $_nSchema3 -pos 35057 25072
schZoomOut -win $_nSchema3 -pos 35057 25071
schZoomOut -win $_nSchema3 -pos 35057 25072
schZoomOut -win $_nSchema3 -pos 34988 25002
schZoomIn -win $_nSchema3 -pos -476 13574
schZoomIn -win $_nSchema3 -pos -476 13573
schZoomIn -win $_nSchema3 -pos 251 14349
schZoomIn -win $_nSchema3 -pos 250 14349
schZoomOut -win $_nSchema3 -pos -432 27222
schZoomOut -win $_nSchema3 -pos -432 27222
schZoomOut -win $_nSchema3 -pos -432 27222
schZoomOut -win $_nSchema3 -pos -432 27222
schZoomIn -win $_nSchema3 -pos 1366 -3094
schZoomIn -win $_nSchema3 -pos 1366 -3095
schZoomIn -win $_nSchema3 -pos 1366 -3095
schZoomIn -win $_nSchema3 -pos 1365 -3096
schSelect -win $_nSchema3 -port "funct3\[2:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 143.121161 144.306429
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
schZoomOut -win $_nSchema3 -pos 12366 108
schZoomOut -win $_nSchema3 -pos 12366 134
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 12366 2
schZoomOut -win $_nSchema3 -pos 12365 -204
schZoomOut -win $_nSchema3 -pos 12363 -410
schZoomIn -win $_nSchema3 -pos 62093 15525
schZoomIn -win $_nSchema3 -pos 62093 15525
schSelect -win $_nSchema3 -port "o_ld_data\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
debReload
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 6 7 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G1" 5)}
schZoomOut -win $_nSchema3 -pos 40279 12414
schZoomOut -win $_nSchema3 -pos 40325 12413
schZoomOut -win $_nSchema3 -pos 40325 12583
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 40395 12653
schZoomOut -win $_nSchema3 -pos 40396 12653
schZoomOut -win $_nSchema3 -pos 40396 12653
schZoomOut -win $_nSchema3 -pos 40395 12653
schSelect -win $_nSchema3 -port "o_io_lcd\[31:0\]"
schPopViewUp -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 30170 11062
schZoomIn -win $_nSchema3 -pos 30260 11061
schZoomIn -win $_nSchema3 -pos 30796 10592
schZoomIn -win $_nSchema3 -pos 31700 6551
schZoomIn -win $_nSchema3 -pos 31700 6551
schZoomIn -win $_nSchema3 -pos 31700 6551
schZoomOut -win $_nSchema3 -pos 31827 6742
schZoomOut -win $_nSchema3 -pos 31827 6742
schZoomOut -win $_nSchema3 -pos 31826 6742
schZoomOut -win $_nSchema3 -pos 31826 6741
schZoomOut -win $_nSchema3 -pos 31825 6741
schZoomIn -win $_nSchema3 -pos 32472 3012
schZoomIn -win $_nSchema3 -pos 32472 3012
schZoomIn -win $_nSchema3 -pos 32472 3011
schZoomIn -win $_nSchema3 -pos 30204 1559
debReload
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 4)}
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 25841 3359
schZoomOut -win $_nSchema3 -pos 25841 3359
schZoomOut -win $_nSchema3 -pos 24336 2569
schZoomOut -win $_nSchema3 -pos 24336 2449
schZoomIn -win $_nSchema3 -pos 19059 8349
schZoomIn -win $_nSchema3 -pos 19059 8348
schSelect -win $_nSchema3 -signal "sram_buf_en"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
schZoomOut -win $_nSchema3 -pos 20465 3761
schZoomOut -win $_nSchema3 -pos 20465 3761
verdiSetActWin -win $_nSchema_3
schZoomOut -win $_nSchema3 -pos 20729 4464
debReload
schZoomOut -win $_nSchema3 -pos 16004 -1634
schZoomOut -win $_nSchema3 -pos 16004 -1633
schZoomIn -win $_nSchema3 -pos 25531 20278
schZoomIn -win $_nSchema3 -pos 25530 20277
schZoomIn -win $_nSchema3 -pos 25530 20277
schSelect -win $_nSchema3 -inst "dmem_bank"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -port "rdata\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
schSelect -win $_nSchema3 -port "wdata\[31:0\]"
schAddSelectedToWave -win $_nSchema3 -clipboard
wvDrop -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
debExit
