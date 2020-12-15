# AG Report Generated 2020-12-15 03:06
This is a report about mp4 generated for Hydration_is_Key at 2020-12-15 03:06. The autograder used commit ``530576bf8894`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/4 (0.0%)
 - Timing: Error Occured
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
    Info: Processing started: Tue Dec 15 08:59:35 2020
Info: Command: quartus_map mp4 -c mp4
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20029): Only one processor detected - disabling parallel compilation
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/p_line_adaptor.sv
    Info (12023): Found entity 1: p_line_adapter File: /job/student/hdl/scott_cp4/p_line_adaptor.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/cache_p_control.sv
    Info (12023): Found entity 1: cache_p_control File: /job/student/hdl/scott_cp4/cache_p_control.sv Line: 4
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/data_array_p.sv
    Info (12023): Found entity 1: data_array_p File: /job/student/hdl/scott_cp4/data_array_p.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/cache_p_way.sv
    Info (12023): Found entity 1: cache_p_way File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/cache_p_datapath.sv
    Info (12023): Found entity 1: cache_p_datapath File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 8
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/cache_p.sv
    Info (12023): Found entity 1: cache_p File: /job/student/hdl/scott_cp4/cache_p.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/cache_IF_ID.sv
    Info (12023): Found entity 1: cache_IF_ID File: /job/student/hdl/scott_cp4/cache_IF_ID.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/array_p.sv
    Info (12023): Found entity 1: array_p File: /job/student/hdl/scott_cp4/array_p.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/arbiter.sv
    Info (12023): Found entity 1: arbiter File: /job/student/hdl/scott_cp4/arbiter.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/scott_cp4/lru_array.sv
    Info (12023): Found entity 1: lru_array File: /job/student/hdl/scott_cp4/lru_array.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cacheline_adapter.sv
    Info (12023): Found entity 1: cacheline_adaptor File: /job/student/hdl/cache/cacheline_adapter.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/line_adapter.sv
    Info (12023): Found entity 1: line_adapter File: /job/student/hdl/cache/line_adapter.sv Line: 1
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
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_MEM_WB.sv
    Info (12023): Found entity 1: sreg_MEM_WB File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_IF_ID.sv
    Info (12023): Found entity 1: sreg_IF_ID File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_ID_EX.sv
    Info (12023): Found entity 1: sreg_ID_EX File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_EX_MEM.sv
    Info (12023): Found entity 1: sreg_EX_MEM File: /job/student/hdl/pipeline/sreg_EX_MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/MEM.sv
    Info (12023): Found entity 1: MEM File: /job/student/hdl/pipeline/MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/IF.sv
    Info (12023): Found entity 1: IF File: /job/student/hdl/pipeline/IF.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/ID.sv
    Info (12023): Found entity 1: ID File: /job/student/hdl/pipeline/ID.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/hazard_detection.sv
    Info (12023): Found entity 1: hazard_detection File: /job/student/hdl/pipeline/hazard_detection.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/EX.sv
    Info (12023): Found entity 1: EX File: /job/student/hdl/pipeline/EX.sv Line: 5
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/control_rom.sv
    Info (12023): Found entity 1: control_rom File: /job/student/hdl/pipeline/control_rom.sv Line: 3
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
    Info (12023): Found entity 1: data_array File: /job/student/hdl/cache/data_array.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_datapath.sv
    Info (12023): Found entity 1: cache_datapath File: /job/student/hdl/cache/cache_datapath.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache_control.sv
    Info (12023): Found entity 1: cache_control File: /job/student/hdl/cache/cache_control.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/cache.sv
    Info (12023): Found entity 1: cache File: /job/student/hdl/cache/cache.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/array.sv
    Info (12023): Found entity 1: array File: /job/student/hdl/cache/array.sv Line: 1
Warning (10236): Verilog HDL Implicit Net warning at sreg_IF_ID.sv(33): created implicit net for "addr_out" File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Warning (10236): Verilog HDL Implicit Net warning at ID.sv(24): created implicit net for "load_regfile_h" File: /job/student/hdl/pipeline/ID.sv Line: 24
Info (12127): Elaborating entity "mp4" for the top level hierarchy
Info (12128): Elaborating entity "cpu_datapath" for hierarchy "cpu_datapath:cpu_datapath" File: /job/student/hdl/mp4.sv Line: 57
Info (12128): Elaborating entity "IF" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 90
Info (12128): Elaborating entity "pc_register" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF|pc_register:PC" File: /job/student/hdl/pipeline/IF.sv Line: 28
Info (12128): Elaborating entity "sreg_IF_ID" for hierarchy "cpu_datapath:cpu_datapath|sreg_IF_ID:sreg_IF_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 108
Warning (10036): Verilog HDL or VHDL warning at sreg_IF_ID.sv(33): object "addr_out" assigned a value but never read File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Warning (10230): Verilog HDL assignment warning at sreg_IF_ID.sv(33): truncated value with size 32 to match size of target (1) File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Info (12128): Elaborating entity "ID" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 127
Info (12128): Elaborating entity "control_rom" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|control_rom:control_rom" File: /job/student/hdl/pipeline/ID.sv Line: 31
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
Info (12128): Elaborating entity "regfile" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|regfile:regfile" File: /job/student/hdl/pipeline/ID.sv Line: 44
Info (12128): Elaborating entity "sreg_ID_EX" for hierarchy "cpu_datapath:cpu_datapath|sreg_ID_EX:sreg_ID_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 146
Info (12128): Elaborating entity "EX" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 169
Info (12128): Elaborating entity "alu" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|alu:ALU" File: /job/student/hdl/pipeline/EX.sv Line: 38
Info (12128): Elaborating entity "cmp" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|cmp:CMP" File: /job/student/hdl/pipeline/EX.sv Line: 47
Info (12128): Elaborating entity "sreg_EX_MEM" for hierarchy "cpu_datapath:cpu_datapath|sreg_EX_MEM:sreg_EX_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 191
Info (12128): Elaborating entity "MEM" for hierarchy "cpu_datapath:cpu_datapath|MEM:stage_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 212
Info (12128): Elaborating entity "sreg_MEM_WB" for hierarchy "cpu_datapath:cpu_datapath|sreg_MEM_WB:sreg_MEM_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 240
Info (12128): Elaborating entity "WB" for hierarchy "cpu_datapath:cpu_datapath|WB:stage_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 260
Info (10264): Verilog HDL Case Statement information at WB.sv(48): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 48
Info (10264): Verilog HDL Case Statement information at WB.sv(57): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 57
Info (12128): Elaborating entity "hazard_detection" for hierarchy "cpu_datapath:cpu_datapath|hazard_detection:hazard" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 291
Info (10264): Verilog HDL Case Statement information at hazard_detection.sv(87): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/hazard_detection.sv Line: 87
Info (10264): Verilog HDL Case Statement information at hazard_detection.sv(96): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/hazard_detection.sv Line: 96
Info (12128): Elaborating entity "cache_p" for hierarchy "cache_p:i_cache" File: /job/student/hdl/mp4.sv Line: 80
Info (12128): Elaborating entity "cache_p_control" for hierarchy "cache_p:i_cache|cache_p_control:cache_p_control" File: /job/student/hdl/scott_cp4/cache_p.sv Line: 47
Info (12128): Elaborating entity "cache_p_datapath" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath" File: /job/student/hdl/scott_cp4/cache_p.sv Line: 62
Info (12128): Elaborating entity "cache_IF_ID" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_IF_ID:cache_IF_ID" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 188
Info (12128): Elaborating entity "cache_p_way" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 206
Info (12128): Elaborating entity "data_array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|data_array_p:data_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 36
Info (12128): Elaborating entity "array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|array_p:tag_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 48
Info (12128): Elaborating entity "array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|array_p:valid_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 60
Info (12128): Elaborating entity "lru_array" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|lru_array:lru_array" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 269
Info (12128): Elaborating entity "p_line_adapter" for hierarchy "cache_p:i_cache|p_line_adapter:bus" File: /job/student/hdl/scott_cp4/cache_p.sv Line: 73
Info (12128): Elaborating entity "arbiter" for hierarchy "arbiter:arbiter" File: /job/student/hdl/mp4.sv Line: 128
Info (12128): Elaborating entity "cache" for hierarchy "cache:l2_cache" File: /job/student/hdl/mp4.sv Line: 145
Info (12128): Elaborating entity "cache_control" for hierarchy "cache:l2_cache|cache_control:control" File: /job/student/hdl/cache/cache.sv Line: 38
Info (12128): Elaborating entity "cache_datapath" for hierarchy "cache:l2_cache|cache_datapath:datapath" File: /job/student/hdl/cache/cache.sv Line: 44
Info (12128): Elaborating entity "data_array" for hierarchy "cache:l2_cache|cache_datapath:datapath|data_array:DM_cache" File: /job/student/hdl/cache/cache_datapath.sv Line: 56
Info (12128): Elaborating entity "array" for hierarchy "cache:l2_cache|cache_datapath:datapath|array:tag" File: /job/student/hdl/cache/cache_datapath.sv Line: 57
Info (12128): Elaborating entity "array" for hierarchy "cache:l2_cache|cache_datapath:datapath|array:valid" File: /job/student/hdl/cache/cache_datapath.sv Line: 58
Info (12128): Elaborating entity "cacheline_adaptor" for hierarchy "cacheline_adaptor:cacheline_adaptor" File: /job/student/hdl/mp4.sv Line: 165
Info (276014): Found 3 instances of uninferred RAM logic
    Info (276007): RAM logic "cache:l2_cache|cache_datapath:datapath|array:tag|data" is uninferred due to asynchronous read logic File: /job/student/hdl/cache/array.sv Line: 12
    Info (276004): RAM logic "cache:l2_cache|cache_datapath:datapath|array:dirty|data" is uninferred due to inappropriate RAM size File: /job/student/hdl/cache/array.sv Line: 12
    Info (276004): RAM logic "cache:l2_cache|cache_datapath:datapath|array:valid|data" is uninferred due to inappropriate RAM size File: /job/student/hdl/cache/array.sv Line: 12
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "mem_write" is stuck at GND File: /job/student/hdl/mp4.sv Line: 11
    Warning (13410): Pin "mem_wdata[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[2]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[3]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[4]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[5]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[6]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[7]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[8]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[9]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[10]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[11]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[12]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[13]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[14]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[15]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[16]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[17]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[18]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[19]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[20]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[21]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[22]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[23]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[24]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[25]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[26]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[27]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[28]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[29]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[30]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[31]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[32]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[33]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[34]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[35]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[36]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[37]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[38]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[39]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[40]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[41]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[42]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[43]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[44]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[45]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[46]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[47]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[48]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[49]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[50]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[51]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[52]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[53]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[54]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[55]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[56]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[57]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[58]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[59]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[60]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[61]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[62]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
    Warning (13410): Pin "mem_wdata[63]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 14
Info (286030): Timing-Driven Synthesis is running
Info (17049): 158 registers lost all their fanouts during netlist optimizations.
Info (144001): Generated suppressed messages file /job/student/output_files/mp4.map.smsg
Info (16010): Generating hard_block partition "hard_block:auto_generated_inst"
    Info (16011): Adding 0 node(s), including 0 DDIO, 0 PLL, 0 transceiver and 0 LCELL
Info (21057): Implemented 36581 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 67 input pins
    Info (21059): Implemented 98 output pins
    Info (21061): Implemented 36416 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 84 warnings
    Info: Peak virtual memory: 1359 megabytes
    Info: Processing ended: Tue Dec 15 09:01:22 2020
    Info: Elapsed time: 00:01:47
    Info: Total CPU time (on all processors): 00:01:44
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
    Info: Processing started: Tue Dec 15 09:06:27 2020
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
    Info: Peak virtual memory: 807 megabytes
    Info: Processing ended: Tue Dec 15 09:06:27 2020
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
vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/p_line_adaptor.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:28 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/p_line_adaptor.sv 
# -- Compiling module p_line_adapter
# 
# Top level modules:
# 	p_line_adapter
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p_control.sv 
# -- Compiling module cache_p_control
# 
# Top level modules:
# 	cache_p_control
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/data_array_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/data_array_p.sv 
# -- Compiling module data_array_p
# 
# Top level modules:
# 	data_array_p
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_IF_ID.sv 
# -- Compiling module cache_IF_ID
# 
# Top level modules:
# 	cache_IF_ID
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/array_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/array_p.sv 
# -- Compiling module array_p
# 
# Top level modules:
# 	array_p
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/arbiter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/arbiter.sv 
# -- Compiling module arbiter
# 
# Top level modules:
# 	arbiter
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/lru_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/lru_array.sv 
# -- Compiling module lru_array
# 
# Top level modules:
# 	lru_array
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cacheline_adapter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cacheline_adapter.sv 
# -- Compiling module cacheline_adaptor
# 
# Top level modules:
# 	cacheline_adaptor
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_IF_ID.sv 
# -- Compiling module sreg_IF_ID
# 
# Top level modules:
# 	sreg_IF_ID
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/data_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/data_array.sv 
# -- Compiling module data_array
# 
# Top level modules:
# 	data_array
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_datapath.sv 
# -- Compiling module cache_datapath
# 
# Top level modules:
# 	cache_datapath
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_control.sv 
# -- Compiling module cache_control
# 
# Top level modules:
# 	cache_control
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/array.sv 
# -- Compiling module array
# 
# Top level modules:
# 	array
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p_way.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p_way.sv 
# -- Compiling module cache_p_way
# 
# Top level modules:
# 	cache_p_way
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache.sv 
# -- Compiling module cache
# 
# Top level modules:
# 	cache
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p_datapath.sv 
# -- Compiling package cache_p_datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cache_p_datapath
# 
# Top level modules:
# 	cache_p_datapath
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_MEM_WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_ID_EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_EX_MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/control_rom.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cmp.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/alu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
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
# End time: 09:06:29 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:29 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p.sv 
# -- Compiling module cache_p
# 
# Top level modules:
# 	cache_p
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/IF.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/hazard_detection.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp4.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vlog -vlog01compat -work work +incdir+/job/student/hvl {/job/student/hvl/rvfimon.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/source_tb.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 1
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 09:06:30 on Dec 15,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling module mp3_tb
# 
# Top level modules:
# 	mp3_tb
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp4_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp4_tb 
# Start time: 09:06:30 on Dec 15,2020
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
# End time: 09:06:30 on Dec 15,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
<li> <b>comp1</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>comp2</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>comp2_m</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>comp3</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
</ul>

### Timing ![Failure][failure]
You failed to meet the requirements for timing usability. Please make sure your design is fully constrained for setup and hold, and it has a 900mV 100C Model section. Your timing log file is below.
<details>
<summary>Timing Report</summary>

```
Timing Analyzer report for mp4
Thu Dec  3 02:49:45 2020
Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition


---------------------
; Table of Contents ;
---------------------
  1. Legal Notice
  2. Timing Analyzer Summary
  3. Parallel Compilation
  4. Clocks
  5. Slow 900mV 100C Model Fmax Summary
  6. Timing Closure Recommendations
  7. Slow 900mV 100C Model Setup Summary
  8. Slow 900mV 100C Model Hold Summary
  9. Slow 900mV 100C Model Recovery Summary
 10. Slow 900mV 100C Model Removal Summary
 11. Slow 900mV 100C Model Minimum Pulse Width Summary
 12. Slow 900mV 100C Model Metastability Summary
 13. Slow 900mV -40C Model Fmax Summary
 14. Slow 900mV -40C Model Setup Summary
 15. Slow 900mV -40C Model Hold Summary
 16. Slow 900mV -40C Model Recovery Summary
 17. Slow 900mV -40C Model Removal Summary
 18. Slow 900mV -40C Model Minimum Pulse Width Summary
 19. Slow 900mV -40C Model Metastability Summary
 20. Fast 900mV -40C Model Setup Summary
 21. Fast 900mV -40C Model Hold Summary
 22. Fast 900mV -40C Model Recovery Summary
 23. Fast 900mV -40C Model Removal Summary
 24. Fast 900mV -40C Model Minimum Pulse Width Summary
 25. Fast 900mV -40C Model Metastability Summary
 26. Multicorner Timing Analysis Summary
 27. Board Trace Model Assignments
 28. Input Transition Times
 29. Signal Integrity Metrics (Slow 900mv n40c Model)
 30. Signal Integrity Metrics (Slow 900mv 100c Model)
 31. Signal Integrity Metrics (Fast 900mv n40c Model)
 32. Setup Transfers
 33. Hold Transfers
 34. Report TCCS
 35. Report RSKM
 36. Unconstrained Paths Summary
 37. Clock Status Summary
 38. Unconstrained Input Ports
 39. Unconstrained Output Ports
 40. Unconstrained Input Ports
 41. Unconstrained Output Ports
 42. Timing Analyzer Messages



----------------
; Legal Notice ;
----------------
Copyright (C) 2018  Intel Corporation. All rights reserved.
Your use of Intel Corporation's design tools, logic functions 
and other software and tools, and its AMPP partner logic 
functions, and any output files from any of the foregoing 
(including device programming or simulation files), and any 
associated documentation or information are expressly subject 
to the terms and conditions of the Intel Program License 
Subscription Agreement, the Intel Quartus Prime License Agreement,
the Intel FPGA IP License Agreement, or other applicable license
agreement, including, without limitation, that your use is for
the sole purpose of programming logic devices manufactured by
Intel and sold by Intel or its authorized distributors.  Please
refer to the applicable agreement for further details.



+---------------------------------------------------------------------------------+
; Timing Analyzer Summary                                                         ;
+-----------------------+---------------------------------------------------------+
; Quartus Prime Version ; Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition ;
; Timing Analyzer       ; Legacy Timing Analyzer                                  ;
; Revision Name         ; mp4                                                     ;
; Device Family         ; Arria II GX                                             ;
; Device Name           ; EP2AGX45DF25I3                                          ;
; Timing Models         ; Final                                                   ;
; Delay Model           ; Combined                                                ;
; Rise/Fall Delays      ; Enabled                                                 ;
+-----------------------+---------------------------------------------------------+


+------------------------------------------+
; Parallel Compilation                     ;
+----------------------------+-------------+
; Processors                 ; Number      ;
+----------------------------+-------------+
; Number detected on machine ; 24          ;
; Maximum allowed            ; 12          ;
;                            ;             ;
; Average used               ; 1.13        ;
; Maximum used               ; 12          ;
;                            ;             ;
; Usage by Processor         ; % Time Used ;
;     Processor 1            ; 100.0%      ;
;     Processor 2            ;   1.4%      ;
;     Processors 3-12        ;   1.2%      ;
+----------------------------+-------------+


+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Clocks                                                                                                                                                                          ;
+------------+------+--------+------------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+---------+
; Clock Name ; Type ; Period ; Frequency  ; Rise  ; Fall  ; Duty Cycle ; Divide by ; Multiply by ; Phase ; Offset ; Edge List ; Edge Shift ; Inverted ; Master ; Source ; Targets ;
+------------+------+--------+------------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+---------+
; clk        ; Base ; 1.000  ; 1000.0 MHz ; 0.000 ; 0.500 ;            ;           ;             ;       ;        ;           ;            ;          ;        ;        ; { clk } ;
+------------+------+--------+------------+-------+-------+------------+-----------+-------------+-------+--------+-----------+------------+----------+--------+--------+---------+


+-----------------------------------------------------------------------------------------------------------+
; Slow 900mV 100C Model Fmax Summary                                                                        ;
+------------+-----------------+------------+---------------------------------------------------------------+
; Fmax       ; Restricted Fmax ; Clock Name ; Note                                                          ;
+------------+-----------------+------------+---------------------------------------------------------------+
; 289.27 MHz ; 260.01 MHz      ; clk        ; limit due to minimum period restriction (max I/O toggle rate) ;
+------------+-----------------+------------+---------------------------------------------------------------+
This panel reports FMAX for every clock in the design, regardless of the user-specified clock periods.  FMAX is only computed for paths where the source and destination registers or ports are driven by the same clock.  Paths of different clocks, including generated clocks, are ignored.  For paths between a clock and its inversion, FMAX is computed as if the rising and falling edges are scaled along with FMAX, such that the duty cycle (in terms of a percentage) is maintained. Altera recommends that you always use clock constraints and other slack reports for sign-off analysis.


----------------------------------
; Timing Closure Recommendations ;
----------------------------------
HTML report is unavailable in plain text report export.


+-------------------------------------+
; Slow 900mV 100C Model Setup Summary ;
+-------+--------+--------------------+
; Clock ; Slack  ; End Point TNS      ;
+-------+--------+--------------------+
; clk   ; -2.457 ; -835.041           ;
+-------+--------+--------------------+


+------------------------------------+
; Slow 900mV 100C Model Hold Summary ;
+-------+-------+--------------------+
; Clock ; Slack ; End Point TNS      ;
+-------+-------+--------------------+
; clk   ; 0.292 ; 0.000              ;
+-------+-------+--------------------+


------------------------------------------
; Slow 900mV 100C Model Recovery Summary ;
------------------------------------------
No paths to report.


-----------------------------------------
; Slow 900mV 100C Model Removal Summary ;
-----------------------------------------
No paths to report.


+---------------------------------------------------+
; Slow 900mV 100C Model Minimum Pulse Width Summary ;
+-------+--------+----------------------------------+
; Clock ; Slack  ; End Point TNS                    ;
+-------+--------+----------------------------------+
; clk   ; -2.846 ; -864.097                         ;
+-------+--------+----------------------------------+


-----------------------------------------------
; Slow 900mV 100C Model Metastability Summary ;
-----------------------------------------------
No synchronizer chains to report.


+-----------------------------------------------------------------------------------------------------------+
; Slow 900mV -40C Model Fmax Summary                                                                        ;
+------------+-----------------+------------+---------------------------------------------------------------+
; Fmax       ; Restricted Fmax ; Clock Name ; Note                                                          ;
+------------+-----------------+------------+---------------------------------------------------------------+
; 304.97 MHz ; 260.01 MHz      ; clk        ; limit due to minimum period restriction (max I/O toggle rate) ;
+------------+-----------------+------------+---------------------------------------------------------------+
This panel reports FMAX for every clock in the design, regardless of the user-specified clock periods.  FMAX is only computed for paths where the source and destination registers or ports are driven by the same clock.  Paths of different clocks, including generated clocks, are ignored.  For paths between a clock and its inversion, FMAX is computed as if the rising and falling edges are scaled along with FMAX, such that the duty cycle (in terms of a percentage) is maintained. Altera recommends that you always use clock constraints and other slack reports for sign-off analysis.


+-------------------------------------+
; Slow 900mV -40C Model Setup Summary ;
+-------+--------+--------------------+
; Clock ; Slack  ; End Point TNS      ;
+-------+--------+--------------------+
; clk   ; -2.279 ; -762.680           ;
+-------+--------+--------------------+


+------------------------------------+
; Slow 900mV -40C Model Hold Summary ;
+-------+-------+--------------------+
; Clock ; Slack ; End Point TNS      ;
+-------+-------+--------------------+
; clk   ; 0.285 ; 0.000              ;
+-------+-------+--------------------+


------------------------------------------
; Slow 900mV -40C Model Recovery Summary ;
------------------------------------------
No paths to report.


-----------------------------------------
; Slow 900mV -40C Model Removal Summary ;
-----------------------------------------
No paths to report.


+---------------------------------------------------+
; Slow 900mV -40C Model Minimum Pulse Width Summary ;
+-------+--------+----------------------------------+
; Clock ; Slack  ; End Point TNS                    ;
+-------+--------+----------------------------------+
; clk   ; -2.846 ; -864.914                         ;
+-------+--------+----------------------------------+


-----------------------------------------------
; Slow 900mV -40C Model Metastability Summary ;
-----------------------------------------------
No synchronizer chains to report.


+-------------------------------------+
; Fast 900mV -40C Model Setup Summary ;
+-------+--------+--------------------+
; Clock ; Slack  ; End Point TNS      ;
+-------+--------+--------------------+
; clk   ; -0.743 ; -145.153           ;
+-------+--------+--------------------+


+------------------------------------+
; Fast 900mV -40C Model Hold Summary ;
+-------+-------+--------------------+
; Clock ; Slack ; End Point TNS      ;
+-------+-------+--------------------+
; clk   ; 0.145 ; 0.000              ;
+-------+-------+--------------------+


------------------------------------------
; Fast 900mV -40C Model Recovery Summary ;
------------------------------------------
No paths to report.


-----------------------------------------
; Fast 900mV -40C Model Removal Summary ;
-----------------------------------------
No paths to report.


+---------------------------------------------------+
; Fast 900mV -40C Model Minimum Pulse Width Summary ;
+-------+--------+----------------------------------+
; Clock ; Slack  ; End Point TNS                    ;
+-------+--------+----------------------------------+
; clk   ; -2.846 ; -362.742                         ;
+-------+--------+----------------------------------+


-----------------------------------------------
; Fast 900mV -40C Model Metastability Summary ;
-----------------------------------------------
No synchronizer chains to report.


+--------------------------------------------------------------------------------+
; Multicorner Timing Analysis Summary                                            ;
+------------------+----------+-------+----------+---------+---------------------+
; Clock            ; Setup    ; Hold  ; Recovery ; Removal ; Minimum Pulse Width ;
+------------------+----------+-------+----------+---------+---------------------+
; Worst-case Slack ; -2.457   ; 0.145 ; N/A      ; N/A     ; -2.846              ;
;  clk             ; -2.457   ; 0.145 ; N/A      ; N/A     ; -2.846              ;
; Design-wide TNS  ; -835.041 ; 0.0   ; 0.0      ; 0.0     ; -864.914            ;
;  clk             ; -835.041 ; 0.000 ; N/A      ; N/A     ; -864.914            ;
+------------------+----------+-------+----------+---------+---------------------+


+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Board Trace Model Assignments                                                                                                                                                                                                                                                                                                                                                                                    ;
+---------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+
; Pin           ; I/O Standard ; Near Tline Length ; Near Tline L per Length ; Near Tline C per Length ; Near Series R ; Near Differential R ; Near Pull-up R ; Near Pull-down R ; Near C ; Far Tline Length ; Far Tline L per Length ; Far Tline C per Length ; Far Series R ; Far Pull-up R ; Far Pull-down R ; Far C ; Termination Voltage ; Far Differential R ; EBD File Name ; EBD Signal Name ; EBD Far-end ;
+---------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+
; mem_read      ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_write     ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[0]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[1]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[2]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[3]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[4]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[5]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[6]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[7]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[8]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[9]   ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[10]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[11]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[12]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[13]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[14]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[15]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[16]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[17]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[18]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[19]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[20]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[21]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[22]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[23]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[24]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[25]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[26]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[27]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[28]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[29]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[30]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_addr[31]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[0]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[1]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[2]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[3]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[4]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[5]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[6]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[7]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[8]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[9]  ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[10] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[11] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[12] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[13] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[14] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[15] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[16] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[17] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[18] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[19] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[20] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[21] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[22] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[23] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[24] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[25] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[26] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[27] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[28] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[29] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[30] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[31] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[32] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[33] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[34] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[35] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[36] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[37] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[38] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[39] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[40] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[41] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[42] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[43] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[44] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[45] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[46] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[47] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[48] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[49] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[50] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[51] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[52] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[53] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[54] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[55] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[56] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[57] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[58] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[59] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[60] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[61] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[62] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; mem_wdata[63] ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
; ~ALTERA_nCEO~ ; 2.5 V        ; 0 in              ; 0 H/in                  ; 0 F/in                  ; short         ; -                   ; open           ; open             ; open   ; 0 in             ; 0 H/in                 ; 0 F/in                 ; short        ; open          ; open            ; open  ; 0 V                 ; -                  ; n/a           ; n/a             ; n/a         ;
+---------------+--------------+-------------------+-------------------------+-------------------------+---------------+---------------------+----------------+------------------+--------+------------------+------------------------+------------------------+--------------+---------------+-----------------+-------+---------------------+--------------------+---------------+-----------------+-------------+


+------------------------------------------------------------------+
; Input Transition Times                                           ;
+---------------+--------------+-----------------+-----------------+
; Pin           ; I/O Standard ; 10-90 Rise Time ; 90-10 Fall Time ;
+---------------+--------------+-----------------+-----------------+
; mem_rdata[0]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[1]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[2]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[3]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[4]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[5]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[6]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[7]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[8]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[9]  ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[10] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[11] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[12] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[13] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[14] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[15] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[16] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[17] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[18] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[19] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[20] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[21] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[22] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[23] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[24] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[25] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[26] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[27] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[28] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[29] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[30] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[31] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[32] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[33] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[34] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[35] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[36] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[37] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[38] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[39] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[40] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[41] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[42] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[43] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[44] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[45] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[46] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[47] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[48] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[49] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[50] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[51] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[52] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[53] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[54] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[55] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[56] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[57] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[58] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[59] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[60] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[61] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[62] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_rdata[63] ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; mem_resp      ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; clk           ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
; rst           ; 2.5 V        ; 2000 ps         ; 2000 ps         ;
+---------------+--------------+-----------------+-----------------+


+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Slow 900mv n40c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin           ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_write     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0236 V           ; 0.15 V                               ; 0.206 V                              ; 4.89e-10 s                  ; 3.96e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0236 V          ; 0.15 V                              ; 0.206 V                             ; 4.89e-10 s                 ; 3.96e-10 s                 ; No                        ; Yes                       ;
; mem_addr[0]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[1]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[2]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[3]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[4]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[5]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[6]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[7]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[8]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[9]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[10]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[11]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[12]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[13]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[14]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[15]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[16]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[17]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[18]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[19]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[20]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[21]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[22]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[23]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[24]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[25]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[26]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[27]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[28]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[29]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[30]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_addr[31]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[0]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[1]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[2]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[3]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[4]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[5]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[6]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[7]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[8]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[9]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[10] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[11] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[12] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[13] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[14] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[15] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0236 V           ; 0.15 V                               ; 0.206 V                              ; 4.89e-10 s                  ; 3.96e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0236 V          ; 0.15 V                              ; 0.206 V                             ; 4.89e-10 s                 ; 3.96e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[16] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[17] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[18] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[19] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[20] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[21] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[22] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[23] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[24] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[25] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[26] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[27] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[28] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[29] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[30] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[31] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[32] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[33] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[34] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[35] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[36] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[37] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[38] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[39] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[40] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[41] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[42] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[43] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[44] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[45] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[46] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[47] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[48] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[49] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[50] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[51] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[52] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[53] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[54] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[55] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0236 V           ; 0.15 V                               ; 0.206 V                              ; 4.89e-10 s                  ; 3.96e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0236 V          ; 0.15 V                              ; 0.206 V                             ; 4.89e-10 s                 ; 3.96e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[56] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0236 V           ; 0.15 V                               ; 0.206 V                              ; 4.89e-10 s                  ; 3.96e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0236 V          ; 0.15 V                              ; 0.206 V                             ; 4.89e-10 s                 ; 3.96e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[57] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[58] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[59] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[60] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[61] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[62] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.94e-08 V                   ; 2.31 V              ; -0.0225 V           ; 0.246 V                              ; 0.189 V                              ; 5.43e-10 s                  ; 5.09e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.94e-08 V                  ; 2.31 V             ; -0.0225 V          ; 0.246 V                             ; 0.189 V                             ; 5.43e-10 s                 ; 5.09e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[63] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.96e-08 V                   ; 2.31 V              ; -0.0217 V           ; 0.231 V                              ; 0.167 V                              ; 5.27e-10 s                  ; 4.98e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 3.96e-08 V                  ; 2.31 V             ; -0.0217 V          ; 0.231 V                             ; 0.167 V                             ; 5.27e-10 s                 ; 4.98e-10 s                 ; No                        ; Yes                       ;
; ~ALTERA_nCEO~ ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 4.66e-08 V                   ; 2.31 V              ; -0.0175 V           ; 0.195 V                              ; 0.162 V                              ; 5.16e-10 s                  ; 6.14e-10 s                  ; No                         ; Yes                        ; 2.28 V                      ; 4.66e-08 V                  ; 2.31 V             ; -0.0175 V          ; 0.195 V                             ; 0.162 V                             ; 5.16e-10 s                 ; 6.14e-10 s                 ; No                        ; Yes                       ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Slow 900mv 100c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin           ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_write     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.0095 V           ; 0.148 V                              ; 0.075 V                              ; 6.07e-10 s                  ; 5.93e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.0095 V          ; 0.148 V                             ; 0.075 V                             ; 6.07e-10 s                 ; 5.93e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[0]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[1]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[2]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[3]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[4]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[5]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[6]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[7]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[8]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[9]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[10]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[11]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[12]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[13]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[14]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[15]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[16]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[17]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[18]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[19]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[20]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[21]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[22]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[23]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[24]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[25]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[26]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[27]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[28]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[29]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[30]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_addr[31]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[0]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[1]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[2]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[3]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[4]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[5]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[6]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[7]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[8]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[9]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[10] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[11] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[12] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[13] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[14] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[15] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.0095 V           ; 0.148 V                              ; 0.075 V                              ; 6.07e-10 s                  ; 5.93e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.0095 V          ; 0.148 V                             ; 0.075 V                             ; 6.07e-10 s                 ; 5.93e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[16] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[17] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[18] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[19] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[20] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[21] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[22] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[23] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[24] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[25] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[26] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[27] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[28] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[29] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[30] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[31] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[32] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[33] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[34] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[35] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[36] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[37] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[38] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[39] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[40] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[41] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[42] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[43] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[44] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[45] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[46] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[47] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[48] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[49] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[50] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[51] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[52] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[53] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[54] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[55] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.0095 V           ; 0.148 V                              ; 0.075 V                              ; 6.07e-10 s                  ; 5.93e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.0095 V          ; 0.148 V                             ; 0.075 V                             ; 6.07e-10 s                 ; 5.93e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[56] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.0095 V           ; 0.148 V                              ; 0.075 V                              ; 6.07e-10 s                  ; 5.93e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.0095 V          ; 0.148 V                             ; 0.075 V                             ; 6.07e-10 s                 ; 5.93e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[57] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[58] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[59] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[60] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[61] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[62] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00905 V          ; 0.105 V                              ; 0.096 V                              ; 7.51e-10 s                  ; 7.28e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00905 V         ; 0.105 V                             ; 0.096 V                             ; 7.51e-10 s                 ; 7.28e-10 s                 ; Yes                       ; Yes                       ;
; mem_wdata[63] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.39e-05 V                   ; 2.29 V              ; -0.00908 V          ; 0.154 V                              ; 0.085 V                              ; 7.35e-10 s                  ; 7.15e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.39e-05 V                  ; 2.29 V             ; -0.00908 V         ; 0.154 V                             ; 0.085 V                             ; 7.35e-10 s                 ; 7.15e-10 s                 ; Yes                       ; Yes                       ;
; ~ALTERA_nCEO~ ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.28 V                       ; 3.99e-05 V                   ; 2.29 V              ; -0.0073 V           ; 0.123 V                              ; 0.105 V                              ; 6.6e-10 s                   ; 8.47e-10 s                  ; Yes                        ; Yes                        ; 2.28 V                      ; 3.99e-05 V                  ; 2.29 V             ; -0.0073 V          ; 0.123 V                             ; 0.105 V                             ; 6.6e-10 s                  ; 8.47e-10 s                 ; Yes                       ; Yes                       ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
; Signal Integrity Metrics (Fast 900mv n40c Model)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; Pin           ; I/O Standard ; Board Delay on Rise ; Board Delay on Fall ; Steady State Voh at FPGA Pin ; Steady State Vol at FPGA Pin ; Voh Max at FPGA Pin ; Vol Min at FPGA Pin ; Ringback Voltage on Rise at FPGA Pin ; Ringback Voltage on Fall at FPGA Pin ; 10-90 Rise Time at FPGA Pin ; 90-10 Fall Time at FPGA Pin ; Monotonic Rise at FPGA Pin ; Monotonic Fall at FPGA Pin ; Steady State Voh at Far-end ; Steady State Vol at Far-end ; Voh Max at Far-end ; Vol Min at Far-end ; Ringback Voltage on Rise at Far-end ; Ringback Voltage on Fall at Far-end ; 10-90 Rise Time at Far-end ; 90-10 Fall Time at Far-end ; Monotonic Rise at Far-end ; Monotonic Fall at Far-end ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+
; mem_read      ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_write     ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.73e-08 V                   ; 2.68 V              ; -0.0451 V           ; 0.219 V                              ; 0.156 V                              ; 3.82e-10 s                  ; 3.64e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.73e-08 V                  ; 2.68 V             ; -0.0451 V          ; 0.219 V                             ; 0.156 V                             ; 3.82e-10 s                 ; 3.64e-10 s                 ; No                        ; No                        ;
; mem_addr[0]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[1]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[2]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[3]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[4]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[5]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[6]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[7]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[8]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[9]   ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[10]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[11]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[12]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[13]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[14]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[15]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[16]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[17]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[18]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[19]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[20]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[21]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[22]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[23]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[24]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[25]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[26]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[27]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[28]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_addr[29]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[30]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_addr[31]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[0]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[1]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[2]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[3]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[4]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[5]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[6]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[7]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[8]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[9]  ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[10] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[11] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[12] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[13] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[14] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[15] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.73e-08 V                   ; 2.68 V              ; -0.0451 V           ; 0.219 V                              ; 0.156 V                              ; 3.82e-10 s                  ; 3.64e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.73e-08 V                  ; 2.68 V             ; -0.0451 V          ; 0.219 V                             ; 0.156 V                             ; 3.82e-10 s                 ; 3.64e-10 s                 ; No                        ; No                        ;
; mem_wdata[16] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[17] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[18] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[19] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[20] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[21] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[22] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[23] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[24] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[25] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[26] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[27] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[28] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[29] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[30] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[31] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[32] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[33] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[34] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[35] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[36] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[37] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[38] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[39] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[40] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[41] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[42] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[43] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[44] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[45] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[46] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[47] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[48] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[49] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[50] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[51] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[52] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[53] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[54] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[55] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.73e-08 V                   ; 2.68 V              ; -0.0451 V           ; 0.219 V                              ; 0.156 V                              ; 3.82e-10 s                  ; 3.64e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.73e-08 V                  ; 2.68 V             ; -0.0451 V          ; 0.219 V                             ; 0.156 V                             ; 3.82e-10 s                 ; 3.64e-10 s                 ; No                        ; No                        ;
; mem_wdata[56] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.73e-08 V                   ; 2.68 V              ; -0.0451 V           ; 0.219 V                              ; 0.156 V                              ; 3.82e-10 s                  ; 3.64e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.73e-08 V                  ; 2.68 V             ; -0.0451 V          ; 0.219 V                             ; 0.156 V                             ; 3.82e-10 s                 ; 3.64e-10 s                 ; No                        ; No                        ;
; mem_wdata[57] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[58] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[59] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[60] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[61] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; mem_wdata[62] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.69e-08 V                   ; 2.68 V              ; -0.0427 V           ; 0.198 V                              ; 0.138 V                              ; 5.01e-10 s                  ; 4.77e-10 s                  ; No                         ; No                         ; 2.62 V                      ; 7.69e-08 V                  ; 2.68 V             ; -0.0427 V          ; 0.198 V                             ; 0.138 V                             ; 5.01e-10 s                 ; 4.77e-10 s                 ; No                        ; No                        ;
; mem_wdata[63] ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 7.68e-08 V                   ; 2.68 V              ; -0.0394 V           ; 0.316 V                              ; 0.256 V                              ; 4.09e-10 s                  ; 3.98e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 7.68e-08 V                  ; 2.68 V             ; -0.0394 V          ; 0.316 V                             ; 0.256 V                             ; 4.09e-10 s                 ; 3.98e-10 s                 ; No                        ; Yes                       ;
; ~ALTERA_nCEO~ ; 2.5 V        ; 0 s                 ; 0 s                 ; 2.62 V                       ; 9.03e-08 V                   ; 2.68 V              ; -0.0326 V           ; 0.275 V                              ; 0.222 V                              ; 4e-10 s                     ; 5.06e-10 s                  ; No                         ; Yes                        ; 2.62 V                      ; 9.03e-08 V                  ; 2.68 V             ; -0.0326 V          ; 0.275 V                             ; 0.222 V                             ; 4e-10 s                    ; 5.06e-10 s                 ; No                        ; Yes                       ;
+---------------+--------------+---------------------+---------------------+------------------------------+------------------------------+---------------------+---------------------+--------------------------------------+--------------------------------------+-----------------------------+-----------------------------+----------------------------+----------------------------+-----------------------------+-----------------------------+--------------------+--------------------+-------------------------------------+-------------------------------------+----------------------------+----------------------------+---------------------------+---------------------------+


+-------------------------------------------------------------------+
; Setup Transfers                                                   ;
+------------+----------+----------+----------+----------+----------+
; From Clock ; To Clock ; RR Paths ; FR Paths ; RF Paths ; FF Paths ;
+------------+----------+----------+----------+----------+----------+
; clk        ; clk      ; 12485    ; 0        ; 0        ; 0        ;
+------------+----------+----------+----------+----------+----------+
Entries labeled "false path" only account for clock-to-clock false paths and not path-based false paths. As a result, actual path counts may be lower than reported.


+-------------------------------------------------------------------+
; Hold Transfers                                                    ;
+------------+----------+----------+----------+----------+----------+
; From Clock ; To Clock ; RR Paths ; FR Paths ; RF Paths ; FF Paths ;
+------------+----------+----------+----------+----------+----------+
; clk        ; clk      ; 12485    ; 0        ; 0        ; 0        ;
+------------+----------+----------+----------+----------+----------+
Entries labeled "false path" only account for clock-to-clock false paths and not path-based false paths. As a result, actual path counts may be lower than reported.


---------------
; Report TCCS ;
---------------
No dedicated SERDES Transmitter circuitry present in device or used in design


---------------
; Report RSKM ;
---------------
No non-DPA dedicated SERDES Receiver circuitry present in device or used in design


+------------------------------------------------+
; Unconstrained Paths Summary                    ;
+---------------------------------+-------+------+
; Property                        ; Setup ; Hold ;
+---------------------------------+-------+------+
; Illegal Clocks                  ; 0     ; 0    ;
; Unconstrained Clocks            ; 0     ; 0    ;
; Unconstrained Input Ports       ; 2     ; 2    ;
; Unconstrained Input Port Paths  ; 345   ; 345  ;
; Unconstrained Output Ports      ; 31    ; 31   ;
; Unconstrained Output Port Paths ; 196   ; 196  ;
+---------------------------------+-------+------+


+-------------------------------------+
; Clock Status Summary                ;
+--------+-------+------+-------------+
; Target ; Clock ; Type ; Status      ;
+--------+-------+------+-------------+
; clk    ; clk   ; Base ; Constrained ;
+--------+-------+------+-------------+


+---------------------------------------------------------------------------------------------------+
; Unconstrained Input Ports                                                                         ;
+------------+--------------------------------------------------------------------------------------+
; Input Port ; Comment                                                                              ;
+------------+--------------------------------------------------------------------------------------+
; mem_resp   ; No input delay, min/max delays, false-path exceptions, or max skew assignments found ;
; rst        ; No input delay, min/max delays, false-path exceptions, or max skew assignments found ;
+------------+--------------------------------------------------------------------------------------+


+------------------------------------------------------------------------------------------------------+
; Unconstrained Output Ports                                                                           ;
+--------------+---------------------------------------------------------------------------------------+
; Output Port  ; Comment                                                                               ;
+--------------+---------------------------------------------------------------------------------------+
; mem_addr[2]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[3]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[4]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[5]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[6]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[7]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[8]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[9]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[10] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[11] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[12] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[13] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[14] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[15] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[16] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[17] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[18] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[19] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[20] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[21] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[22] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[23] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[24] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[25] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[26] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[27] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[28] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[29] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[30] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[31] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_read     ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
+--------------+---------------------------------------------------------------------------------------+


+---------------------------------------------------------------------------------------------------+
; Unconstrained Input Ports                                                                         ;
+------------+--------------------------------------------------------------------------------------+
; Input Port ; Comment                                                                              ;
+------------+--------------------------------------------------------------------------------------+
; mem_resp   ; No input delay, min/max delays, false-path exceptions, or max skew assignments found ;
; rst        ; No input delay, min/max delays, false-path exceptions, or max skew assignments found ;
+------------+--------------------------------------------------------------------------------------+


+------------------------------------------------------------------------------------------------------+
; Unconstrained Output Ports                                                                           ;
+--------------+---------------------------------------------------------------------------------------+
; Output Port  ; Comment                                                                               ;
+--------------+---------------------------------------------------------------------------------------+
; mem_addr[2]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[3]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[4]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[5]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[6]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[7]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[8]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[9]  ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[10] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[11] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[12] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[13] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[14] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[15] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[16] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[17] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[18] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[19] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[20] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[21] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[22] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[23] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[24] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[25] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[26] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[27] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[28] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[29] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[30] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_addr[31] ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
; mem_read     ; No output delay, min/max delays, false-path exceptions, or max skew assignments found ;
+--------------+---------------------------------------------------------------------------------------+


+--------------------------+
; Timing Analyzer Messages ;
+--------------------------+
Info: *******************************************************************
Info: Running Quartus Prime Timing Analyzer
    Info: Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition
    Info: Processing started: Thu Dec  3 02:49:40 2020
Info: Command: quartus_sta mp4 -c mp4
Info: qsta_default_script.tcl version: #1
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20030): Parallel compilation is enabled and will use 12 of the 12 processors detected
Info (21077): Low junction temperature is -40 degrees C
Info (21077): High junction temperature is 100 degrees C
Critical Warning (332012): Synopsys Design Constraints File file not found: 'mp4.sdc'. A Synopsys Design Constraints File is required by the Timing Analyzer to get proper timing constraints. Without it, the Compiler will not properly optimize the design.
Info (332142): No user constrained base clocks found in the design. Calling "derive_clocks -period 1.0"
Info (332105): Deriving Clocks
    Info (332105): create_clock -period 1.000 -name clk clk
Info (332143): No user constrained clock uncertainty found in the design. Calling "derive_clock_uncertainty"
Info (332123): Deriving Clock Uncertainty. Please refer to report_sdc in the Timing Analyzer to see clock uncertainties.
Info: Found TIMING_ANALYZER_REPORT_SCRIPT_INCLUDE_DEFAULT_ANALYSIS = ON
Info: Analyzing Slow 900mV 100C Model
Critical Warning (332148): Timing requirements not met
    Info (11105): For recommendations on closing timing, run Report Timing Closure Recommendations in the Timing Analyzer.
Info (332146): Worst-case setup slack is -2.457
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -2.457            -835.041 clk 
Info (332146): Worst-case hold slack is 0.292
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.292               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is -2.846
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -2.846            -864.097 clk 
Info: Analyzing Slow 900mV -40C Model
Info (334003): Started post-fitting delay annotation
Info (334004): Delay annotation completed successfully
Info (332123): Deriving Clock Uncertainty. Please refer to report_sdc in the Timing Analyzer to see clock uncertainties.
Critical Warning (332148): Timing requirements not met
    Info (11105): For recommendations on closing timing, run Report Timing Closure Recommendations in the Timing Analyzer.
Info (332146): Worst-case setup slack is -2.279
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -2.279            -762.680 clk 
Info (332146): Worst-case hold slack is 0.285
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.285               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is -2.846
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -2.846            -864.914 clk 
Info: Analyzing Fast 900mV -40C Model
Info (332123): Deriving Clock Uncertainty. Please refer to report_sdc in the Timing Analyzer to see clock uncertainties.
Critical Warning (332148): Timing requirements not met
    Info (11105): For recommendations on closing timing, run Report Timing Closure Recommendations in the Timing Analyzer.
Info (332146): Worst-case setup slack is -0.743
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -0.743            -145.153 clk 
Info (332146): Worst-case hold slack is 0.145
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):     0.145               0.000 clk 
Info (332140): No Recovery paths to report
Info (332140): No Removal paths to report
Info (332146): Worst-case minimum pulse width slack is -2.846
    Info (332119):     Slack       End Point TNS Clock 
    Info (332119): ========= =================== =====================
    Info (332119):    -2.846            -362.742 clk 
Info (21077): Low junction temperature is -40 degrees C
Info (21077): High junction temperature is 100 degrees C
Info (332123): Deriving Clock Uncertainty. Please refer to report_sdc in the Timing Analyzer to see clock uncertainties.
Info (332102): Design is not fully constrained for setup requirements
Info (332102): Design is not fully constrained for hold requirements
Info: Quartus Prime Timing Analyzer was successful. 0 errors, 5 warnings
    Info: Peak virtual memory: 1199 megabytes
    Info: Processing ended: Thu Dec  3 02:49:45 2020
    Info: Elapsed time: 00:00:05
    Info: Total CPU time (on all processors): 00:00:04



```

</details>


---
Staff use: 5fd8533a992def9c51c731bc

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
