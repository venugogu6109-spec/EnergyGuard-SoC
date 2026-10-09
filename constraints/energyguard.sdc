create_clock -name clk -period 10.0 [get_ports clk]
set_clock_uncertainty 0.2 [get_clocks clk]
set_input_delay 1.0 -clock clk [get_ports {voltage_in[*] current_in[*] voltage_max_cfg[*] voltage_min_cfg[*] current_max_cfg[*] power_max_cfg[*]}]
set_output_delay 1.0 -clock clk [get_ports {voltage_sample[*] current_sample[*] power_out[*] energy_out[*] over_voltage under_voltage over_current over_power warning fault_active trip protection_state[*]}]
