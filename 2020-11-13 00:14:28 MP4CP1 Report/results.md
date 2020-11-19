# AG Report Generated 2020-11-13 00:14
This is a report about mp4cp1 generated for Hydration_is_Key at 2020-11-13 00:14. The autograder used commit ``384d526d42e9`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/1 (0.0%)
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
    Info: Processing started: Fri Nov 13 06:14:02 2020
Info: Command: quartus_map mp4 -c mp4
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20029): Only one processor detected - disabling parallel compilation
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
Warning (12019): Can't analyze file -- file hdl/control_rom.sv is missing
Critical Warning (10191): Verilog HDL Compiler Directive warning at WB.sv(64): text macro "BAD_MUX_SEL" is undefined File: /job/student/hdl/pipeline/WB.sv Line: 64
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/WB.sv
    Info (12023): Found entity 1: WB File: /job/student/hdl/pipeline/WB.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_MEM_WB.sv
    Info (12023): Found entity 1: sreg_MEM_WB File: /job/student/hdl/pipeline/sreg_MEM_WB.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_IF_ID.sv
    Info (12023): Found entity 1: sreg_IF_ID File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_ID_EX.sv
    Info (12023): Found entity 1: sreg_ID_EX File: /job/student/hdl/pipeline/sreg_ID_EX.sv Line: 1
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/sreg_EX_MEM.sv
    Info (12023): Found entity 1: sreg_EX_MEM File: /job/student/hdl/pipeline/sreg_EX_MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/MEM.sv
    Info (12023): Found entity 1: MEM File: /job/student/hdl/pipeline/MEM.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/IF.sv
    Info (12023): Found entity 1: IF File: /job/student/hdl/pipeline/IF.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/ID.sv
    Info (12023): Found entity 1: ID File: /job/student/hdl/pipeline/ID.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/pipeline/EX.sv
    Info (12023): Found entity 1: EX File: /job/student/hdl/pipeline/EX.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/register.sv
    Info (12023): Found entity 1: register File: /job/student/hdl/cpu/register.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/regfile.sv
    Info (12023): Found entity 1: regfile File: /job/student/hdl/cpu/regfile.sv Line: 3
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cpu/pc_reg.sv
    Info (12023): Found entity 1: pc_register File: /job/student/hdl/cpu/pc_reg.sv Line: 3
Warning (10274): Verilog HDL macro warning at cpu_datapath.sv(2): overriding existing definition for macro "BAD_MUX_SEL", which was defined in "hdl/pipeline/WB.sv", line 64 File: /job/student/hdl/cpu/cpu_datapath.sv Line: 2
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
Warning (10274): Verilog HDL macro warning at cache_datapath.sv(5): overriding existing definition for macro "BAD_MUX_SEL", which was defined in "hdl/pipeline/WB.sv", line 64 File: /job/student/hdl/cache/cache_datapath.sv Line: 5
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
Warning (10236): Verilog HDL Implicit Net warning at cpu_datapath.sv(199): created implicit net for "mem_addr_out" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 199
Warning (10236): Verilog HDL Implicit Net warning at cpu_datapath.sv(220): created implicit net for "mem_read_data" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 220
Info (12127): Elaborating entity "mp4" for the top level hierarchy
Warning (10034): Output port "mem_addr" at mp4.sv(12) has no driver File: /job/student/hdl/mp4.sv Line: 12
Warning (10034): Output port "mem_wdata" at mp4.sv(13) has no driver File: /job/student/hdl/mp4.sv Line: 13
Warning (10034): Output port "mem_read" at mp4.sv(10) has no driver File: /job/student/hdl/mp4.sv Line: 10
Warning (10034): Output port "mem_write" at mp4.sv(11) has no driver File: /job/student/hdl/mp4.sv Line: 11
Info (12128): Elaborating entity "cpu_datapath" for hierarchy "cpu_datapath:cpu_datapath" File: /job/student/hdl/mp4.sv Line: 76
Warning (10030): Net "inst_read" at cpu_datapath.sv(18) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/cpu/cpu_datapath.sv Line: 18
Warning (10030): Net "mem_addr_out" at cpu_datapath.sv(199) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/cpu/cpu_datapath.sv Line: 199
Warning (10030): Net "mem_read_data" at cpu_datapath.sv(220) has no driver or initial value, using a default initial value '0' File: /job/student/hdl/cpu/cpu_datapath.sv Line: 220
Info (12128): Elaborating entity "IF" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 84
Info (12128): Elaborating entity "pc_register" for hierarchy "cpu_datapath:cpu_datapath|IF:stage_IF|pc_register:PC" File: /job/student/hdl/pipeline/IF.sv Line: 26
Info (12128): Elaborating entity "sreg_IF_ID" for hierarchy "cpu_datapath:cpu_datapath|sreg_IF_ID:sreg_IF_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 99
Info (12128): Elaborating entity "ID" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 117
Info (12128): Elaborating entity "control_rom" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|control_rom:control_rom" File: /job/student/hdl/pipeline/ID.sv Line: 25
Warning (10958): SystemVerilog warning at control_rom.sv(57): unique or priority keyword makes case statement complete File: /job/student/hdl/pipeline/control_rom.sv Line: 57
Warning (10034): Output port "ctrl.ir_out" at control_rom.sv(6) has no driver File: /job/student/hdl/pipeline/control_rom.sv Line: 6
Info (10041): Inferred latch for "ctrl.cmpop[0]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.cmpop[1]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.cmpop[2]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.regfilemux_sel[0]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.regfilemux_sel[1]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.regfilemux_sel[2]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.regfilemux_sel[3]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.alumux2_sel[0]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.alumux2_sel[1]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.alumux2_sel[2]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.alumux1_sel" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.cmpmux_sel" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.pcmux_sel[0]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.pcmux_sel[1]" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.data_read" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (10041): Inferred latch for "ctrl.data_write" at control_rom.sv(54) File: /job/student/hdl/pipeline/control_rom.sv Line: 54
Info (12128): Elaborating entity "regfile" for hierarchy "cpu_datapath:cpu_datapath|ID:stage_ID|regfile:regfile" File: /job/student/hdl/pipeline/ID.sv Line: 38
Info (12128): Elaborating entity "sreg_ID_EX" for hierarchy "cpu_datapath:cpu_datapath|sreg_ID_EX:sreg_ID_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 135
Info (12128): Elaborating entity "EX" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 150
Info (12128): Elaborating entity "alu" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|alu:ALU" File: /job/student/hdl/pipeline/EX.sv Line: 27
Info (12128): Elaborating entity "cmp" for hierarchy "cpu_datapath:cpu_datapath|EX:stage_EX|cmp:CMP" File: /job/student/hdl/pipeline/EX.sv Line: 36
Info (12128): Elaborating entity "sreg_EX_MEM" for hierarchy "cpu_datapath:cpu_datapath|sreg_EX_MEM:sreg_EX_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 170
Info (12128): Elaborating entity "MEM" for hierarchy "cpu_datapath:cpu_datapath|MEM:stage_MEM" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 191
Info (12128): Elaborating entity "sreg_MEM_WB" for hierarchy "cpu_datapath:cpu_datapath|sreg_MEM_WB:sreg_MEM_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 213
Info (12128): Elaborating entity "WB" for hierarchy "cpu_datapath:cpu_datapath|WB:stage_WB" File: /job/student/hdl/cpu/cpu_datapath.sv Line: 231
Info (10264): Verilog HDL Case Statement information at WB.sv(33): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 33
Info (10264): Verilog HDL Case Statement information at WB.sv(42): all case item expressions in this case statement are onehot File: /job/student/hdl/pipeline/WB.sv Line: 42
Warning (14025): LATCH primitive "cpu_datapath:cpu_datapath|ID:stage_ID|control_rom:control_rom|ctrl.cmpop[1]" is permanently disabled File: /job/student/hdl/pipeline/control_rom.sv Line: 6
Warning (12241): 2 hierarchies have connectivity warnings - see the Connectivity Checks report folder
Warning (13024): Output pins are stuck at VCC or GND
    Warning (13410): Pin "mem_read" is stuck at GND File: /job/student/hdl/mp4.sv Line: 10
    Warning (13410): Pin "mem_write" is stuck at GND File: /job/student/hdl/mp4.sv Line: 11
    Warning (13410): Pin "mem_addr[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[2]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[3]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[4]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[5]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[6]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[7]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[8]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[9]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[10]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[11]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[12]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[13]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[14]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[15]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[16]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[17]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[18]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[19]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[20]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[21]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[22]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[23]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[24]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[25]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[26]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[27]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[28]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[29]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[30]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_addr[31]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 12
    Warning (13410): Pin "mem_wdata[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[2]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[3]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[4]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[5]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[6]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[7]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[8]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[9]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[10]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[11]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[12]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[13]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[14]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[15]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[16]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[17]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[18]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[19]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[20]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[21]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[22]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[23]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[24]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[25]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[26]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[27]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[28]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[29]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[30]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[31]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[32]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[33]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[34]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[35]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[36]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[37]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[38]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[39]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[40]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[41]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[42]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[43]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[44]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[45]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[46]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[47]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[48]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[49]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[50]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[51]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[52]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[53]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[54]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[55]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[56]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[57]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[58]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[59]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[60]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[61]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[62]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "mem_wdata[63]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 13
    Warning (13410): Pin "inst_read" is stuck at GND File: /job/student/hdl/mp4.sv Line: 18
    Warning (13410): Pin "inst_addr[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 19
    Warning (13410): Pin "inst_addr[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 19
    Warning (13410): Pin "data_mbe[0]" is stuck at VCC File: /job/student/hdl/mp4.sv Line: 26
    Warning (13410): Pin "data_mbe[1]" is stuck at VCC File: /job/student/hdl/mp4.sv Line: 26
    Warning (13410): Pin "data_mbe[2]" is stuck at VCC File: /job/student/hdl/mp4.sv Line: 26
    Warning (13410): Pin "data_mbe[3]" is stuck at VCC File: /job/student/hdl/mp4.sv Line: 26
    Warning (13410): Pin "data_addr[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 27
    Warning (13410): Pin "data_addr[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 27
    Warning (13410): Pin "data_wdata[0]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[1]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[2]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[3]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[4]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[5]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[6]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[7]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[8]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[9]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[10]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[11]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[12]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[13]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[14]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[15]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[16]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[17]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[18]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[19]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[20]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[21]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[22]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[23]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[24]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[25]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[26]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[27]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[28]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[29]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[30]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
    Warning (13410): Pin "data_wdata[31]" is stuck at GND File: /job/student/hdl/mp4.sv Line: 29
Info (286030): Timing-Driven Synthesis is running
Info (17049): 1110 registers lost all their fanouts during netlist optimizations.
Info (16010): Generating hard_block partition "hard_block:auto_generated_inst"
    Info (16011): Adding 0 node(s), including 0 DDIO, 0 PLL, 0 transceiver and 0 LCELL
Warning (21074): Design contains 131 input pin(s) that do not drive logic
    Warning (15610): No output dependent on input pin "mem_resp" File: /job/student/hdl/mp4.sv Line: 8
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
    Warning (15610): No output dependent on input pin "inst_resp" File: /job/student/hdl/mp4.sv Line: 16
    Warning (15610): No output dependent on input pin "inst_rdata[0]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[1]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[2]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[3]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[4]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[5]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[6]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[7]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[8]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[9]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[10]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[11]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[12]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[13]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[14]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[15]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[16]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[17]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[18]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[19]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[20]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[21]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[22]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[23]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[24]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[25]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[26]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[27]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[28]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[29]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[30]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "inst_rdata[31]" File: /job/student/hdl/mp4.sv Line: 17
    Warning (15610): No output dependent on input pin "data_resp" File: /job/student/hdl/mp4.sv Line: 22
    Warning (15610): No output dependent on input pin "data_rdata[0]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[1]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[2]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[3]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[4]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[5]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[6]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[7]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[8]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[9]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[10]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[11]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[12]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[13]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[14]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[15]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[16]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[17]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[18]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[19]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[20]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[21]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[22]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[23]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[24]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[25]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[26]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[27]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[28]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[29]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[30]" File: /job/student/hdl/mp4.sv Line: 23
    Warning (15610): No output dependent on input pin "data_rdata[31]" File: /job/student/hdl/mp4.sv Line: 23
Info (21057): Implemented 461 device resources after synthesis - the final resource count might be different
    Info (21058): Implemented 133 input pins
    Info (21059): Implemented 201 output pins
    Info (21061): Implemented 127 logic cells
Info: Quartus Prime Analysis & Synthesis was successful. 0 errors, 290 warnings
    Info: Peak virtual memory: 1184 megabytes
    Info: Processing ended: Fri Nov 13 06:14:22 2020
    Info: Elapsed time: 00:00:20
    Info: Total CPU time (on all processors): 00:00:17
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
    Info: Processing started: Fri Nov 13 06:14:22 2020
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
    Info: Peak virtual memory: 789 megabytes
    Info: Processing ended: Fri Nov 13 06:14:23 2020
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
vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_mux_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_mux_types.sv 
# -- Compiling package pcmux
# -- Compiling package marmux
# -- Compiling package cmpmux
# -- Compiling package alumux
# -- Compiling package regfilemux
# 
# Top level modules:
# 	--none--
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_IF_ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_IF_ID.sv 
# -- Compiling module sreg_IF_ID
# 
# Top level modules:
# 	sreg_IF_ID
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/regfile.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/regfile.sv 
# -- Compiling module regfile
# 
# Top level modules:
# 	regfile
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/pc_reg.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/pc_reg.sv 
# -- Compiling module pc_register
# 
# Top level modules:
# 	pc_register
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/rv32i_types.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/rv32i_types.sv 
# -- Compiling package rv32i_types
# -- Importing package pcmux
# -- Importing package marmux
# -- Importing package cmpmux
# -- Importing package alumux
# -- Importing package regfilemux
# ** Error: (vlog-13069) /job/student/hdl/rv32i_types.sv(18): near "rv32i_opcode": syntax error, unexpected IDENTIFIER.
# ** Error: /job/student/hdl/rv32i_types.sv(19): (vlog-13205) Syntax error found in the scope following 'alu_ops'. Is there a missing '::'?
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/control_rom.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/control_rom.sv 
# ** Error: /job/student/hdl/pipeline/control_rom.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/control_rom.sv(4): near "instruction": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/WB.sv 
# ** Error: /job/student/hdl/pipeline/WB.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/WB.sv(9): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# ** Error: /job/student/hdl/pipeline/WB.sv(64): (vlog-2163) Macro `BAD_MUX_SEL is undefined.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 3, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_MEM_WB.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_MEM_WB.sv 
# ** Error: /job/student/hdl/pipeline/sreg_MEM_WB.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/sreg_MEM_WB.sv(9): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_ID_EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_ID_EX.sv 
# -- Compiling module sreg_ID_EX
# ** Error: (vlog-13069) /job/student/hdl/pipeline/sreg_ID_EX.sv(5): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/sreg_EX_MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/sreg_EX_MEM.sv 
# ** Error: /job/student/hdl/pipeline/sreg_EX_MEM.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/sreg_EX_MEM.sv(10): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/MEM.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/MEM.sv 
# ** Error: /job/student/hdl/pipeline/MEM.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/MEM.sv(7): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/ID.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/ID.sv 
# ** Error: /job/student/hdl/pipeline/ID.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/ID.sv(9): near "rd": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cmp.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cmp.sv 
# ** Error: /job/student/hdl/cpu/cmp.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/cpu/cmp.sv(9): near "cmpop": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/alu.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/alu.sv 
# ** Error: /job/student/hdl/cpu/alu.sv(3): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/cpu/alu.sv(7): near "aluop": syntax error, unexpected IDENTIFIER, expecting ')'.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/IF.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/IF.sv 
# ** Error: /job/student/hdl/pipeline/IF.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: /job/student/hdl/pipeline/IF.sv(38): (vlog-2163) Macro `BAD_MUX_SEL is undefined.
# End time: 06:14:24 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 2, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/pipeline {/job/student/hdl/pipeline/EX.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:24 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/pipeline" /job/student/hdl/pipeline/EX.sv 
# ** Error: /job/student/hdl/pipeline/EX.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# ** Error: (vlog-13069) /job/student/hdl/pipeline/EX.sv(6): near "ctrl_in": syntax error, unexpected IDENTIFIER, expecting ')'.
# ** Error: /job/student/hdl/pipeline/EX.sv(44): (vlog-2163) Macro `BAD_MUX_SEL is undefined.
# ** Error: /job/student/hdl/pipeline/EX.sv(54): (vlog-2163) Macro `BAD_MUX_SEL is undefined.
# ** Error: /job/student/hdl/pipeline/EX.sv(62): (vlog-2163) Macro `BAD_MUX_SEL is undefined.
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:01
# Errors: 5, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl/cpu {/job/student/hdl/cpu/cpu_datapath.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:25 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl/cpu" /job/student/hdl/cpu/cpu_datapath.sv 
# ** Error: /job/student/hdl/cpu/cpu_datapath.sv(3): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> vlog -sv -work work +incdir+/job/student/hdl {/job/student/hdl/mp4.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:25 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hdl" /job/student/hdl/mp4.sv 
# ** Error: /job/student/hdl/mp4.sv(1): (vlog-13006) Could not find the package (rv32i_types).  Design read will continue, but expect a cascade of errors after this failure.  Furthermore if you experience a vopt-7 error immediately before this error then please check the package names or the library search paths on the command line.
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0
# /opt/altera/modelsim_ase/linuxaloem/vlog failed.
ModelSim> 
> 
vlog -vlog01compat -work work +incdir+/job/student/hvl {/job/student/hvl/rvfimon.v}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:25 on Nov 13,2020
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
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/source_tb.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:25 on Nov 13,2020
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
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 1
ModelSim> vlog -sv -work work +incdir+/job/student/hvl {/job/student/hvl/top.sv}
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 06:14:25 on Nov 13,2020
# vlog -sv -work work "+incdir+/job/student/hvl" /job/student/hvl/top.sv 
# -- Compiling module mp3_tb
# 
# Top level modules:
# 	mp3_tb
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
ModelSim> 
> 
vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs="+acc"  mp4_tb
# vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L arriaii_hssi_ver -L arriaii_pcie_hip_ver -L arriaii_ver -L rtl_work -L work -voptargs=""+acc"" mp4_tb 
# Start time: 06:14:25 on Nov 13,2020
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
# End time: 06:14:25 on Nov 13,2020, Elapsed time: 0:00:00
# Errors: 1, Warnings: 0

```

</details>


### Targeted Tests: 
<ul>
<li> <b>cp1</b> <img src="https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Ambox_warning_yellow.svg/40px-Ambox_warning_yellow.svg.png" alt="error" width="13" height="13" ></img><details>
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
Staff use: 5fae233a992def9c51c71dc1

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 