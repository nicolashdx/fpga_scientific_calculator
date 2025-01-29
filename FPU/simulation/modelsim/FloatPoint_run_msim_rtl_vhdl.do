transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Aluno/Documents/NIP/fpga_scientific_calculator-main/FPU/FloatPoint_package.vhd}
vcom -93 -work work {C:/Users/Aluno/Documents/NIP/fpga_scientific_calculator-main/FPU/FP_convert_pkg.vhd}
vcom -93 -work work {C:/Users/Aluno/Documents/NIP/fpga_scientific_calculator-main/FPU/test2.vhd}

vcom -93 -work work {C:/Users/Aluno/Documents/NIP/fpga_scientific_calculator-main/FPU/sin_cos_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  sin_cos_tb

add wave *
view structure
view signals
run -all
