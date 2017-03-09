#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xa85fc0 .scope module, "test_adder" "test_adder" 2 3;
 .timescale 0 0;
v0xaa1290_0 .var "carryin", 0 0;
v0xaa1330_0 .net "carryout", 0 0, L_0xaa1960; 1 drivers
v0xaa13e0_0 .var "in1", 0 0;
v0xaa1490_0 .var "in2", 0 0;
v0xaa1570_0 .net "sum", 0 0, L_0xaa1750; 1 drivers
S_0xa860b0 .scope module, "dut" "bit_adder" 2 7, 3 1, S_0xa85fc0;
 .timescale 0 0;
L_0xaa1620 .functor XOR 1, v0xaa13e0_0, v0xaa1490_0, C4<0>, C4<0>;
L_0xaa1750 .functor XOR 1, v0xaa1290_0, L_0xaa1620, C4<0>, C4<0>;
L_0xaa18a0 .functor AND 1, v0xaa1290_0, L_0xaa1620, C4<1>, C4<1>;
L_0xaa1900 .functor AND 1, v0xaa13e0_0, v0xaa1490_0, C4<1>, C4<1>;
L_0xaa1960 .functor OR 1, L_0xaa18a0, L_0xaa1900, C4<0>, C4<0>;
v0xa87a10_0 .net "carryin", 0 0, v0xaa1290_0; 1 drivers
v0xaa0d90_0 .alias "carryout", 0 0, v0xaa1330_0;
v0xaa0e30_0 .net "in1", 0 0, v0xaa13e0_0; 1 drivers
v0xaa0ed0_0 .net "in2", 0 0, v0xaa1490_0; 1 drivers
v0xaa0f80_0 .alias "sum", 0 0, v0xaa1570_0;
v0xaa1020_0 .net "w1", 0 0, L_0xaa1620; 1 drivers
v0xaa1100_0 .net "w2", 0 0, L_0xaa18a0; 1 drivers
v0xaa11a0_0 .net "w3", 0 0, L_0xaa1900; 1 drivers
    .scope S_0xa85fc0;
T_0 ;
    %vpi_call 2 16 "$dumpvars";
    %set/v v0xaa13e0_0, 0, 1;
    %set/v v0xaa1490_0, 0, 1;
    %set/v v0xaa1290_0, 0, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 1;
    %cmpi/u 9, 0, 2;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.0, 8;
    %vpi_call 2 19 "$display", "failed. wanted (a, b, ci): 0 + 0 + 0= 0, co = 0. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.0 ;
    %set/v v0xaa13e0_0, 1, 1;
    %set/v v0xaa1490_0, 0, 1;
    %set/v v0xaa1290_0, 0, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 2;
    %cmpi/u 8, 1, 3;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 1;
    %cmpi/u 9, 0, 2;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.2, 8;
    %vpi_call 2 23 "$display", "failed. wanted (a, b, ci) 1 + 0 + 0 = 1, co = 0. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.2 ;
    %set/v v0xaa13e0_0, 0, 1;
    %set/v v0xaa1490_0, 1, 1;
    %set/v v0xaa1290_0, 0, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 2;
    %cmpi/u 8, 1, 3;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 1;
    %cmpi/u 9, 0, 2;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.4, 8;
    %vpi_call 2 27 "$display", "failed. wanted (a, b, ci) 0 + 1 + 0 = 1, co = 0. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.4 ;
    %set/v v0xaa13e0_0, 1, 1;
    %set/v v0xaa1490_0, 0, 1;
    %set/v v0xaa1290_0, 1, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 2;
    %cmpi/u 9, 1, 3;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.6, 8;
    %vpi_call 2 31 "$display", "failed. wanted (a, b, ci) 1 + 0 + 1 = 0, co = 1. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.6 ;
    %set/v v0xaa13e0_0, 1, 1;
    %set/v v0xaa1490_0, 1, 1;
    %set/v v0xaa1290_0, 0, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 1;
    %cmpi/u 8, 0, 2;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 2;
    %cmpi/u 9, 1, 3;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.8, 8;
    %vpi_call 2 35 "$display", "failed. wanted (a, b, ci) 1 + 1 + 0= 0, co = 1. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.8 ;
    %set/v v0xaa13e0_0, 1, 1;
    %set/v v0xaa1490_0, 1, 1;
    %set/v v0xaa1290_0, 1, 1;
    %delay 20, 0;
    %load/v 8, v0xaa1570_0, 1;
    %mov 9, 0, 2;
    %cmpi/u 8, 1, 3;
    %inv 4, 1;
    %mov 8, 4, 1;
    %load/v 9, v0xaa1330_0, 1;
    %mov 10, 0, 2;
    %cmpi/u 9, 1, 3;
    %inv 4, 1;
    %mov 9, 4, 1;
    %or 8, 9, 1;
    %jmp/0xz  T_0.10, 8;
    %vpi_call 2 39 "$display", "failed. wanted (a, b, ci) 1 + 1 + 1 = 1, co = 1. recieved %b, %b", v0xaa1570_0, v0xaa1330_0;
T_0.10 ;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "alu_struc.t.v";
    "./alu_struc.v";
