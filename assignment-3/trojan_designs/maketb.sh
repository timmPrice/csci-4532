#!/usr/bin/bash

iverilog cmos_cells.v fulladder_troj1_synth.v tb/tb_fulladder.v -o out/fa_1
iverilog cmos_cells.v fulladder_troj2_synth.v tb/tb_fulladder.v -o out/fa_2
iverilog cmos_cells.v fulladder_troj3_synth.v tb/tb_fulladder.v -o out/fa_3
