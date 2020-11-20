onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/stage_IF/pcmux_out
add wave -noupdate /mp3_tb/dut/clk
add wave -noupdate -radix hexadecimal /mp3_tb/dut/i_cache/control/state
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/state
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/IF_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_rdata
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_ctrl
add wave -noupdate -radix hexadecimal -childformat {{/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.opcode -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.aluop -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.load_regfile -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.data_write -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.data_read -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rd -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rs1 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rs2 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.ir_out -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.funct3 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.funct7 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.pcmux_sel -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.cmpmux_sel -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.alumux1_sel -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.alumux2_sel -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.regfilemux_sel -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.i_imm -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.s_imm -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.b_imm -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.u_imm -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.j_imm -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.load_pc -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.cmpop -radix hexadecimal}} -subitemconfig {/mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.opcode {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.aluop {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.load_regfile {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.data_write {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.data_read {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rd {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rs1 {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.rs2 {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.ir_out {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.funct3 {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.funct7 {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.pcmux_sel {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.cmpmux_sel {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.alumux1_sel {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.alumux2_sel {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.regfilemux_sel {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.i_imm {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.s_imm {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.b_imm {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.u_imm {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.j_imm {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.load_pc {-height 16 -radix hexadecimal} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl.cmpop {-height 16 -radix hexadecimal}} /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/IF_ID_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_alu_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/stage_ID/regfile/data
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/br_mispredict
add wave -noupdate /mp3_tb/dut/stall
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {647348 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {479878 ps} {1004878 ps}
