read_liberty /pdk/timing/sky130_fd_sc_hd__tt_025C_1v80.lib
read_verilog /work/synthesis/energyguard_sky130.v
link_design energyguard_top
read_sdc /work/constraints/energyguard.sdc

puts "===== ENERGYGUARD TIMING ANALYSIS ====="

puts "===== MAXIMUM DELAY / SETUP PATHS ====="
report_checks -path_delay max -format full_clock_expanded -group_path_count 10

puts "===== MINIMUM DELAY / HOLD PATHS ====="
report_checks -path_delay min -format full_clock_expanded -group_path_count 10

puts "===== WORST SETUP SLACK ====="
report_worst_slack -max

puts "===== WORST HOLD SLACK ====="
report_worst_slack -min

puts "===== TIMING CHECK VIOLATIONS ====="
report_check_types -violators

exit
