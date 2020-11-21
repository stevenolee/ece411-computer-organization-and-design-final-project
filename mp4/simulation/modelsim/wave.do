onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp3_tb/dut/clk
add wave -noupdate -radix hexadecimal /mp3_tb/dut/arbiter/state
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/IF_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/inst_rdata
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_ctrl
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/IF_ID_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/ID_EX_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/MEM_WB_pc_out
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/EX_MEM_alu_out
add wave -noupdate -radix hexadecimal -childformat {{{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[0]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[1]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[2]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[3]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[4]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[5]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[6]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[7]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[8]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[9]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[10]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[11]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[12]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[13]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[14]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[15]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[16]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[17]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[18]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[19]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[20]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[21]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[22]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[23]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[24]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[25]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[26]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[27]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[28]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[29]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[30]} -radix hexadecimal} {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[31]} -radix hexadecimal}} -subitemconfig {{/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[0]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[1]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[2]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[3]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[4]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[5]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[6]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[7]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[8]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[9]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[10]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[11]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[12]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[13]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[14]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[15]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[16]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[17]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[18]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[19]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[20]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[21]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[22]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[23]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[24]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[25]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[26]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[27]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[28]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[29]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[30]} {-height 16 -radix hexadecimal} {/mp3_tb/dut/cpu_datapath/stage_ID/regfile/data[31]} {-height 16 -radix hexadecimal}} /mp3_tb/dut/cpu_datapath/stage_ID/regfile/data
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/stage_EX/rs1
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/stage_EX/cmp_mux_out
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_EX_MEM/cmp_in
add wave -noupdate /mp3_tb/dut/cpu_datapath/sreg_EX_MEM/br_en
add wave -noupdate /mp3_tb/dut/cpu_datapath/br_mispredict
add wave -noupdate /mp3_tb/dut/stall
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/hazard/data_in
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_read
add wave -noupdate /mp3_tb/dut/cpu_datapath/data_resp
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/data_addr
add wave -noupdate -radix hexadecimal /mp3_tb/dut/cpu_datapath/hazard_MEM_data
add wave -noupdate /mp3_tb/dut/cpu_datapath/hazard_ID_EX_rs1
add wave -noupdate /mp3_tb/dut/cpu_datapath/hazard_ID_EX_rs2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2125000 ps} 0}
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
WaveRestoreZoom {1907500 ps} {2957500 ps}
