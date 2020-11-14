onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_EX_MEM/cmp_in
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_IF_ID/clk
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_IF/pc_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/br_mispredict
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/rst
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_IF_ID/inst_rdata
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_EX_MEM/br_en_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_ID/ctrl_word
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/ctrl_in
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/ctrl_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/ctrl
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_EX/cmp_mux_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_EX/rs1_in
add wave -noupdate /mp3_tb/dut/cpu_datapath/inst_resp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1824354 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 272
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
WaveRestoreZoom {1787903 ps} {2011163 ps}
