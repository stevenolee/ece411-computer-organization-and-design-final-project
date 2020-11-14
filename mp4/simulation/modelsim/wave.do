onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/f
add wave -noupdate /mp3_tb/dut/cpu_datapath/clk
add wave -noupdate /mp3_tb/dut/cpu_datapath/inst_resp
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_rdata
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_read
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_addr
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_resp
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_rdata
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_read
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_write
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_mbe
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_addr
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_wdata
add wave -noupdate -radix hexadecimal /mp3_tb/itf/smcb/rdata_b
add wave -noupdate /mp3_tb/itf/data_rdata
add wave -noupdate /mp3_tb/itf/inst_rdata
add wave -noupdate /mp3_tb/itf/mmcb/rdata_a
add wave -noupdate -radix hexadecimal /mp3_tb/itf/mmcb/address_a
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14315 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 290
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
WaveRestoreZoom {0 ps} {104697 ps}
