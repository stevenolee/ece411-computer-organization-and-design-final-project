onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/dut/clk
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_IF/pcmux_out
add wave -noupdate /mp3_tb/dut/arbiter/state
add wave -noupdate /mp3_tb/dut/cpu_datapath/IF_pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/inst_rdata
add wave -noupdate /mp3_tb/dut/cpu_datapath/ID_ctrl
add wave -noupdate /mp3_tb/dut/cpu_datapath/ID_EX_ctrl
add wave -noupdate /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl
add wave -noupdate /mp3_tb/dut/cpu_datapath/MEM_WB_ctrl
add wave -noupdate /mp3_tb/dut/cpu_datapath/IF_ID_pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/ID_EX_pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/EX_MEM_pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/MEM_WB_pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/EX_MEM_alu_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_ID/regfile/data
add wave -noupdate /mp3_tb/dut/cpu_datapath/br_mispredict
add wave -noupdate /mp3_tb/dut/stall
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {376534050 ps} {376535050 ps}
