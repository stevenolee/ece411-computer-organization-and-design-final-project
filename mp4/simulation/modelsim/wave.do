onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /mp3_tb/f
add wave -noupdate -radix hexadecimal /mp3_tb/f
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_resp
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
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/state
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/prefetch
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/p_address
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_read_i
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_write_i
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_line_i
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_address
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_resp_o
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/d_line_o
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/i_read_i
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/i_address
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/i_line_o
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/i_resp_o
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/resp_i
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/clk
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/address_o
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4075429 ps} 0}
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
WaveRestoreZoom {0 ps} {256 ns}
