transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/phamv/OneDrive\ -\ hcmut.edu.vn/MÃ¡y\ tÃ­nh/Do_AN1/PC {C:/Users/phamv/OneDrive - hcmut.edu.vn/Máy tính/Do_AN1/PC/PC.sv}

