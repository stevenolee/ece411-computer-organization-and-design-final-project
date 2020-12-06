# AG Report Generated 2020-12-04 00:11
This is a report about mp4cp3 generated for Hydration_is_Key at 2020-12-04 00:11. The autograder used commit ``13d5b602570e`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/4 (0.0%)
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
    Info: Processing started: Fri Dec  4 06:10:20 2020
Info: Command: quartus_map mp4 -c mp4
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20029): Only one processor detected - disabling parallel compilation
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
Warning (10236): Verilog HDL Implicit Net warning at cache_p_way.sv(31): created implicit net for "mem_byte_sel" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 31
Warning (10236): Verilog HDL Implicit Net warning at cache_p_way.sv(44): created implicit net for "index" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 44
Warning (10236): Verilog HDL Implicit Net warning at cache_p_datapath.sv(210): created implicit net for "IF_ID_cpu_data" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 210
Warning (10236): Verilog HDL Implicit Net warning at cache_p_datapath.sv(233): created implicit net for "data_in" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 233
Warning (10236): Verilog HDL Implicit Net warning at mp4.sv(71): created implicit net for "i_mem_write" File: /job/student/hdl/mp4.sv Line: 71
Warning (10236): Verilog HDL Implicit Net warning at sreg_IF_ID.sv(33): created implicit net for "addr_out" File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Warning (10236): Verilog HDL Implicit Net warning at ID.sv(24): created implicit net for "load_regfile_h" File: /job/student/hdl/pipeline/ID.sv Line: 24
Info (12127): Elaborating entity "mp4" for the top level hierarchy
Warning (10030): Net "l2_wdata_i" at mp4.sv(30) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/mp4.sv Line: 30
Info (12128): Elaborating entity "cpu_datapath" for hierarchy "cpu_datapath:cpu_datapath" File: /job/student/hdl/mp4.sv Line: 55
Info (12128): Elaborating entity "IF" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 87
Info (12128): Elaborating entity "pc_register" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF|pc_register:PC" File: /job/student/hdl/pipeline/IF.sv Line: 28
Info (12128): Elaborating entity "sreg_IF_ID" for hierarchy "cpu_datapath:cpu_datapath|sreg_IF_ID:sreg_IF_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 105
Warning (10036): Verilog HDL or VHDL warning at sreg_IF_ID.sv(33): object "addr_out" assigned a value but never read File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Warning (10230): Verilog HDL assignment warning at sreg_IF_ID.sv(33): truncated value with size 32 to match size of target (1) File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Info (12128): Elaborating entity "ID" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 124
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
Info (12128): Elaborating entity "sreg_ID_EX" for hierarchy "cpu_datapath:cpu_datapath|sreg_ID_EX:sreg_ID_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 143
Info (12128): Elaborating entity "EX" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 166
Info (12128): Elaborating entity "alu" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|alu:ALU" File: /job/student/hdl/pipeline/EX.sv Line: 38
Info (12128): Elaborating entity "cmp" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|cmp:CMP" File: /job/student/hdl/pipeline/EX.sv Line: 47
Info (12128): Elaborating entity "sreg_EX_MEM" for hierarchy "cpu_datapath:cpu_datapath|sreg_EX_MEM:sreg_EX_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 188
Info (12128): Elaborating entity "MEM" for hierarchy "cpu_datapath:cpu_datapath|MEM:stage_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 209
Info (12128): Elaborating entity "sreg_MEM_WB" for hierarchy "cpu_datapath:cpu_datapath|sreg_MEM_WB:sreg_MEM_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 237
Info (12128): Elaborating entity "WB" for hierarchy "cpu_datapath:cpu_datapath|WB:stage_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 256
Info (10264): Verilog HDL Case Statement information at WB.sv(35): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 35
Info (10264): Verilog HDL Case Statement information at WB.sv(44): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 44
Info (12128): Elaborating entity "hazard_detection" for hierarchy "cpu_datapath:cpu_datapath|hazard_detection:hazard" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 283
Info (10264): Verilog HDL Case Statement information at hazard_detection.sv(85): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/hazard_detection.sv Line: 85
Info (10264): Verilog HDL Case Statement information at hazard_detection.sv(94): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/hazard_detection.sv Line: 94
Info (12128): Elaborating entity "cache_p" for hierarchy "cache_p:i_cache" File: /job/student/hdl/mp4.sv Line: 74
Info (12128): Elaborating entity "cache_p_datapath" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath" File: /job/student/hdl/scott_cp4/cache_p.sv Line: 29
Warning (10036): Verilog HDL or VHDL warning at cache_p_datapath.sv(45): object "cache_data_i" assigned a value but never read File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 45
Warning (10858): Verilog HDL warning at cache_p_datapath.sv(45): object IF_ID_data used but never assigned File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 45
Warning (10272): Verilog HDL Case Statement warning at cache_p_datapath.sv(181): case item expression covers a value already covered by a previous case item File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 181
Warning (10272): Verilog HDL Case Statement warning at cache_p_datapath.sv(182): case item expression covers a value already covered by a previous case item File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 182
Warning (10958): SystemVerilog warning at cache_p_datapath.sv(178): unique or priority keyword makes case statement complete File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 178
Warning (10829): SystemVerilog warning at cache_p_datapath.sv(178): unique case statement has overlapping case items File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 178
Warning (10030): Net "data_in" at cache_p_datapath.sv(233) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 233
Info (12128): Elaborating entity "cache_IF_ID" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_IF_ID:cache_IF_ID" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 219
Info (12128): Elaborating entity "cache_p_way" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 237
Warning (10030): Net "mem_byte_sel" at cache_p_way.sv(31) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 31
Warning (10030): Net "index" at cache_p_way.sv(44) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 44
Info (12128): Elaborating entity "data_array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|data_array_p:data_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 36
Info (12128): Elaborating entity "array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|array_p:tag_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 48
Info (12128): Elaborating entity "array_p" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|cache_p_way:cache_way_0|array_p:valid_array" File: /job/student/hdl/scott_cp4/cache_p_way.sv Line: 60
Info (12128): Elaborating entity "lru_array" for hierarchy "cache_p:i_cache|cache_p_datapath:cache_p_datapath|lru_array:lru_array" File: /job/student/hdl/scott_cp4/cache_p_datapath.sv Line: 300
Warning (10230): Verilog HDL assignment warning at lru_array.sv(31): truncated value with size 8 to match size of target (2) File: /job/student/hdl/scott_cp4/lru_array.sv Line: 31
Info (12128): Elaborating entity "line_adapter" for hierarchy "cache_p:i_cache|line_adapter:bus" File: /job/student/hdl/scott_cp4/cache_p.sv Line: 39
Info (12128): Elaborating entity "arbiter" for hierarchy "arbiter:arbiter" File: /job/student/hdl/mp4.sv Line: 114
Info (12128): Elaborating entity "cache" for hierarchy "cache:l2_cache" File: /job/student/hdl/mp4.sv Line: 132
Info (12128): Elaborating entity "cache_control" for hierarchy "cache:l2_cache|cache_control:control" File: /job/student/hdl/cache/cache.sv Line: 36
Info (12128): Elaborating entity "cache_datapath" for hierarchy "cache:l2_cache|cache_datapath:datapath" File: /job/student/hdl/cache/cache.sv Line: 37
Info (12128): Elaborating entity "data_array" for hierarchy "cache:l2_cache|cache_datapath:datapath|data_array:DM_cache" File: /job/student/hdl/cache/cache_datapath.sv Line: 56
Info (12128): Elaborating entity "array" for hierarchy "cache:l2_cache|cache_datapath:datapath|array:tag" File: /job/student/hdl/cache/cache_datapath.sv Line: 57
Info (12128): Elaborating entity "array" for hierarchy "cache:l2_cache|cache_datapath:datapath|array:valid" File: /job/student/hdl/cache/cache_datapath.sv Line: 58
Info (12128): Elaborating entity "cacheline_adaptor" for hierarchy "cacheline_adaptor:cacheline_adaptor" File: /job/student/hdl/mp4.sv Line: 152
Info (276014): Found 3 instances of uninferred RAM logic
    Info (276007): RAM logic "cache:l2_cache|cache_datapath:datapath|array:tag|data" is uninferred due to asynchronous read logic File: /job/student/hdl/cache/array.sv Line: 12
    Info (276004): RAM logic "cache:l2_cache|cache_datapath:datapath|array:dirty|data" is uninferred due to inappropriate RAM size File: /job/student/hdl/cache/array.sv Line: 12
    Info (276004): RAM logic "cache:l2_cache|cache_datapath:datapath|array:valid|data" is uninferred due to inappropriate RAM size File: /job/student/hdl/cache/array.sv Line: 12
Warning (12241): 2 hierarchies have connectivity warnings - see the Connectivity Checks report folder
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "mem_write" is stuck at GND File: /job/student/hdl/mp4.sv Line: 11
    Warning (13410): Pin "mem_addr[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
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
Info (17049): 4217 registers lost all their fanouts during netlist optimizations.
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
Info (21057): Implemented 1060 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 67 input pins
    Info (21059): Implemented 98 output pins
    Info (21061): Implemented 895 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 168 warnings
    Info: Peak virtual memory: 1344 megabytes
    Info: Processing ended: Fri Dec  4 06:10:58 2020
    Info: Elapsed time: 00:00:38
    Info: Total CPU time (on all processors): 00:00:36
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
    Info: Processing started: Fri Dec  4 06:10:59 2020
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
    Info: Processing ended: Fri Dec  4 06:11:00 2020
    Info: Elapsed time: 00:00:01
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
vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/data_array_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/data_array_p.sv 
# -- Compiling module data_array_p
# 
# Top level modules:
# 	data_array_p
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_IF_ID.sv 
# -- Compiling module cache_IF_ID
# 
# Top level modules:
# 	cache_IF_ID
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/array_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/array_p.sv 
# -- Compiling module array_p
# 
# Top level modules:
# 	array_p
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/arbiter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/arbiter.sv 
# -- Compiling module arbiter
# 
# Top level modules:
# 	arbiter
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/lru_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/lru_array.sv 
# -- Compiling module lru_array
# 
# Top level modules:
# 	lru_array
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cacheline_adapter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cacheline_adapter.sv 
# -- Compiling module cacheline_adaptor
# 
# Top level modules:
# 	cacheline_adaptor
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/line_adapter.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/line_adapter.sv 
# -- Compiling module line_adapter
# 
# Top level modules:
# 	line_adapter
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_IF_ID.sv 
# -- Compiling module sreg_IF_ID
# 
# Top level modules:
# 	sreg_IF_ID
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/data_array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/data_array.sv 
# -- Compiling module data_array
# 
# Top level modules:
# 	data_array
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_datapath.sv 
# -- Compiling module cache_datapath
# 
# Top level modules:
# 	cache_datapath
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache_control.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache_control.sv 
# -- Compiling module cache_control
# 
# Top level modules:
# 	cache_control
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/array.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/array.sv 
# -- Compiling module array
# 
# Top level modules:
# 	array
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p_way.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p_way.sv 
# -- Compiling module cache_p_way
# 
# Top level modules:
# 	cache_p_way
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
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
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cache {/job/student/hdl/cache/cache.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cache" /job/student/hdl/cache/cache.sv 
# -- Compiling module cache
# 
# Top level modules:
# 	cache
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p_datapath.sv 
# -- Compiling package cache_p_datapath_sv_unit
# -- Importing package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# -- Compiling module cache_p_datapath
# ** Warning: /job/student/hdl/scott_cp4/cache_p_datapath.sv(181): (vlog-2584) there is a matching case item hence not unique 
# 
# Top level modules:
# 	cache_p_datapath
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 1
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_MEM_WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
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
# End time: 06:11:01 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_ID_EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:01 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_EX_MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/control_rom.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cmp.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/alu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/scott_cp4 {/job/student/hdl/scott_cp4/cache_p.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hdl/scott_cp4" /job/student/hdl/scott_cp4/cache_p.sv 
# -- Compiling module cache_p
# 
# Top level modules:
# 	cache_p
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/IF.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/hazard_detection.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp4.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vlog -vlog01compat -work work +incdir+/job/student/hvl {/job/student/hvl/rvfimon.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/source_tb.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 1
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:11:02 on Dec 04,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling module mp3_tb
# 
# Top level modules:
# 	mp3_tb
# End time: 06:11:02 on Dec 04,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp4_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp4_tb 
# Start time: 06:11:02 on Dec 04,2020
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
# End time: 06:11:03 on Dec 04,2020, Elapsed time: 0:00:01
# Errors: 1, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
<li> <b>comp2_m</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cp1_cache</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cp2</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
<li> <b>cp3</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
<summary>Error Occurred</summary>

```
An error occured when running this test.
If your code did not successfully compile, that is likely the reason.
If your code did compile, then please reach out to a TA on Piazza
```

</details>
</li>
</ul>

---
Staff use: 5fc9d2ba992def9c51c72abf

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 