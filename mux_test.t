#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1681fc0 .scope module, "mux_test" "mux_test" 2 3;
 .timescale 0 0;
v0x16b6ea0_0 .var "a", 31 0;
v0x16b6f70_0 .var "b", 31 0;
v0x16b7020_0 .net "out", 31 0, L_0x16b71b0; 1 drivers
v0x16b70d0_0 .var "s", 0 0;
S_0x16a5e00 .scope module, "test_mux" "two_input_mux" 2 8, 3 2, S_0x1681fc0;
 .timescale 0 0;
v0x16a5ef0_0 .net "a", 31 0, v0x16b6ea0_0; 1 drivers
v0x16b6cb0_0 .net "b", 31 0, v0x16b6f70_0; 1 drivers
v0x16b6d50_0 .alias "out", 31 0, v0x16b7020_0;
v0x16b6df0_0 .net "sel", 0 0, v0x16b70d0_0; 1 drivers
L_0x16b71b0 .functor MUXZ 32, v0x16b6f70_0, v0x16b6ea0_0, v0x16b70d0_0, C4<>;
    .scope S_0x1681fc0;
T_0 ;
    %movi 8, 2863311530, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v0x16b6ea0_0, 0, 8;
    %movi 8, 3435973836, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v0x16b6f70_0, 0, 8;
    %ix/load 0, 1, 0;
    %assign/v0 v0x16b70d0_0, 0, 1;
    %delay 100, 0;
    %load/v 8, v0x16b7020_0, 32;
    %load/v 40, v0x16b6ea0_0, 32;
    %cmp/u 8, 40, 32;
    %inv 4, 1;
    %jmp/0xz  T_0.0, 4;
    %vpi_call 2 19 "$display", "failed. s = %b | out = %h", v0x16b70d0_0, v0x16b7020_0;
T_0.0 ;
    %movi 8, 2863311530, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v0x16b6ea0_0, 0, 8;
    %movi 8, 3435973836, 32;
    %ix/load 0, 32, 0;
    %assign/v0 v0x16b6f70_0, 0, 8;
    %ix/load 0, 1, 0;
    %assign/v0 v0x16b70d0_0, 0, 0;
    %delay 100, 0;
    %load/v 8, v0x16b7020_0, 32;
    %load/v 40, v0x16b6f70_0, 32;
    %cmp/u 8, 40, 32;
    %inv 4, 1;
    %jmp/0xz  T_0.2, 4;
    %vpi_call 2 26 "$display", "failed. s = %b | out = %h", v0x16b70d0_0, v0x16b7020_0;
T_0.2 ;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "mux_test.t.v";
    "./oss_muxes.v";
