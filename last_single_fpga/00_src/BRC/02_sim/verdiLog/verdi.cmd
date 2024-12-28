verdiSetActWin -dock widgetDock_<Decl._Tree>
debImport "-sverilog" "-f" "../00_src/flist.f" "design_test.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvCreateWindow
schCreateWindow -delim "." -win $_nSchema1 -scope "design_test"
verdiSetActWin -win $_nSchema_3
schSelect -win $_nSchema3 -inst "dut"
schPushViewIn -win $_nSchema3
schSetOptions -win $_nSchema3 -portName on
schSetOptions -win $_nSchema3 -pinName on
schSetOptions -win $_nSchema3 -instName on
schSetOptions -win $_nSchema3 -localNetName on
schSetOptions -win $_nSchema3 -completeName on
debExit
