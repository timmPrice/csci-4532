#!/usr/bin/bash

iverilog cmos_cells.v fulladder_troj1_synth.v tb/tb_fulladder.v -o out/fa_1
iverilog cmos_cells.v fulladder_troj2_synth.v tb/tb_fulladder.v -o out/fa_2
iverilog cmos_cells.v fulladder_troj3_synth.v tb/tb_fulladder.v -o out/fa_3

iverilog cmos_cells.v decoder_troj1_synth.v tb/tb_decoder.v -o out/dcd_1
iverilog cmos_cells.v decoder_troj2_synth.v tb/tb_decoder.v -o out/dcd_2
iverilog cmos_cells.v decoder_troj3_synth.v tb/tb_decoder.v -o out/dcd_3

iverilog cmos_cells.v multiplier_troj1_synth.v tb/tb_multiplier.v -o out/mul_1
iverilog cmos_cells.v multiplier_troj2_synth.v tb/tb_multiplier.v -o out/mul_2
iverilog cmos_cells.v multiplier_troj3_synth.v tb/tb_multiplier.v -o out/mul_3
