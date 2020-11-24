# AG Report Generated 2020-11-24 00:28
This is a report about mp4cp2 generated for Hydration_is_Key at 2020-11-24 00:28. The autograder used commit ``22454d7e22a5`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
### Quick Results:
 - Compilation: NO
 - Targeted: 0/2 (0.0%)
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
    Info: Processing started: Tue Nov 24 06:28:09 2020
Info: Command: quartus_map mp4 -c mp4
Warning (18236): Number of processors has not been specified which may cause overloading on shared machines.  Set the global assignment NUM_PARALLEL_PROCESSORS in your QSF to an appropriate value for best performance.
Info (20029): Only one processor detected - disabling parallel compilation
Info (12021): Found 1 design units, including 1 entities, in source file hdl/cache/arbiter.sv
    Info (12023): Found entity 1: arbiter File: /job/student/hdl/cache/arbiter.sv Line: 1
Warning (12019): Can't analyze file -- file hdl/cache/line_adapter.sv is missing
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
Warning (10236): Verilog HDL Implicit Net warning at mp4.sv(81): created implicit net for "i_mem_write" File: /job/student/hdl/mp4.sv Line: 81
Warning (10236): Verilog HDL Implicit Net warning at sreg_IF_ID.sv(33): created implicit net for "addr_out" File: /job/student/hdl/pipeline/sreg_IF_ID.sv Line: 33
Warning (10236): Verilog HDL Implicit Net warning at ID.sv(24): created implicit net for "load_regfile_h" File: /job/student/hdl/pipeline/ID.sv Line: 24
Info (12127): Elaborating entity "mp4" for the top level hierarchy
Info (12128): Elaborating entity "cpu_datapath" for hierarchy "cpu_datapath:cpu_datapath" File: /job/student/hdl/mp4.sv Line: 65
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
Info (12128): Elaborating entity "cache" for hierarchy "cache:i_cache" File: /job/student/hdl/mp4.sv Line: 84
Info (12128): Elaborating entity "cache_control" for hierarchy "cache:i_cache|cache_control:control" File: /job/student/hdl/cache/cache.sv Line: 36
Info (12128): Elaborating entity "cache_datapath" for hierarchy "cache:i_cache|cache_datapath:datapath" File: /job/student/hdl/cache/cache.sv Line: 37
Info (12128): Elaborating entity "data_array" for hierarchy "cache:i_cache|cache_datapath:datapath|data_array:DM_cache" File: /job/student/hdl/cache/cache_datapath.sv Line: 56
Info (12128): Elaborating entity "array" for hierarchy "cache:i_cache|cache_datapath:datapath|array:tag" File: /job/student/hdl/cache/cache_datapath.sv Line: 57
Info (12128): Elaborating entity "array" for hierarchy "cache:i_cache|cache_datapath:datapath|array:valid" File: /job/student/hdl/cache/cache_datapath.sv Line: 58
Info (12128): Elaborating entity "arbiter" for hierarchy "arbiter:arbiter" File: /job/student/hdl/mp4.sv Line: 125
Error (12006): Node instance "bus" instantiates undefined entity "line_adapter". Ensure that required library paths are specified correctly, define the specified entity, or change the instantiation. If this entity represents Intel FPGA or third-party IP, generate the synthesis files for the IP. File: /job/student/hdl/cache/cache.sv Line: 47
Error (12006): Node instance "bus" instantiates undefined entity "line_adapter". Ensure that required library paths are specified correctly, define the specified entity, or change the instantiation. If this entity represents Intel FPGA or third-party IP, generate the synthesis files for the IP. File: /job/student/hdl/cache/cache.sv Line: 47
Info (144001): Generated suppressed messages file /job/student/output_files/mp4.map.smsg
Error: Quartus Prime Analysis & Synthesis was unsuccessful. 2 errors, 20 warnings
    Error: Peak virtual memory: 1026 megabytes
    Error: Processing ended: Tue Nov 24 06:28:26 2020
    Error: Elapsed time: 00:00:17
    Error: Total CPU time (on all processors): 00:00:16

```

</details>


### Targeted Tests: 
<ul>
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
</ul>

---
Staff use: 5fbca3b9992def9c51c72491

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
