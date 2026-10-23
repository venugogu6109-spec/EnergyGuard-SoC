
read_liberty /home/vsduser/Desktop/skywater-pdk-libs-sky130_fd_sc_hd/timing/sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog /home/vsduser/Desktop/EnergyGuard/synthesis/energyguard_sky130.v

link_design energyguard_top

read_sdc /home/vsduser/Desktop/EnergyGuard/constraints/energyguard.sdc

check_setup

report_checks -path_delay max -format full_clock_expanded -digits 3
report_checks -path_delay min -format full_clock_expanded -digits 3

report_worst_slack -max
report_worst_slack -min

exit
