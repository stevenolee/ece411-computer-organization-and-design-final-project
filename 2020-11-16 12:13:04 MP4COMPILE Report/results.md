# AG Report Generated 2020-11-16 12:13
This is a report about mp4compile generated for Hydration_is_Key at 2020-11-16 12:13. The autograder used commit ``5102236371c6`` as a starting point. If you have any questions about this report, please contact the TAs on Piazza.
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
    Info: Processing started: Mon Nov 16 18:12:45 2020
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
Error (10170): Verilog HDL syntax error at EX.sv(53) near text: ":";  expecting ";". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/pipeline/EX.sv Line: 53
Error (10170): Verilog HDL syntax error at EX.sv(55) near text: "else";  expecting "end". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/pipeline/EX.sv Line: 55
Error (10170): Verilog HDL syntax error at EX.sv(55) near text: ":";  expecting ";". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/pipeline/EX.sv Line: 55
Error (10170): Verilog HDL syntax error at EX.sv(57) near text: "else";  expecting "end". Check for and fix any syntax errors that appear immediately before or at the specified keyword. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number. File: /job/student/hdl/pipeline/EX.sv Line: 57
Error (10112): Ignored design unit "EX" at EX.sv(5) due to previous errors File: /job/student/hdl/pipeline/EX.sv Line: 5
Info (12021): Found 0 design units, including 0 entities, in source file hdl/pipeline/EX.sv
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
Info (144001): Generated suppressed messages file /job/student/output_files/mp4.map.smsg
Error: Quartus Prime Analysis & Synthesis was unsuccessful. 5 errors, 1 warning
    Error: Peak virtual memory: 987 megabytes
    Error: Processing ended: Mon Nov 16 18:13:02 2020
    Error: Elapsed time: 00:00:17
    Error: Total CPU time (on all processors): 00:00:15

```

</details>


### Targeted Tests: 
<ul>
</ul>

---
Staff use: 5fb2c079992def9c51c71fe0

[success]: https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Green_check.svg/13px-Green_check.svg.png 
[failure]: https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Red_x.svg/13px-Red_x.svg.png 
