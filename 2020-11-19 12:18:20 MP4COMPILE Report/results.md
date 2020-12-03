# AG Report Generated 2020-11-19 12:18
This is a report about mp4compile generated for Hydration_is_Key at 2020-11-19 12:18. The autograder used commit ``7a1733e04f10`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
### Compilation ![Failure][failure]
You did not succesfully compile. Your report is below.
<details>
<summary>Compilation Report</summary>

```
Info: *******************************************************************
Info: Running Quartus Prime Analysis & Synthesis
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Thu Nov 19 18:17:52 2020
Info: Command: quartus_map mp4 -c mp4
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20029): Only one processor detected - disabling parallel compilation
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/arbiter.sv
    Info (12023): Found entity 1: arbiter File: /job/student/hdl/cache/arbiter.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/hazard_detection.sv
    Info (12023): Found entity 1: hazard_detection File: /job/student/hdl/pipeline/hazard_detection.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/control_rom.sv
    Info (12023): Found entity 1: control_rom File: /job/student/hdl/pipeline/control_rom.sv Line: 3
Info (12021): Found 1 design units, including 0 entities, in source file hdl/rv32i_types.sv
    Info (12022): Found design unit 1: rv32i_types (SystemVerilog) File: /job/student/hdl/rv32i_types.sv Line: 3
Info (12021): Found 5 design units, including 0 entities, in source file hdl/rv32i_mux_types.sv
    Info (12022): Found design unit 1: pcmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 3
    Info (12022): Found design unit 2: marmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 11
    Info (12022): Found design unit 3: cmpmux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 18
    Info (12022): Found design unit 4: alumux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 25
    Info (12022): Found design unit 5: regfilemux (SystemVerilog) File: /job/student/hdl/rv32i_mux_types.sv Line: 41
Info (12021): Found 1 design units, including 1 entities, in source file hdl/mp4.sv
    Info (12023): Found entity 1: mp4 File: /job/student/hdl/mp4.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/WB.sv
    Info (12023): Found entity 1: WB File: /job/student/hdl/pipeline/WB.sv Line: 5
Warning (10261): Verilog HDL Event Control warning at sreg_MEM_WB.sv(28): Event Control contains a complex event expression File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 28
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_MEM_WB.sv
    Info (12023): Found entity 1: sreg_MEM_WB File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 3
Warning (10261): Verilog HDL Event Control warning at sreg_IF_ID.sv(16): Event Control contains a complex event expression File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 16
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_IF_ID.sv
    Info (12023): Found entity 1: sreg_IF_ID File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 1
Warning (10261): Verilog HDL Event Control warning at sreg_ID_EX.sv(21): Event Control contains a complex event expression File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 21
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_ID_EX.sv
    Info (12023): Found entity 1: sreg_ID_EX File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 3
Warning (10261): Verilog HDL Event Control warning at sreg_EX_MEM.sv(27): Event Control contains a complex event expression File: /job/student/hdl/pipeline/sreg_EX_MEM.sv Line: 27
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_EX_MEM.sv
    Info (12023): Found entity 1: sreg_EX_MEM File: /job/student/hdl/pipeline/sreg_EX_MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/MEM.sv
    Info (12023): Found entity 1: MEM File: /job/student/hdl/pipeline/MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/IF.sv
    Info (12023): Found entity 1: IF File: /job/student/hdl/pipeline/IF.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/ID.sv
    Info (12023): Found entity 1: ID File: /job/student/hdl/pipeline/ID.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/EX.sv
    Info (12023): Found entity 1: EX File: /job/student/hdl/pipeline/EX.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/cpu/register.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/cpu/regfile.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/cpu/pc_reg.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cpu_datapath.sv
    Info (12023): Found entity 1: cpu_datapath File: /job/student/hdl/cpu/cpu_datapath.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/cmp.sv
    Info (12023): Found entity 1: cmp File: /job/student/hdl/cpu/cmp.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/alu.sv
    Info (12023): Found entity 1: alu File: /job/student/hdl/cpu/alu.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/data_array.sv
    Info (12023): Found entity 1: data_array File: /job/student/hdl/cache/data_array.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_way.sv
    Info (12023): Found entity 1: cache_way File: /job/student/hdl/cache/cache_way.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_datapath.sv
    Info (12023): Found entity 1: cache_datapath File: /job/student/hdl/cache/cache_datapath.sv Line: 8
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_control.sv
    Info (12023): Found entity 1: cache_control File: /job/student/hdl/cache/cache_control.sv Line: 4
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache.sv
    Info (12023): Found entity 1: cache File: /job/student/hdl/cache/cache.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/bus_adapter.sv
    Info (12023): Found entity 1: bus_adapter File: /job/student/hdl/cache/bus_adapter.sv Line: 6
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/array.sv
    Info (12023): Found entity 1: array File: /job/student/hdl/cache/array.sv Line: 3
Warning (10236): Verilog HDL Implicit Net warning at arbiter.sv(56): created implicit net for "line_o" File: /job/student/hdl/cache/arbiter.sv Line: 56
Warning (10236): Verilog HDL Implicit Net warning at mp4.sv(79): created implicit net for "i_mem_write" File: /job/student/hdl/mp4.sv Line: 79
Warning (10236): Verilog HDL Implicit Net warning at sreg_IF_ID.sv(30): created implicit net for "addr_out" File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 30
Warning (10236): Verilog HDL Implicit Net warning at ID.sv(21): created implicit net for "load_regfile_h" File: /job/student/hdl/pipeline/ID.sv Line: 21
Info (12127): Elaborating entity "mp4" for the top level hierarchy
Info (12128): Elaborating entity "cpu_datapath" for hierarchy "cpu_datapath:cpu_datapath" File: /job/student/hdl/mp4.sv Line: 63
Info (12128): Elaborating entity "IF" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 83
Info (12128): Elaborating entity "pc_register" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF|pc_register:PC" File: /job/student/hdl/pipeline/IF.sv Line: 28
Info (12128): Elaborating entity "sreg_IF_ID" for hierarchy "cpu_datapath:cpu_datapath|sreg_IF_ID:sreg_IF_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 101
Warning (10036): Verilog HDL or VHDL warning at sreg_IF_ID.sv(30): object "addr_out" assigned a value but never read File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 30
Warning (10230): Verilog HDL assignment warning at sreg_IF_ID.sv(30): truncated value with size 32 to match size of target (1) File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 30
Info (12128): Elaborating entity "ID" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 120
Info (12128): Elaborating entity "control_rom" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|control_rom:control_rom" File: /job/student/hdl/pipeline/ID.sv Line: 27
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "i_imm" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "s_imm" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "b_imm" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "u_imm" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "j_imm" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(9): object "ir_out" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 9
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(10): object "rd" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 10
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(10): object "rs1" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 10
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(10): object "rs2" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 10
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(11): object "cmpop" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 11
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(12): object "aluop" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 12
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(13): object "opcode" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 13
Warning (10036): Verilog HDL or VHDL warning at control_rom.sv(15): object "funct7" assigned a value but never read File: /job/student/hdl/pipeline/control_rom.sv Line: 15
Info (12128): Elaborating entity "regfile" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|regfile:regfile" File: /job/student/hdl/pipeline/ID.sv Line: 40
Info (12128): Elaborating entity "sreg_ID_EX" for hierarchy "cpu_datapath:cpu_datapath|sreg_ID_EX:sreg_ID_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 139
Warning (10036): Verilog HDL or VHDL warning at sreg_ID_EX.sv(18): object "rs1" assigned a value but never read File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 18
Warning (10036): Verilog HDL or VHDL warning at sreg_ID_EX.sv(18): object "rs2" assigned a value but never read File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 18
Warning (10036): Verilog HDL or VHDL warning at sreg_ID_EX.sv(18): object "pc" assigned a value but never read File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 18
Warning (10036): Verilog HDL or VHDL warning at sreg_ID_EX.sv(19): object "ctrl" assigned a value but never read File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 19
Warning (10034): Output port "ctrl_out" at sreg_ID_EX.sv(13) has no driver File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 13
Warning (10034): Output port "pc_out" at sreg_ID_EX.sv(14) has no driver File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 14
Warning (10034): Output port "rs1_out" at sreg_ID_EX.sv(15) has no driver File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 15
Warning (10034): Output port "rs2_out" at sreg_ID_EX.sv(17) has no driver File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 17
Info (12128): Elaborating entity "EX" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 162
Info (12128): Elaborating entity "alu" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|alu:ALU" File: /job/student/hdl/pipeline/EX.sv Line: 37
Info (12128): Elaborating entity "cmp" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|cmp:CMP" File: /job/student/hdl/pipeline/EX.sv Line: 46
Info (12128): Elaborating entity "sreg_EX_MEM" for hierarchy "cpu_datapath:cpu_datapath|sreg_EX_MEM:sreg_EX_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 183
Info (12128): Elaborating entity "MEM" for hierarchy "cpu_datapath:cpu_datapath|MEM:stage_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 204
Info (12128): Elaborating entity "sreg_MEM_WB" for hierarchy "cpu_datapath:cpu_datapath|sreg_MEM_WB:sreg_MEM_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 228
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(22): object "ctrl" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 22
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(23): object "alu" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 23
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(23): object "pc" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 23
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(24): object "data" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 24
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(25): object "br_en" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 25
Warning (10036): Verilog HDL or VHDL warning at sreg_MEM_WB.sv(26): object "mem_byte_en" assigned a value but never read File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 26
Warning (10034): Output port "alu_out" at sreg_MEM_WB.sv(15) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 15
Warning (10034): Output port "pc_out" at sreg_MEM_WB.sv(16) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 16
Warning (10034): Output port "data_rdata_out" at sreg_MEM_WB.sv(17) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 17
Warning (10034): Output port "ctrl_out" at sreg_MEM_WB.sv(18) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 18
Warning (10034): Output port "mem_byte_en_o" at sreg_MEM_WB.sv(21) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 21
Warning (10034): Output port "br_en_out" at sreg_MEM_WB.sv(19) has no driver File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 19
Info (12128): Elaborating entity "WB" for hierarchy "cpu_datapath:cpu_datapath|WB:stage_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 247
Info (10264): Verilog HDL Case Statement information at WB.sv(35): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 35
Info (10264): Verilog HDL Case Statement information at WB.sv(44): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 44
Info (12128): Elaborating entity "hazard_detection" for hierarchy "cpu_datapath:cpu_datapath|hazard_detection:hazard" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 261
Info (12128): Elaborating entity "cache" for hierarchy "cache:i_cache" File: /job/student/hdl/mp4.sv Line: 81
Info (12128): Elaborating entity "cache_control" for hierarchy "cache:i_cache|cache_control:control" File: /job/student/hdl/cache/cache.sv Line: 58
Info (12128): Elaborating entity "cache_datapath" for hierarchy "cache:i_cache|cache_datapath:datapath" File: /job/student/hdl/cache/cache.sv Line: 78
Info (12128): Elaborating entity "cache_way" for hierarchy "cache:i_cache|cache_datapath:datapath|cache_way:cache_way_0" File: /job/student/hdl/cache/cache_datapath.sv Line: 162
Info (12128): Elaborating entity "data_array" for hierarchy "cache:i_cache|cache_datapath:datapath|cache_way:cache_way_0|data_array:data_array" File: /job/student/hdl/cache/cache_way.sv Line: 35
Info (12128): Elaborating entity "array" for hierarchy "cache:i_cache|cache_datapath:datapath|cache_way:cache_way_0|array:tag_array" File: /job/student/hdl/cache/cache_way.sv Line: 47
Info (12128): Elaborating entity "array" for hierarchy "cache:i_cache|cache_datapath:datapath|cache_way:cache_way_0|array:valid_array" File: /job/student/hdl/cache/cache_way.sv Line: 59
Info (12128): Elaborating entity "array" for hierarchy "cache:i_cache|cache_datapath:datapath|array:lru_array" File: /job/student/hdl/cache/cache_datapath.sv Line: 190
Info (12128): Elaborating entity "bus_adapter" for hierarchy "cache:i_cache|bus_adapter:bus_adapter" File: /job/student/hdl/cache/cache.sv Line: 89
Info (12128): Elaborating entity "arbiter" for hierarchy "arbiter:arbiter" File: /job/student/hdl/mp4.sv Line: 121
Warning (10036): Verilog HDL or VHDL warning at arbiter.sv(56): object "line_o" assigned a value but never read File: /job/student/hdl/cache/arbiter.sv Line: 56
Warning (10230): Verilog HDL assignment warning at arbiter.sv(56): truncated value with size 256 to match size of target (1) File: /job/student/hdl/cache/arbiter.sv Line: 56
Warning (10034): Output port "d_line_o" at arbiter.sv(8) has no driver File: /job/student/hdl/cache/arbiter.sv Line: 8
Warning (10034): Output port "i_line_o" at arbiter.sv(15) has no driver File: /job/student/hdl/cache/arbiter.sv Line: 15
Warning (12241): 2 hierarchies have connectivity warnings - see the Connectivity Checks report folder
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "mem_addr[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_wdata[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[2]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[3]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[4]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[5]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[6]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[7]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[8]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[9]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[10]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[11]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[12]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[13]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[14]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[15]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[16]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[17]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[18]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[19]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[20]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[21]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[22]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[23]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[24]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[25]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[26]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[27]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[28]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[29]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[30]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[31]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[32]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[33]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[34]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[35]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[36]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[37]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[38]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[39]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[40]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[41]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[42]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[43]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[44]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[45]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[46]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[47]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[48]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[49]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[50]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[51]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[52]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[53]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[54]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[55]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[56]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[57]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[58]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[59]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[60]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[61]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[62]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "mem_wdata[63]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
Info (286030): Timing-Driven Synthesis is running
Info (17049): 84 registers lost all their fanouts during netlist optimizations.
Info (144001): Generated suppressed messages file /job/student/output_files/mp4.map.smsg
Info (16010): Generating hard_block partition "hard_block:auto_generated_inst"
    Info (16011): Adding 0 node(s), including 0 DDIO, 0 PLL, 0 transceiver and 0 LCELL
Warning (21074): Design contains 64 input pin(s) that do not drive logic
    Warning (15610): No output dependent on input pin "mem_rdata[0]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[1]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[2]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[3]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[4]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[5]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[6]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[7]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[8]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[9]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[10]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[11]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[12]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[13]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[14]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[15]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[16]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[17]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[18]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[19]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[20]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[21]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[22]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[23]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[24]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[25]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[26]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[27]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[28]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[29]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[30]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[31]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[32]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[33]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[34]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[35]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[36]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[37]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[38]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[39]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[40]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[41]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[42]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[43]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[44]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[45]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[46]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[47]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[48]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[49]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[50]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[51]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[52]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[53]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[54]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[55]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[56]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[57]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[58]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[59]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[60]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[61]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[62]" File: /job/student/hdl/mp4.sv Line: 9
    Warning (15610): No output dependent on input pin "mem_rdata[63]" File: /job/student/hdl/mp4.sv Line: 9
Info (21057): Implemented 880 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 67 input pins
    Info (21059): Implemented 98 output pins
    Info (21061): Implemented 715 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 181 warnings
    Info: Peak virtual memory: 1234 megabytes
    Info: Processing ended: Thu Nov 19 18:18:14 2020
    Info: Elapsed time: 00:00:22
    Info: Total CPU time (on all processors): 00:00:21
Info: *******************************************************************
Info: Running Quartus Prime Shell
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Copyright (C) 2018  Intel Corporation. All rights reserved.
    Info: Your use of Intel Corporation's design tools, logic functions 
    Info: and other software and tools, and its AMPP partner logic 
    Info: functions, and any output files from any of the foregoing 
    Info: (including device programming or simulation files), and any 
    Info: associated documentation or information are expressly subject 
    Info: to the terms and conditions of the Intel Program License 
    Info: Subscription Agreement, the Intel Quartus Prime License Agreement,
    Info: the Intel FPGA IP License Agreement, or other applicable license
    Info: agreement, including, without limitation, that your use is for
    Info: the sole purpose of programming logic devices manufactured by
    Info: Intel and sold by Intel or its authorized distributors.  Please
    Info: refer to the applicable agreement for further details.
    Info: Processing started: Thu Nov 19 18:18:15 2020
Info: Command: quartus_sh -t /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl --gen_script --rtl_sim mp4 mp4
Info: Quartus(args): --gen_script --rtl_sim mp4 mp4
Info: Info: Start Nativelink Simulation process
Info: Info: NativeLink has detected Verilog design -- Verilog simulation models will be used
Info: Info: Starting NativeLink simulation with ModelSim-Altera software
Info: Info: Generated ModelSim-Altera script file /job/student/simulation/modelsim/mp4_run_msim_rtl_verilog.do File: /job/student/simulation/modelsim/mp4_run_msim_rtl_verilog.do Line: 0
Info: Info: NativeLink simulation flow was successful
Info: Info: For messages from NativeLink scripts, check the file /job/student/mp4_nativelink_simulation.rpt File: /job/student/mp4_nativelink_simulation.rpt Line: 0
Info (23030): Evaluation of Tcl script /opt/altera/quartus/common/tcl/internal/nativelink/qnativesim.tcl was successful
Info: Quartus Prime Shell was successful. 0 errors, 0 warnings
    Info: Peak virtual memory: 793 megabytes
    Info: Processing ended: Thu Nov 19 18:18:15 2020
    Info: Elapsed time: 00:00:00
    Info: Total CPU time (on all processors): 00:00:00
Reading pref.tcl

# 10.5b

ModelSim> transcript on
ModelSim> > > if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
ModelSim> vlib rtl_work
ModelSim> vmap work rtl_work
# Model Technology ModelSim - Intel FPGA Edition vmap 10.5b Lib Mapping Utility 2016.10 Oct  5 2016
# vmap work rtl_work 
# Modifying /opt/altera/modelsim_ase/linuxaloem/../modelsim.ini
ModelSim> 
> 
vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/arbiter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/arbiter.sv 
# -- Compiling module arbiter
# 
# Top level modules:
# 	arbiter
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_IF_ID.sv 
# -- Compiling module sreg_IF_ID
# 
# Top level modules:
# 	sreg_IF_ID
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/data_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/data_array.sv 
# -- Compiling module data_array
# 
# Top level modules:
# 	data_array
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_control.sv 
# -- Compiling module cache_control
# 
# Top level modules:
# 	cache_control
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/bus_adapter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/bus_adapter.sv 
# -- Compiling module bus_adapter
# 
# Top level modules:
# 	bus_adapter
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/array.sv 
# -- Compiling module array
# 
# Top level modules:
# 	array
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_types.sv 
# -- Compiling package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_way.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_way.sv 
# -- Compiling module cache_way
# 
# Top level modules:
# 	cache_way
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/hazard_detection.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/hazard_detection.sv 
# -- Compiling package hazard_detection_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module hazard_detection
# 
# Top level modules:
# 	hazard_detection
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/control_rom.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:16 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/control_rom.sv 
# -- Compiling package control_rom_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module control_rom
# 
# Top level modules:
# 	control_rom
# End time: 18:18:16 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/WB.sv 
# -- Compiling package WB_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module WB
# 
# Top level modules:
# 	WB
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_MEM_WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_MEM_WB.sv 
# -- Compiling package sreg_MEM_WB_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module sreg_MEM_WB
# 
# Top level modules:
# 	sreg_MEM_WB
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_ID_EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_ID_EX.sv 
# -- Compiling package sreg_ID_EX_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module sreg_ID_EX
# 
# Top level modules:
# 	sreg_ID_EX
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_EX_MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_EX_MEM.sv 
# -- Compiling package sreg_EX_MEM_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module sreg_EX_MEM
# 
# Top level modules:
# 	sreg_EX_MEM
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/MEM.sv 
# -- Compiling package MEM_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module MEM
# 
# Top level modules:
# 	MEM
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/ID.sv 
# -- Compiling package ID_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module ID
# 
# Top level modules:
# 	ID
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cmp.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cmp.sv 
# -- Compiling package cmp_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cmp
# 
# Top level modules:
# 	cmp
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/alu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/alu.sv 
# -- Compiling package alu_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module alu
# 
# Top level modules:
# 	alu
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_datapath.sv 
# -- Compiling package cache_datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cache_datapath
# 
# Top level modules:
# 	cache_datapath
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/IF.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/IF.sv 
# -- Compiling package IF_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module IF
# 
# Top level modules:
# 	IF
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/EX.sv 
# -- Compiling package EX_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module EX
# 
# Top level modules:
# 	EX
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache.sv 
# -- Compiling package cache_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cache
# 
# Top level modules:
# 	cache
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cpu_datapath.sv 
# -- Compiling package cpu_datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cpu_datapath
# 
# Top level modules:
# 	cpu_datapath
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp4.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/mp4.sv 
# -- Compiling package mp4_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module mp4
# 
# Top level modules:
# 	mp4
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vlog -vlog01compat -work work +incdir+/job/student/hvl {/job/student/hvl/rvfimon.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -vlog01compat -work work "+incdir+/job/student/hvl" /job/student/hvl/rvfimon.v 
# -- Compiling module riscv_formal_monitor_rv32imc
# -- Compiling module riscv_formal_monitor_rv32imc_rob
# -- Compiling module riscv_formal_monitor_rv32imc_isa_spec
# -- Compiling module riscv_formal_monitor_rv32imc_insn_add
# -- Compiling module riscv_formal_monitor_rv32imc_insn_addi
# -- Compiling module riscv_formal_monitor_rv32imc_insn_and
# -- Compiling module riscv_formal_monitor_rv32imc_insn_andi
# -- Compiling module riscv_formal_monitor_rv32imc_insn_auipc
# -- Compiling module riscv_formal_monitor_rv32imc_insn_beq
# -- Compiling module riscv_formal_monitor_rv32imc_insn_bge
# -- Compiling module riscv_formal_monitor_rv32imc_insn_bgeu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_blt
# -- Compiling module riscv_formal_monitor_rv32imc_insn_bltu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_bne
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_add
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_addi
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_addi16sp
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_addi4spn
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_and
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_andi
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_beqz
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_bnez
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_j
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_jal
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_jalr
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_jr
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_li
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_lui
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_lw
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_lwsp
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_mv
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_or
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_slli
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_srai
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_srli
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_sub
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_sw
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_swsp
# -- Compiling module riscv_formal_monitor_rv32imc_insn_c_xor
# -- Compiling module riscv_formal_monitor_rv32imc_insn_div
# -- Compiling module riscv_formal_monitor_rv32imc_insn_divu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_jal
# -- Compiling module riscv_formal_monitor_rv32imc_insn_jalr
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lb
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lbu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lh
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lhu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lui
# -- Compiling module riscv_formal_monitor_rv32imc_insn_lw
# -- Compiling module riscv_formal_monitor_rv32imc_insn_mul
# -- Compiling module riscv_formal_monitor_rv32imc_insn_mulh
# -- Compiling module riscv_formal_monitor_rv32imc_insn_mulhsu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_mulhu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_or
# -- Compiling module riscv_formal_monitor_rv32imc_insn_ori
# -- Compiling module riscv_formal_monitor_rv32imc_insn_rem
# -- Compiling module riscv_formal_monitor_rv32imc_insn_remu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sb
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sh
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sll
# -- Compiling module riscv_formal_monitor_rv32imc_insn_slli
# -- Compiling module riscv_formal_monitor_rv32imc_insn_slt
# -- Compiling module riscv_formal_monitor_rv32imc_insn_slti
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sltiu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sltu
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sra
# -- Compiling module riscv_formal_monitor_rv32imc_insn_srai
# -- Compiling module riscv_formal_monitor_rv32imc_insn_srl
# -- Compiling module riscv_formal_monitor_rv32imc_insn_srli
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sub
# -- Compiling module riscv_formal_monitor_rv32imc_insn_sw
# -- Compiling module riscv_formal_monitor_rv32imc_insn_xor
# -- Compiling module riscv_formal_monitor_rv32imc_insn_xori
# 
# Top level modules:
# 	riscv_formal_monitor_rv32imc
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/source_tb.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/source_tb.sv 
# -- Compiling module magic_memory_dp
# -- Compiling module ParamMemory
# ** Warning: ** while parsing file included at /job/student/hvl/source_tb.sv(14)
# ** at hvl/param_memory.sv(25): (vlog-2244) Variable 'iteration' is implicitly static. You must either explicitly declare it as static or automatic
# or remove the initialization in the declaration of variable.
# -- Compiling interface rvfi_itf
# -- Compiling module shadow_memory
# -- Compiling interface tb_itf
# -- Compiling package ag_rv32i_types
# -- Compiling package source_tb_sv_unit
# -- Importing package ag_rv32i_types
# -- Compiling module source_tb
# 
# Top level modules:
# 	source_tb
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 1
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 18:18:17 on Nov 19,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling module mp3_tb
# 
# Top level modules:
# 	mp3_tb
# End time: 18:18:17 on Nov 19,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp4_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp4_tb 
# Start time: 18:18:17 on Nov 19,2020
# ** Error: (vsim-3170) Could not find 'mp4_tb'.
#         Searched libraries:
#             /opt/altera/modelsim_ase/altera/verilog/altera
#             /opt/altera/modelsim_ase/altera/verilog/220model
#             /opt/altera/modelsim_ase/altera/verilog/sgate
#             /opt/altera/modelsim_ase/altera/verilog/altera_mf
#             /opt/altera/modelsim_ase/altera/verilog/altera_lnsim
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_hssi
#             /opt/altera/modelsim_ase/altera/verilog/arriaii_pcie_hip
#             /opt/altera/modelsim_ase/altera/verilog/arriaii
#             /job/student/rtl_work
#             /job/student/rtl_work
# Error loading design
# End time: 18:18:18 on Nov 19,2020, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
</ul>

---
Staff use: 5fb6b4f9992def9c51c721b8

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 