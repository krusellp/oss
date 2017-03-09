#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x167dc90 .scope module, "test_extender" "test_extender" 2 4;
 .timescale 0 0;
v0x16b4db0_0 .net "extended", 31 0, L_0x16b56b0; 1 drivers
v0x16b4e80_0 .var "unextended", 15 0;
S_0x1690580 .scope module, "dut" "sign_extender" 2 8, 3 3, S_0x167dc90;
 .timescale 0 0;
v0x167f080_0 .net *"_s1", 0 0, L_0x16b5410; 1 drivers
v0x16b4bc0_0 .net *"_s2", 15 0, L_0x16b5530; 1 drivers
v0x16b4c60_0 .alias "extended", 31 0, v0x16b4db0_0;
v0x16b4d00_0 .net "unextended", 15 0, v0x16b4e80_0; 1 drivers
L_0x16b5410 .part v0x16b4e80_0, 15, 1;
LS_0x16b5530_0_0 .concat [ 1 1 1 1], L_0x16b5410, L_0x16b5410, L_0x16b5410, L_0x16b5410;
LS_0x16b5530_0_4 .concat [ 1 1 1 1], L_0x16b5410, L_0x16b5410, L_0x16b5410, L_0x16b5410;
LS_0x16b5530_0_8 .concat [ 1 1 1 1], L_0x16b5410, L_0x16b5410, L_0x16b5410, L_0x16b5410;
LS_0x16b5530_0_12 .concat [ 1 1 1 1], L_0x16b5410, L_0x16b5410, L_0x16b5410, L_0x16b5410;
L_0x16b5530 .concat [ 4 4 4 4], LS_0x16b5530_0_0, LS_0x16b5530_0_4, LS_0x16b5530_0_8, LS_0x16b5530_0_12;
L_0x16b56b0 .concat [ 16 16 0 0], v0x16b4e80_0, L_0x16b5530;
S_0x1690490 .scope module, "test_shifter" "test_shifter" 2 27;
 .timescale 0 0;
v0x16b5290_0 .net "shifted", 31 0, L_0x16b5af0; 1 drivers
v0x16b5360_0 .var "unshifted", 31 0;
S_0x16b4f30 .scope module, "dut2" "left_shifter" 2 31, 3 11, S_0x1690490;
 .timescale 0 0;
v0x16b5020_0 .net *"_s2", 29 0, L_0x16b57a0; 1 drivers
v0x16b50a0_0 .net *"_s4", 1 0, C4<00>; 1 drivers
v0x16b5140_0 .alias "shifted", 31 0, v0x16b5290_0;
v0x16b51e0_0 .net "unshifted", 31 0, v0x16b5360_0; 1 drivers
L_0x16b57a0 .part v0x16b5360_0, 0, 30;
L_0x16b5af0 .concat [ 2 30 0 0], C4<00>, L_0x16b57a0;
    .scope S_0x167dc90;
T_0 ;
    %movi 8, 61455, 16;
    %set/v v0x16b4e80_0, 8, 16;
    %delay 30, 0;
    %load/v 8, v0x16b4db0_0, 32;
    %movi 40, 4294963215, 32;
    %cmp/u 8, 40, 32;
    %inv 4, 1;
    %jmp/0xz  T_0.0, 4;
    %vpi_call 2 17 "$display", "test 1 failed. wanted %h recieved %h", 32'b11111111111111111111000000001111, v0x16b4db0_0;
T_0.0 ;
    %movi 8, 7, 16;
    %set/v v0x16b4e80_0, 8, 16;
    %delay 30, 0;
    %load/v 8, v0x16b4db0_0, 32;
    %cmpi/u 8, 7, 32;
    %inv 4, 1;
    %jmp/0xz  T_0.2, 4;
    %vpi_call 2 22 "$display", "test 2 failed. wanted %h recieved %h", 32'b00000000000000000000000000000111, v0x16b4db0_0;
T_0.2 ;
    %end;
    .thread T_0;
    .scope S_0x1690490;
T_1 ;
    %set/v v0x16b5360_0, 1, 32;
    %delay 30, 0;
    %load/v 8, v0x16b5290_0, 32;
    %movi 40, 4294967292, 32;
    %cmp/u 8, 40, 32;
    %inv 4, 1;
    %jmp/0xz  T_1.0, 4;
    %vpi_call 2 40 "$display", "shifter test failed. wanted %h received %h", 32'b00010001000100010001000100011100, v0x16b5290_0;
T_1.0 ;
    %end;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "other_tools.t.v";
    "./other_tools.v";
