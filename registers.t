#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x997fc0 .scope module, "test_pc" "test_pc" 2 4;
 .timescale 0 0;
v0x9ab190_0 .var "clk", 0 0;
v0x9ab260_0 .var "in", 31 0;
v0x9ab310_0 .net "out", 31 0, v0x9aafa0_0; 1 drivers
v0x9ab3c0_0 .var "start", 0 0;
v0x9ab4a0_0 .var "wrenable", 0 0;
S_0x9980b0 .scope module, "dut" "reg_32_neg" 2 9, 3 2, S_0x997fc0;
 .timescale 0 0;
v0x9998e0_0 .net "clk", 0 0, v0x9ab190_0; 1 drivers
v0x9aaf00_0 .net "in", 31 0, v0x9ab260_0; 1 drivers
v0x9aafa0_0 .var "out", 31 0;
v0x9ab040_0 .net "start", 0 0, v0x9ab3c0_0; 1 drivers
v0x9ab0f0_0 .net "wrenable", 0 0, v0x9ab4a0_0; 1 drivers
E_0x975060 .event posedge, v0x9ab040_0;
E_0x999d10 .event negedge, v0x9998e0_0;
    .scope S_0x9980b0;
T_0 ;
    %wait E_0x999d10;
    %load/v 8, v0x9ab0f0_0, 1;
    %jmp/0xz  T_0.0, 8;
    %load/v 8, v0x9aaf00_0, 32;
    %set/v v0x9aafa0_0, 8, 32;
T_0.0 ;
    %jmp T_0;
    .thread T_0;
    .scope S_0x9980b0;
T_1 ;
    %wait E_0x975060;
    %set/v v0x9aafa0_0, 0, 32;
    %jmp T_1;
    .thread T_1;
    .scope S_0x997fc0;
T_2 ;
    %vpi_call 2 12 "$dumpfile", "pc_reg_test.vcd";
    %vpi_call 2 13 "$dumpvars";
    %movi 8, 139776, 32;
    %set/v v0x9ab260_0, 8, 32;
    %set/v v0x9ab4a0_0, 1, 1;
    %set/v v0x9ab190_0, 0, 1;
    %set/v v0x9ab3c0_0, 1, 1;
    %delay 20, 0;
    %set/v v0x9ab190_0, 1, 1;
    %delay 30, 0;
    %set/v v0x9ab3c0_0, 0, 1;
    %delay 20, 0;
    %set/v v0x9ab190_0, 0, 1;
    %delay 30, 0;
    %set/v v0x9ab190_0, 1, 1;
    %set/v v0x9ab4a0_0, 1, 1;
    %movi 8, 69888, 32;
    %set/v v0x9ab260_0, 8, 32;
    %delay 30, 0;
    %set/v v0x9ab190_0, 0, 1;
    %end;
    .thread T_2;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "registers.t.v";
    "./registers.v";
