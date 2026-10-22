read_liberty /pdk/timing/sky130_fd_sc_hd__ss_100C_1v40.lib
read_verilog /work/experiments/multiplier_split/power_calculator_baseline_sky130.v
link_design power_calculator

create_clock -name clk -period 10.0 [get_ports clk]
set_clock_uncertainty 0.2 [get_clocks clk]
set_input_delay 1.0 -clock clk [get_ports {voltage_in[*] current_in[*]}]
set_output_delay 1.0 -clock clk [get_ports {power_out[*]}]

puts "===== BASELINE MULTIPLIER SLOW-CORNER STA ====="
report_checks -path_delay max -format full_clock_expanded -group_path_count 5
report_worst_slack -max
report_worst_slack -min
exit
