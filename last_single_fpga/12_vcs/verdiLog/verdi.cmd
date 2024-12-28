verdiSetActWin -dock widgetDock_<Message>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
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
schZoomIn -win $_nSchema3 -pos 84919 11313
schZoomIn -win $_nSchema3 -pos 84919 11312
schZoomIn -win $_nSchema3 -pos 84919 11312
schZoomIn -win $_nSchema3 -pos 82669 11716
schZoomIn -win $_nSchema3 -pos 82602 11682
schZoomIn -win $_nSchema3 -pos 82450 11581
schSelect -win $_nSchema3 -signal "i_rst_n"
schSelect -win $_nSchema3 -signal "i_rst_n"
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -signal "i_rst_n"
schSelect -win $_nSchema3 -inst "regfile_block"
schZoomOut -win $_nSchema3 -pos 77305 21336
schZoomOut -win $_nSchema3 -pos 77305 21336
schZoomOut -win $_nSchema3 -pos 77305 21336
schZoomOut -win $_nSchema3 -pos 77306 21336
schSelect -win $_nSchema3 -signal "i_rst_n"
schZoomOut -win $_nSchema3 -pos 76518 25447
schZoomOut -win $_nSchema3 -pos 76518 25447
schZoomOut -win $_nSchema3 -pos 76518 25447
schZoomOut -win $_nSchema3 -pos 76518 25447
schZoomOut -win $_nSchema3 -pos 76518 25446
schZoomOut -win $_nSchema3 -pos 76518 25446
schZoomOut -win $_nSchema3 -pos 76518 25446
schZoomIn -win $_nSchema3 -pos 57 6220
schZoomIn -win $_nSchema3 -pos 56 6221
schZoomIn -win $_nSchema3 -pos 55 6220
schZoomIn -win $_nSchema3 -pos -784 5661
schZoomIn -win $_nSchema3 -pos -926 5661
schZoomIn -win $_nSchema3 -pos -927 5661
schZoomIn -win $_nSchema3 -pos -928 5661
schZoomIn -win $_nSchema3 -pos -930 5660
schZoomOut -win $_nSchema3 -pos -864 6014
schZoomOut -win $_nSchema3 -pos -864 5986
schZoomOut -win $_nSchema3 -pos -863 5952
schZoomOut -win $_nSchema3 -pos -862 5952
schSelect -win $_nSchema3 -inst "imem_block"
debExit
