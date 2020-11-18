onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_ID/regfile/clk
add wave -noupdate /mp3_tb/dut/cpu_datapath/stage_ID/ctrl_word
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_ID_EX/ctrl_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_EX_MEM/ctrl_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_MEM_WB/ctrl_out
add wave -noupdate -expand /mp3_tb/dut/cpu_datapath/stage_ID/regfile/data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {195000 ps} 0}
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
WaveRestoreZoom {0 ps} {512 ns}
