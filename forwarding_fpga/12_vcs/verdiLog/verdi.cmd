verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "500" "180" "900" "700"
schCreateWindow -delim "." -win $_nSchema1 -scope "design_test"
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
           {/earth/mars/mars04/workspace/School_Pj/milestone_3/forwarding_fpga/12_vcs/design_test.fsdb}
schZoomIn -win $_nSchema2 -pos 20015 17047
schZoomIn -win $_nSchema2 -pos 19573 17489
schZoomIn -win $_nSchema2 -pos 18950 17738
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 18764 17769
schZoomIn -win $_nSchema2 -pos 18741 17769
schSelect -win $_nSchema2 -instport "dut" "o_pc_debug\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomOut -win $_nSchema2 -pos 9989 15074
schZoomOut -win $_nSchema2 -pos 10055 15008
schZoomOut -win $_nSchema2 -pos 10903 15090
schZoomOut -win $_nSchema2 -pos 11074 15158
schZoomOut -win $_nSchema2 -pos 11202 15200
schSelect -win $_nSchema2 -inst "dut"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "ID_stage_block"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "regfile_block"
schPushViewIn -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 58246 201446
schZoomIn -win $_nSchema2 -pos 58246 201446
schZoomIn -win $_nSchema2 -pos 58245 201446
schZoomIn -win $_nSchema2 -pos 58245 201446
schZoomIn -win $_nSchema2 -pos 57834 204525
schZoomIn -win $_nSchema2 -pos 57680 204217
schZoomIn -win $_nSchema2 -pos 57449 204101
schZoomIn -win $_nSchema2 -pos 57189 203841
schZoomIn -win $_nSchema2 -pos 56864 203451
schZoomIn -win $_nSchema2 -pos 56669 203305
schZoomIn -win $_nSchema2 -pos 56668 203452
schSelect -win $_nSchema2 -signal "Q\[1\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[2\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[3\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[4\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[5\]\[31:0\]"
schSelect -win $_nSchema2 -instpin "register_loop\[5\].register_inst" "Q\[31:0\]"
schSelect -win $_nSchema2 -signal "Q\[5\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -signal "Q\[6\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[7\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvSetCursor -win $_nWave3 114.817146 -snap {("G1" 7)}
wvSetCursor -win $_nWave3 170.858849 -snap {("G1" 7)}
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -instpin "register_loop\[8\].register_inst" "Q\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomOut -win $_nSchema2 -pos 55627 161894
schZoomOut -win $_nSchema2 -pos 55626 161791
schZoomOut -win $_nSchema2 -pos 55626 161790
schZoomOut -win $_nSchema2 -pos 54608 135710
schZoomOut -win $_nSchema2 -pos 54608 135709
schZoomOut -win $_nSchema2 -pos 54608 135709
schZoomOut -win $_nSchema2 -pos 54609 135709
schSelect -win $_nSchema2 -port "i_rst_n"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -port "ID_forward_rs1"
schPopViewUp -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 83738 24728
schZoomIn -win $_nSchema2 -pos 83737 24728
schZoomIn -win $_nSchema2 -pos 83737 24728
schZoomIn -win $_nSchema2 -pos 83737 24728
schSelect -win $_nSchema2 -inst "hazard_detect_inst"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "hazard_detect:Always0:54:83:Combo"
schPushViewIn -win $_nSchema2
srcSetScope "design_test.dut.hazard_detect_inst" -delim "." -win $_nTrace1
srcSelect -win $_nTrace1 -range {54 83 1 3 1 1}
verdiSetActWin -win $_nWave3
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
debReload
wvZoomIn -win $_nWave3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 5 6 7 8 9 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -port "MEM_rd_wren"
schPopViewUp -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 21407 37216
schZoomIn -win $_nSchema2 -pos 21406 37215
schZoomIn -win $_nSchema2 -pos 21406 37215
schZoomIn -win $_nSchema2 -pos 21405 37214
schZoomIn -win $_nSchema2 -pos 29584 38117
schZoomIn -win $_nSchema2 -pos 29668 38117
schZoomIn -win $_nSchema2 -pos 27604 36737
schSelect -win $_nSchema2 -instport "IF_buf_block" "IF_inst\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -instport "IF_buf_block" "ID_inst\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomOut -win $_nSchema2 -pos 41551 42917
schZoomOut -win $_nSchema2 -pos 41550 42917
schZoomOut -win $_nSchema2 -pos 54994 40165
schZoomOut -win $_nSchema2 -pos 54994 40118
schZoomOut -win $_nSchema2 -pos 54993 40118
schZoomIn -win $_nSchema2 -pos 63491 39609
schZoomIn -win $_nSchema2 -pos 63436 39609
schZoomIn -win $_nSchema2 -pos 61434 39892
schZoomIn -win $_nSchema2 -pos 61434 39892
schZoomOut -win $_nSchema2 -pos 61595 42554
schZoomOut -win $_nSchema2 -pos 61653 42468
schZoomOut -win $_nSchema2 -pos 61688 42360
schZoomOut -win $_nSchema2 -pos 73762 35504
schZoomOut -win $_nSchema2 -pos 73761 35448
schZoomOut -win $_nSchema2 -pos 73762 35448
schZoomOut -win $_nSchema2 -pos 73761 35448
schZoomOut -win $_nSchema2 -pos 73760 35448
schZoomOut -win $_nSchema2 -pos 73760 35447
schZoomOut -win $_nSchema2 -pos 120500 21666
schZoomOut -win $_nSchema2 -pos 120500 21666
schZoomIn -win $_nSchema2 -pos 127991 11233
schZoomIn -win $_nSchema2 -pos 127991 11233
schZoomIn -win $_nSchema2 -pos 126036 11233
schZoomIn -win $_nSchema2 -pos 123440 12023
schZoomIn -win $_nSchema2 -pos 122001 12361
schZoomIn -win $_nSchema2 -pos 121431 14041
schZoomIn -win $_nSchema2 -pos 121479 15612
schZoomIn -win $_nSchema2 -pos 121478 15612
schZoomIn -win $_nSchema2 -pos 121479 15639
schSelect -win $_nSchema2 -instport "ID_buf_block" "EX_inst\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomOut -win $_nSchema2 -pos 120353 6448
schZoomOut -win $_nSchema2 -pos 120353 6448
schZoomOut -win $_nSchema2 -pos 120352 6447
schZoomOut -win $_nSchema2 -pos 117017 5819
schZoomOut -win $_nSchema2 -pos 116918 5769
schZoomOut -win $_nSchema2 -pos 116917 5769
schZoomIn -win $_nSchema2 -pos 157512 30326
schZoomIn -win $_nSchema2 -pos 157513 30327
schZoomIn -win $_nSchema2 -pos 157514 30327
schZoomIn -win $_nSchema2 -pos 157514 30326
schSelect -win $_nSchema2 -inst "EX_stage_block"
schPushViewIn -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 39533 9066
schZoomIn -win $_nSchema2 -pos 39533 9065
schZoomIn -win $_nSchema2 -pos 39533 9065
schZoomIn -win $_nSchema2 -pos 39532 9064
schZoomIn -win $_nSchema2 -pos 39558 9064
schSelect -win $_nSchema2 -port "MEM_inst\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -port "MEM_inst\[31:0\]"
schPopViewUp -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 160141 39290
schZoomOut -win $_nSchema2 -pos 160140 39290
schZoomOut -win $_nSchema2 -pos 160140 39290
schZoomOut -win $_nSchema2 -pos 160188 39338
schZoomOut -win $_nSchema2 -pos 160187 39277
schZoomIn -win $_nSchema2 -pos 203039 32996
schZoomIn -win $_nSchema2 -pos 203039 32996
schZoomIn -win $_nSchema2 -pos 185500 37423
schZoomIn -win $_nSchema2 -pos 185946 37614
schZoomIn -win $_nSchema2 -pos 185946 37613
schSelect -win $_nSchema2 -instport "MA_stage_block" "WB_inst\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomIn -win $_nWave3
schZoomOut -win $_nSchema2 -pos 182928 35198
verdiSetActWin -win $_nSchema_2
schZoomOut -win $_nSchema2 -pos 182928 35130
schZoomOut -win $_nSchema2 -pos 188034 34513
schZoomOut -win $_nSchema2 -pos 188069 34442
schZoomOut -win $_nSchema2 -pos 188069 34310
schZoomOut -win $_nSchema2 -pos 188068 34310
schZoomOut -win $_nSchema2 -pos 187999 34104
schZoomOut -win $_nSchema2 -pos 146303 27356
schZoomOut -win $_nSchema2 -pos 146303 27248
schZoomOut -win $_nSchema2 -pos 146436 26847
schZoomOut -win $_nSchema2 -pos 146437 26847
schSelect -win $_nSchema2 -inst "hazard_detect_inst"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -port "MEM_rd_wren"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "ID_stage_block"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "regfile_block"
schPushViewIn -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 64734 186524
schZoomIn -win $_nSchema2 -pos 64734 187011
schZoomIn -win $_nSchema2 -pos 64734 187011
schZoomIn -win $_nSchema2 -pos 64733 187011
schZoomIn -win $_nSchema2 -pos 58164 192554
schZoomIn -win $_nSchema2 -pos 57855 192554
schZoomIn -win $_nSchema2 -pos 57624 192323
schZoomIn -win $_nSchema2 -pos 57451 191977
schZoomIn -win $_nSchema2 -pos 57191 214901
schZoomIn -win $_nSchema2 -pos 57190 214900
schSelect -win $_nSchema2 -signal "Q\[4\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[5\]\[31:0\]"
schSelect -win $_nSchema2 -signal "Q\[7\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomOut -win $_nSchema2 -pos 54741 173099
schZoomOut -win $_nSchema2 -pos 49579 176204
schZoomOut -win $_nSchema2 -pos 49579 176204
schZoomOut -win $_nSchema2 -pos 49579 176204
schZoomOut -win $_nSchema2 -pos 40123 133137
schZoomOut -win $_nSchema2 -pos 40123 133137
schZoomOut -win $_nSchema2 -pos 40123 133137
schSelect -win $_nSchema2 -port "i_clk"
schSelect -win $_nSchema2 -port "i_clk"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -port "ID_funct3\[2:0\]"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "EX_stage_block"
schPushViewIn -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 37558 9028
schZoomOut -win $_nSchema2 -pos 37532 9003
schZoomOut -win $_nSchema2 -pos 37404 9002
schZoomOut -win $_nSchema2 -pos 37085 9002
schZoomIn -win $_nSchema2 -pos 29212 3186
schZoomIn -win $_nSchema2 -pos 29211 3186
schSelect -win $_nSchema2 -instport "brc_taken_block" "brc_taken"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -inst "brc_taken_block"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "proc_decoder_o_pc"
schPushViewIn -win $_nSchema2
srcSetScope "design_test.dut.EX_stage_block.brc_taken_block" -delim "." -win \
           $_nTrace1
srcSelect -win $_nTrace1 -range {27 51 1 6 1 1}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "brc_taken" -line 49 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_br_less" -line 4 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_inst" -line 3 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_br_less" -line 4 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_br_equal" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "brc_taken" -line 6 -pos 1 -win $_nTrace1
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 8 9 10 11 12 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 7)}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -port "i_br_less"
schPopViewUp -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 17883 5986
schZoomOut -win $_nSchema2 -pos 17882 5951
schZoomOut -win $_nSchema2 -pos 17882 5950
schZoomOut -win $_nSchema2 -pos 17882 5950
schSelect -win $_nSchema2 -port "ID_forward_B\[1:0\]"
schPopViewUp -win $_nSchema2
schDeselectAll -win $_nSchema2
schSelect -win $_nSchema2 -inst "hazard_detect_inst"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "hazard_detect:Always0:54:83:Combo"
schPushViewIn -win $_nSchema2
srcSetScope "design_test.dut.hazard_detect_inst" -delim "." -win $_nTrace1
srcSelect -win $_nTrace1 -range {54 83 1 3 1 1}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "ID_forward_A" -line 56 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "ID_forward_B" -line 66 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -port "EX_mem_rden"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "EX_stage_block"
schPushViewIn -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 12582 13962
schZoomIn -win $_nSchema2 -pos 12581 13961
schZoomIn -win $_nSchema2 -pos 12303 17989
schZoomIn -win $_nSchema2 -pos 12303 17988
schZoomOut -win $_nSchema2 -pos 12547 17699
schZoomOut -win $_nSchema2 -pos 12547 17476
schSelect -win $_nSchema2 -inst "forward_a_sel"
schZoomIn -win $_nSchema2 -pos 6461 16885
schZoomIn -win $_nSchema2 -pos 6433 16885
schSelect -win $_nSchema2 -signal "EX_forward_dataA\[31:0\]"
schZoomOut -win $_nSchema2 -pos 8781 15554
schZoomOut -win $_nSchema2 -pos 5871 16312
schZoomOut -win $_nSchema2 -pos 5872 16221
schSelect -win $_nSchema2 -port "EX_rs1_data\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schZoomIn -win $_nSchema2 -pos 3731 16030
schSelect -win $_nSchema2 -signal "WB_wb_data\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "EX_forward_dataA\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -signal "operand_b\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -signal "ID_forward_B\[1:0\]"
schSelect -win $_nSchema2 -signal "ID_forward_B\[1:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -port "WB_wb_data\[31:0\]"
schSelect -win $_nSchema2 -port "WB_wb_data\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "EX_forward_dataB\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 8 9 10 11 12 13 14 15 16 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 7)}
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -instport "BRC_block" "rs1_data\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -instport "BRC_block" "rs2_data\[31:0\]"
schSelect -win $_nSchema2 -instport "BRC_block" "rs2_data\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -instport "BRC_block" "br_less"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -instport "BRC_block" "br_equal"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -inst "brc_taken_block"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "proc_decoder_o_pc"
schPushViewIn -win $_nSchema2
srcSetScope "design_test.dut.EX_stage_block.brc_taken_block" -delim "." -win \
           $_nTrace1
srcSelect -win $_nTrace1 -range {27 51 1 6 1 1}
verdiSetActWin -win $_nWave3
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_inst\[6:2\]" -line 29 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvSetCursor -win $_nWave3 80.812929 -snap {("G1" 3)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "BNE" -line 34 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nSchema_2
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -port "i_inst\[31:0\]"
schPopViewUp -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 6418 5665
schZoomOut -win $_nSchema2 -pos 6417 5665
schZoomOut -win $_nSchema2 -pos 6417 5665
schDeselectAll -win $_nSchema2
schSelect -win $_nSchema2 -port "ID_forward_B\[1:0\]"
schPopViewUp -win $_nSchema2
schSelect -win $_nSchema2 -inst "ID_stage_block"
schSelect -win $_nSchema2 -inst "ID_stage_block"
schPushViewIn -win $_nSchema2
schSelect -win $_nSchema2 -inst "regfile_block"
schPushViewIn -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 61458 100789
schZoomOut -win $_nSchema2 -pos 61677 100353
schZoomOut -win $_nSchema2 -pos 61950 100079
schZoomOut -win $_nSchema2 -pos 61950 99738
schZoomOut -win $_nSchema2 -pos 61951 99738
schZoomIn -win $_nSchema2 -pos 49149 64451
schZoomIn -win $_nSchema2 -pos 49148 66051
schZoomIn -win $_nSchema2 -pos 49148 66351
schZoomIn -win $_nSchema2 -pos 48472 68601
schZoomIn -win $_nSchema2 -pos 48302 68938
schZoomIn -win $_nSchema2 -pos 60075 107101
schZoomIn -win $_nSchema2 -pos 60074 107101
schZoomOut -win $_nSchema2 -pos 60074 110935
schZoomOut -win $_nSchema2 -pos 58560 110134
schZoomOut -win $_nSchema2 -pos 58560 110133
schZoomOut -win $_nSchema2 -pos 58559 110133
schZoomOut -win $_nSchema2 -pos 58559 110133
schZoomOut -win $_nSchema2 -pos 58559 110132
schZoomIn -win $_nSchema2 -pos 54213 151318
schZoomIn -win $_nSchema2 -pos 54212 151317
schZoomIn -win $_nSchema2 -pos 54212 151317
schZoomIn -win $_nSchema2 -pos 59597 157823
schZoomIn -win $_nSchema2 -pos 59596 157822
schZoomIn -win $_nSchema2 -pos 59596 157821
schZoomIn -win $_nSchema2 -pos 59596 157822
schSelect -win $_nSchema2 -instport "register_loop\[8\].register_inst" \
          "Q\[31:0\]"
schDeselectAll -win $_nSchema2
schSelect -win $_nSchema2 -signal "Q\[8\]\[31:0\]"
schSelect -win $_nSchema2 -signal "Q\[8\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[8\]\[31:0\]"
wvScrollDown -win $_nWave3 1
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
debReload
wvSelectSignal -win $_nWave3 {( "G1" 6 7 8 9 10 11 12 13 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
schZoomOut -win $_nSchema2 -pos 58557 158076
schZoomOut -win $_nSchema2 -pos 58556 158075
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 57930 214998
schZoomIn -win $_nSchema2 -pos 57929 214998
schZoomIn -win $_nSchema2 -pos 57929 214998
schSelect -win $_nSchema2 -signal "Q\[1\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[2\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[3\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[4\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[5\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[6\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 11)}
schDeselectAll -win $_nSchema2
schSelect -win $_nSchema2 -signal "Q\[7\]\[31:0\]"
verdiSetActWin -win $_nSchema_2
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[8\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[9\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schDeselectAll -win $_nSchema2
schSelect -win $_nSchema2 -signal "Q\[10\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[11\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[12\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
verdiSetActWin -win $_nSchema_2
schSelect -win $_nSchema2 -signal "Q\[13\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[14\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -signal "Q\[15\]\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvSetCursor -win $_nWave3 97.887029 -snap {("G1" 10)}
verdiSetActWin -win $_nWave3
wvSetCursor -win $_nWave3 108.916553 -snap {("G1" 11)}
wvSetCursor -win $_nWave3 158.549413 -snap {("G1" 13)}
wvSetCursor -win $_nWave3 117.188697 -snap {("G1" 11)}
wvSetCursor -win $_nWave3 122.703459 -snap {("G1" 11)}
wvSetCursor -win $_nWave3 166.821557 -snap {("G1" 13)}
verdiSetActWin -win $_nSchema_2
wvScrollDown -win $_nWave3 1
verdiSetActWin -win $_nWave3
schZoomOut -win $_nSchema2 -pos 53554 114339
schZoomOut -win $_nSchema2 -pos 53555 114339
schZoomOut -win $_nSchema2 -pos 53555 114339
schZoomOut -win $_nSchema2 -pos 53555 114338
verdiSetActWin -win $_nSchema_2
schZoomOut -win $_nSchema2 -pos 55197 92878
schZoomOut -win $_nSchema2 -pos 55198 92878
schZoomOut -win $_nSchema2 -pos 55198 92878
schZoomOut -win $_nSchema2 -pos 55198 92878
schZoomOut -win $_nSchema2 -pos 55198 92878
debReload
schZoomOut -win $_nSchema2 -pos 69699 18211
schZoomOut -win $_nSchema2 -pos 69700 18210
schZoomIn -win $_nSchema2 -pos 56552 8419
schZoomIn -win $_nSchema2 -pos 56551 8419
schZoomIn -win $_nSchema2 -pos 56551 8418
schZoomIn -win $_nSchema2 -pos 56550 8418
schZoomIn -win $_nSchema2 -pos 58055 1213
schZoomIn -win $_nSchema2 -pos 57922 1212
schZoomIn -win $_nSchema2 -pos 57921 1212
schSelect -win $_nSchema2 -instport "register_loop\[31\].register_inst" \
          "Q\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
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
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
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
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
schZoomOut -win $_nSchema2 -pos 77602 6290
verdiSetActWin -win $_nSchema_2
schZoomOut -win $_nSchema2 -pos 72561 6103
schZoomOut -win $_nSchema2 -pos 72502 6103
schSelect -win $_nSchema2 -port "o_rs1_data\[31:0\]"
schPopViewUp -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 47055 24021
schZoomIn -win $_nSchema2 -pos 46885 24277
schZoomIn -win $_nSchema2 -pos 46885 24277
schZoomIn -win $_nSchema2 -pos 46885 24277
schZoomIn -win $_nSchema2 -pos 46886 24277
schZoomIn -win $_nSchema2 -pos 46886 24278
schZoomOut -win $_nSchema2 -pos 47209 31716
schZoomOut -win $_nSchema2 -pos 47208 31716
schZoomIn -win $_nSchema2 -pos 47177 33545
schZoomIn -win $_nSchema2 -pos 47177 33546
schZoomIn -win $_nSchema2 -pos 47390 32746
schZoomOut -win $_nSchema2 -pos 47390 33270
schZoomOut -win $_nSchema2 -pos 47390 33271
schZoomOut -win $_nSchema2 -pos 47389 33270
schSelect -win $_nSchema2 -port "ID_mem_rden"
schPopViewUp -win $_nSchema2
schZoomIn -win $_nSchema2 -pos 209177 35477
schZoomIn -win $_nSchema2 -pos 207966 34670
schZoomIn -win $_nSchema2 -pos 207462 34266
schZoomIn -win $_nSchema2 -pos 207235 34190
schZoomOut -win $_nSchema2 -pos 202299 34569
schZoomOut -win $_nSchema2 -pos 202227 34569
schZoomOut -win $_nSchema2 -pos 202227 34569
schZoomOut -win $_nSchema2 -pos 202227 34568
schZoomIn -win $_nSchema2 -pos 206519 30042
schZoomIn -win $_nSchema2 -pos 206727 29314
schZoomIn -win $_nSchema2 -pos 207116 28769
schSelect -win $_nSchema2 -port "o_pc_debug\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
wvZoomIn -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 16 )} 
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 1385.824953 -snap {("G1" 22)}
wvSetCursor -win $_nWave3 1365.994696 -snap {("G1" 22)}
wvSetCursor -win $_nWave3 1314.357493 -snap {("G1" 22)}
wvSetCursor -win $_nWave3 1363.834965 -snap {("G1" 22)}
wvSetCursor -win $_nWave3 1344.593726 -snap {("G1" 22)}
debReload
debReload
debReload
wvZoomIn -win $_nWave3
debReload
debReload
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvZoomOut -win $_nWave3
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 10
wvSelectSignal -win $_nWave3 {( "G1" 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 \
           21 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 6)}
schZoomOut -win $_nSchema2 -pos 170484 26899
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 209992 25658
schZoomIn -win $_nSchema2 -pos 209992 25657
schZoomIn -win $_nSchema2 -pos 209910 25698
schZoomIn -win $_nSchema2 -pos 208400 25821
schZoomIn -win $_nSchema2 -pos 208399 25821
schZoomIn -win $_nSchema2 -pos 208400 25821
schZoomOut -win $_nSchema2 -pos 205267 27216
schZoomOut -win $_nSchema2 -pos 205266 27216
schZoomOut -win $_nSchema2 -pos 180451 27683
schZoomOut -win $_nSchema2 -pos 180426 27683
schZoomOut -win $_nSchema2 -pos 180393 27619
schZoomIn -win $_nSchema2 -pos 208787 27579
schZoomIn -win $_nSchema2 -pos 208787 27579
schZoomIn -win $_nSchema2 -pos 209547 28427
schZoomIn -win $_nSchema2 -pos 209547 28426
schZoomIn -win $_nSchema2 -pos 209397 29481
schSelect -win $_nSchema2 -port "low_counter\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
schSelect -win $_nSchema2 -port "high_counter\[31:0\]"
schAddSelectedToWave -win $_nSchema2 -clipboard
wvDrop -win $_nWave3
verdiSetActWin -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomIn -win $_nWave3
wvZoom -win $_nWave3 2217.418296 2226.948747
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
debReload
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomOut -win $_nWave3
wvZoomIn -win $_nWave3
schSelect -win $_nSchema2 -port "low_counter\[31:0\]"
schPopViewUp -win $_nSchema2
verdiSetActWin -win $_nSchema_2
schZoomIn -win $_nSchema2 -pos 22371 17514
schZoomIn -win $_nSchema2 -pos 22371 17514
schZoomIn -win $_nSchema2 -pos 22371 17514
schZoomIn -win $_nSchema2 -pos 22215 17514
schSelect -win $_nSchema2 -inst "dut"
schPushViewIn -win $_nSchema2
schZoomOut -win $_nSchema2 -pos 208918 29139
schZoomOut -win $_nSchema2 -pos 208916 29139
schZoomOut -win $_nSchema2 -pos 208916 29139
schZoomOut -win $_nSchema2 -pos 208915 29139
schZoomOut -win $_nSchema2 -pos 208916 29140
schZoomIn -win $_nSchema2 -pos 209676 40649
schZoomOut -win $_nSchema2 -pos 209196 41446
schZoomOut -win $_nSchema2 -pos 209196 41446
schZoomOut -win $_nSchema2 -pos 205307 50516
schZoomOut -win $_nSchema2 -pos 205307 50516
schZoomOut -win $_nSchema2 -pos 205307 50516
schZoomIn -win $_nSchema2 -pos 188171 34318
schZoomIn -win $_nSchema2 -pos 187909 34317
schZoomIn -win $_nSchema2 -pos 187831 34317
schZoomIn -win $_nSchema2 -pos 187624 34346
wvZoomOut -win $_nWave3
verdiSetActWin -win $_nWave3
debReload
wvZoomIn -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
debReload
wvSelectSignal -win $_nWave3 {( "G1" 1 2 3 4 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 2083.581018 -snap {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
wvSetRadix -win $_nWave3 -format Hex
verdiSetActWin -win $_nSchema_2
debExit
