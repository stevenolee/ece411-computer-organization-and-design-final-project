transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/hit_counter.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/p_line_adaptor.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/cache_p_control.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/data_array_p.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/cache_IF_ID.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/array_p.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/arbiter.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/lru_array.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/cacheline_adapter.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl {/home/scottl4/hydration_is_key/mp4/hdl/rv32i_mux_types.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/sreg_IF_ID.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cpu {/home/scottl4/hydration_is_key/mp4/hdl/cpu/regfile.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cpu {/home/scottl4/hydration_is_key/mp4/hdl/cpu/pc_reg.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/data_array.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/cache_datapath.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/cache_control.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/array.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/cache_p_way.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl {/home/scottl4/hydration_is_key/mp4/hdl/rv32i_types.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cache {/home/scottl4/hydration_is_key/mp4/hdl/cache/cache.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/cache_p_datapath.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/sreg_MEM_WB.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/sreg_ID_EX.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/sreg_EX_MEM.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/MEM.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/ID.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/control_rom.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cpu {/home/scottl4/hydration_is_key/mp4/hdl/cpu/cmp.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cpu {/home/scottl4/hydration_is_key/mp4/hdl/cpu/alu.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4 {/home/scottl4/hydration_is_key/mp4/hdl/scott_cp4/cache_p.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/WB.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/IF.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/hazard_detection.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/pipeline {/home/scottl4/hydration_is_key/mp4/hdl/pipeline/EX.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl/cpu {/home/scottl4/hydration_is_key/mp4/hdl/cpu/cpu_datapath.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hdl {/home/scottl4/hydration_is_key/mp4/hdl/mp4.sv}

vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/top.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/magic_dual_port.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/param_memory.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/rvfi_itf.sv}
vlog -vlog01compat -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/rvfimon.v}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/shadow_memory.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/source_tb.sv}
vlog -sv -work work +incdir+/home/scottl4/hydration_is_key/mp4/hvl {/home/scottl4/hydration_is_key/mp4/hvl/tb_itf.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp3_tb

add wave *
view structure
view signals
run -all
