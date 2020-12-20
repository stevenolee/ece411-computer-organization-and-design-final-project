onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/dut/clk
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/IF_ID_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_pc_out
add wave -noupdate -radix decimal /mp3_tb/dut/i_cache/cache_p_control/miss_count
add wave -noupdate -radix decimal /mp3_tb/dut/d_cache/cache_p_control/miss_count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4899215 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 264
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
WaveRestoreZoom {3806566 ps} {4597722 ps}
