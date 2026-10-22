read_liberty /pdk/timing/sky130_fd_sc_hd__ss_100C_1v40.lib
read_verilog /work/experiments/multiplier_split/energyguard_split_sky130.v
link_design energyguard_top

read_sdc /work/constraints/energyguard.sdc

puts "===== ENERGYGUARD SPLIT MULTIPLIER: SS CORNER ====="
report_checks -path_delay max -format full_clock_expanded -group_path_count 5
report_worst_slack -max
report_worst_slack -min
report_check_types -max_delay
exit
