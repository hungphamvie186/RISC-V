verdiSetActWin -dock widgetDock_<Message>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_<Inst._Tree>
schCreateWindow -delim "." -win $_nSchema1 -scope "tbench"
verdiSetActWin -win $_nSchema_2
wvCreateWindow
verdiSetActWin -win $_nSchema_2
schSetOptions -win $_nSchema2 -portName on
schSetOptions -win $_nSchema2 -pinName on
schSetOptions -win $_nSchema2 -instName on
schSetOptions -win $_nSchema2 -localNetName on
schSetOptions -win $_nSchema2 -completeName on
verdiSetActWin -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/earth/mars/mars04/workspace/School_Pj/milestone_3/forwarding_scoreboard/12_vcs/tbench.fsdb}
schZoomIn -win $_nSchema2 -pos 22204 14699
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 23063 18623
schZoomIn -win $_nSchema2 -pos 23614 19359
schZoomIn -win $_nSchema2 -pos 24407 19842
schZoomIn -win $_nSchema2 -pos 26969 19454
schSelect -win $_nSchema2 -instport "dut" "o_pc_debug\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -instport "dut" "o_io_ledr\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomIn -win $_nWave3
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -win $_nSchema_2
schZoomOut -win $_nSchema2 -pos 20313 22337
schZoomOut -win $_nSchema2 -pos 20215 22118
schZoomOut -win $_nSchema2 -pos 20245 22360
schZoomOut -win $_nSchema2 -pos 20132 22057
schZoomOut -win $_nSchema2 -pos 20226 22293
schZoomOut -win $_nSchema2 -pos 22950 22352
schZoomOut -win $_nSchema2 -pos 20804 18577
schZoomIn -win $_nSchema2 -pos 12106 19503
schZoomIn -win $_nSchema2 -pos 12106 19503
schZoomIn -win $_nSchema2 -pos 12106 19502
schZoomIn -win $_nSchema2 -pos 12105 19502
schZoomIn -win $_nSchema2 -pos 12251 19765
schZoomIn -win $_nSchema2 -pos 12251 19765
schZoomIn -win $_nSchema2 -pos 12250 19765
schZoomOut -win $_nSchema2 -pos 12509 22184
schZoomOut -win $_nSchema2 -pos 12525 22198
schDeselectAll -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 14975 22951
schZoomOut -win $_nSchema2 -pos 14975 22902
schZoomOut -win $_nSchema2 -pos 14221 17336
schZoomOut -win $_nSchema2 -pos 14711 17260
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 2902.343613 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 2617.663053 -snap {("G1" 2)}
wvSetCursor -win $_nWave3 4798.698791 -snap {("G1" 1)}
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvSetCursor -win $_nWave3 3622.118336 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 3639.503408 -snap {("G1" 2)}
debExit
