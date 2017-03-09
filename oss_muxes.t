#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2096e00 .scope module, "test_1bit_mux" "test_1bit_mux" 2 3;
 .timescale 0 0;
v0x20ac3b0_0 .var "a", 0 0;
v0x20ac450_0 .var "b", 0 0;
v0x20ac500_0 .net "out", 0 0, L_0x20acb70; 1 drivers
v0x20ac5b0_0 .var "sel", 0 0;
S_0x20983f0 .scope module, "dut" "mux_2_input" 2 7, 3 11, S_0x2096e00;
 .timescale 0 0;
L_0x20ac8c0 .functor NOT 1, v0x20ac5b0_0, C4<0>, C4<0>, C4<0>;
L_0x20ac9a0 .functor AND 1, v0x20ac3b0_0, L_0x20ac8c0, C4<1>, C4<1>;
L_0x20acac0 .functor AND 1, v0x20ac450_0, v0x20ac5b0_0, C4<1>, C4<1>;
L_0x20acb70 .functor OR 1, L_0x20ac9a0, L_0x20acac0, C4<0>, C4<0>;
v0x2074cd0_0 .net "a", 0 0, v0x20ac3b0_0; 1 drivers
v0x20abfa0_0 .net "asel", 0 0, L_0x20ac9a0; 1 drivers
v0x20ac040_0 .net "b", 0 0, v0x20ac450_0; 1 drivers
v0x20ac0e0_0 .net "bsel", 0 0, L_0x20acac0; 1 drivers
v0x20ac190_0 .net "nsel", 0 0, L_0x20ac8c0; 1 drivers
v0x20ac230_0 .alias "out", 0 0, v0x20ac500_0;
v0x20ac310_0 .net "sel", 0 0, v0x20ac5b0_0; 1 drivers
S_0x2096ef0 .scope module, "two_input_mux" "two_input_mux" 3 2;
 .timescale 0 0;
v0x20ac690_0 .net "a", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x20ac710_0 .net "b", 31 0, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>; 0 drivers
v0x20ac790_0 .net "out", 31 0, L_0x20accc0; 1 drivers
v0x20ac810_0 .net "sel", 0 0, C4<z>; 0 drivers
L_0x20accc0 .functor MUXZ 32, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz>, C4<z>, C4<>;
    .scope S_0x2096e00;
T_0 ;
    %vpi_call 2 13 "$dumpvars";
    %set/v v0x20ac3b0_0, 0, 1;
    %set/v v0x20ac450_0, 0, 1;
    %set/v v0x20ac5b0_0, 0, 1;
    %delay 1, 0;
    %load/v 8, v0x20ac500_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %inv 4, 1;
    %jmp/0xz  T_0.0, 4;
    %vpi_call 2 16 "$display", "test 1 failed. %b ? %b : %b should equal 0, output = %b", v0x20ac5b0_0, v0x20ac3b0_0, v0x20ac450_0, v0x20ac500_0;
T_0.0 ;
    %set/v v0x20ac3b0_0, 1, 1;
    %set/v v0x20ac450_0, 0, 1;
    %set/v v0x20ac5b0_0, 1, 1;
    %delay 1, 0;
    %load/v 8, v0x20ac500_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %inv 4, 1;
    %jmp/0xz  T_0.2, 4;
    %vpi_call 2 20 "$display", "test 2 failed. %b ? %b : %b should equal 0, output = %b", v0x20ac5b0_0, v0x20ac3b0_0, v0x20ac450_0, v0x20ac500_0;
T_0.2 ;
    %set/v v0x20ac3b0_0, 1, 1;
    %set/v v0x20ac450_0, 0, 1;
    %set/v v0x20ac5b0_0, 0, 1;
    %delay 1, 0;
    %load/v 8, v0x20ac500_0, 1;
    %mov 9, 0, 2;
    %cmpi/u 8, 1, 3;
    %inv 4, 1;
    %jmp/0xz  T_0.4, 4;
    %vpi_call 2 24 "$display", "test 3 failed. %b ? %b : %b should equal 1, output = %b", v0x20ac5b0_0, v0x20ac3b0_0, v0x20ac450_0, v0x20ac500_0;
T_0.4 ;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "oss_muxes.t.v";
    "./oss_muxes.v";
