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
schZoomIn -win $_nSchema3 -pos 28948 15291
schZoomIn -win $_nSchema3 -pos 28948 15291
schZoomIn -win $_nSchema3 -pos 28948 15291
schZoomIn -win $_nSchema3 -pos 28948 15291
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "lsu_block"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 50805 13878
schZoomIn -win $_nSchema3 -pos 50138 13377
schZoomIn -win $_nSchema3 -pos 50075 13314
schZoomIn -win $_nSchema3 -pos 39421 14534
schZoomIn -win $_nSchema3 -pos 39139 14569
schZoomIn -win $_nSchema3 -pos 39139 14569
schZoomOut -win $_nSchema3 -pos 40148 15360
schZoomOut -win $_nSchema3 -pos 40148 15360
schZoomIn -win $_nSchema3 -pos 40334 15639
schSelect -win $_nSchema3 -inst "op"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3 -pos 62396 18372
schZoomIn -win $_nSchema3 -pos 62397 18371
schZoomIn -win $_nSchema3 -pos 62397 18371
schZoomIn -win $_nSchema3 -pos 62397 18370
schZoomIn -win $_nSchema3 -pos 62397 18370
schZoomIn -win $_nSchema3 -pos 62398 18370
schZoomIn -win $_nSchema3 -pos 62397 18370
schZoomIn -win $_nSchema3 -pos 64221 19191
schZoomIn -win $_nSchema3 -pos 64221 19191
debReload
schZoomOut -win $_nSchema3 -pos 64591 21198
schZoomOut -win $_nSchema3 -pos 64590 21197
schZoomIn -win $_nSchema3 -pos 64543 17405
schZoomIn -win $_nSchema3 -pos 64626 17369
schZoomOut -win $_nSchema3 -pos 64349 17349
schZoomOut -win $_nSchema3 -pos 64348 17349
schZoomOut -win $_nSchema3 -pos 64347 17349
schZoomIn -win $_nSchema3 -pos 62908 14888
schZoomIn -win $_nSchema3 -pos 62881 14809
schZoomIn -win $_nSchema3 -pos 62881 14809
schZoomOut -win $_nSchema3 -pos 62880 14809
schZoomOut -win $_nSchema3 -pos 62879 14809
