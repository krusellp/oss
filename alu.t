#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x23469f0 .scope module, "if_alu" "if_alu" 2 3;
 .timescale 0 0;
v0x2325390_0 .net *"_s0", 32 0, L_0x235b940; 1 drivers
v0x235a680_0 .net *"_s3", 0 0, C4<0>; 1 drivers
v0x235a720_0 .net *"_s4", 32 0, C4<000000000000000000000000000000100>; 1 drivers
v0x235a7c0_0 .net *"_s6", 32 0, L_0x235bb70; 1 drivers
v0x235a870_0 .net "in", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x235a910_0 .net "out", 31 0, L_0x235bdb0; 1 drivers
L_0x235b940 .concat [ 32 1 0 0], C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<0>;
L_0x235bb70 .arith/sum 33, L_0x235b940, C4<000000000000000000000000000000100>;
L_0x235bdb0 .part L_0x235bb70, 0, 32;
S_0x2346ae0 .scope module, "test_adder" "test_adder" 3 18;
 .timescale 0 0;
v0x235b440_0 .net "carryout", 0 0, C4<z>; 0 drivers
v0x235b4e0_0 .var "ctrl", 2 0;
v0x235b590_0 .var "in1", 31 0;
v0x235b640_0 .var "in2", 31 0;
v0x235b720_0 .net "overflow", 0 0, C4<z>; 0 drivers
v0x235b7d0_0 .net "result", 31 0, v0x235b2c0_0; 1 drivers
v0x235b890_0 .net "zero", 0 0, C4<z>; 0 drivers
S_0x235a9f0 .scope module, "dut" "big_alu" 3 24, 2 12, S_0x2346ae0;
 .timescale 0 0;
P_0x235aae8 .param/l "ADD" 2 18, C4<000>;
P_0x235ab10 .param/l "AND" 2 22, C4<100>;
P_0x235ab38 .param/l "NAND" 2 23, C4<101>;
P_0x235ab60 .param/l "NOR" 2 24, C4<110>;
P_0x235ab88 .param/l "OR" 2 25, C4<111>;
P_0x235abb0 .param/l "SLT" 2 21, C4<011>;
P_0x235abd8 .param/l "SUB" 2 19, C4<001>;
P_0x235ac00 .param/l "XOR" 2 20, C4<010>;
v0x235af70_0 .alias "carryout", 0 0, v0x235b440_0;
v0x235b030_0 .net "ctrl", 2 0, v0x235b4e0_0; 1 drivers
v0x235b0d0_0 .net "in1", 31 0, v0x235b590_0; 1 drivers
v0x235b170_0 .net "in2", 31 0, v0x235b640_0; 1 drivers
v0x235b220_0 .alias "overflow", 0 0, v0x235b720_0;
v0x235b2c0_0 .var "result", 31 0;
v0x235b3a0_0 .alias "zero", 0 0, v0x235b890_0;
E_0x235a840 .event edge, v0x235b030_0;
    .scope S_0x235a9f0;
T_0 ;
    %wait E_0x235a840;
    %load/v 8, v0x235b030_0, 3;
    %cmpi/u 8, 0, 3;
    %jmp/1 T_0.0, 6;
    %jmp T_0.1;
T_0.0 ;
    %load/v 8, v0x235b0d0_0, 32;
    %load/v 40, v0x235b170_0, 32;
    %add 8, 40, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v0x235b2c0_0, 0, 8;
    %jmp T_0.1;
T_0.1 ;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0x2346ae0;
T_1 ;
    %movi 8, 1, 32;
    %set/v v0x235b590_0, 8, 32;
    %movi 8, 1, 32;
    %set/v v0x235b640_0, 8, 32;
    %load/v 8, v0x235b7d0_0, 32;
    %cmpi/u 8, 16, 32;
    %jmp/0xz  T_1.0, 4;
    %vpi_call 3 39 "$display", "test failed. expected 32'h00000010 recieved %h", v0x235b7d0_0;
T_1.0 ;
    %end;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./alu.v";
    "alu.t.v";
