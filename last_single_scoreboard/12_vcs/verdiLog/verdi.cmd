verdiSetActWin -dock widgetDock_<Message>
debImport "-sverilog" "-f" "../12_vcs/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
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
           {/earth/mars/mars04/workspace/School_Pj/milestone_3/last_single_scoreboard/12_vcs/tbench.fsdb}
schZoomIn -win $_nSchema2 -pos 23606 20433
schZoomIn -win $_nSchema2 -pos 23606 20433
schZoomIn -win $_nSchema2 -pos 23606 20432
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 23605 20431
schZoomIn -win $_nSchema2 -pos 23605 20431
schZoomIn -win $_nSchema2 -pos 23604 20431
schSelect -win $_nSchema2 -signal "o_pc_debug\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "o_insn_vld"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
srcHBSelect "tbench.singlecycle" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tbench.scoreboard" -win $_nTrace1
srcSetScope "tbench.scoreboard" -delim "." -win $_nTrace1
srcHBSelect "tbench.scoreboard" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "insn_vld" -line 24 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
debExit
