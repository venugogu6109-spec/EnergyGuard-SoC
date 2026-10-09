
module energyguard_top (
    input wire clk,
    input wire rst,

    input wire [11:0] voltage_in,
    input wire [11:0] current_in,

    input wire [11:0] voltage_max_cfg,
    input wire [11:0] voltage_min_cfg,
    input wire [11:0] current_max_cfg,
    input wire [23:0] power_max_cfg,

    output wire [11:0] voltage_sample,
    output wire [11:0] current_sample,
    output wire [23:0] power_out,
    output wire [31:0] energy_out,

    output wire over_voltage,
    output wire under_voltage,
    output wire over_current,
    output wire over_power,

    output wire warning,
    output wire fault_active,
    output wire trip,
    output wire [1:0] protection_state
);

    wire [11:0] voltage_reg;
    wire [11:0] current_reg;

    wire [11:0] voltage_max;
    wire [11:0] voltage_min;
    wire [11:0] current_max;
    wire [23:0] power_max;

    // 1. Input sampling register
    input_register u_input_register (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .voltage_reg(voltage_reg),
        .current_reg(current_reg)
    );

    assign voltage_sample = voltage_reg;
    assign current_sample = current_reg;

    // 2. Sequential power calculator
    power_calculator u_power_calculator (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_reg),
        .current_in(current_reg),
        .power_out(power_out)
    );

    // 3. Energy accumulator
    energy_accumulator u_energy_accumulator (
        .clk(clk),
        .rst(rst),
        .power_in(power_out),
        .energy_out(energy_out)
    );

    // 4. Threshold register
    threshold_register u_threshold_register (
        .clk(clk),
        .rst(rst),
        .voltage_max_in(voltage_max_cfg),
        .voltage_min_in(voltage_min_cfg),
        .current_max_in(current_max_cfg),
        .power_max_in(power_max_cfg),
        .voltage_max(voltage_max),
        .voltage_min(voltage_min),
        .current_max(current_max),
        .power_max(power_max)
    );

    // 5. Fault detector
    fault_detector u_fault_detector (
        .clk(clk),
        .reset(rst),
        .voltage_in(voltage_reg),
        .current_in(current_reg),
        .power_in(power_out),
        .voltage_max(voltage_max),
        .voltage_min(voltage_min),
        .current_max(current_max),
        .power_max(power_max),
        .over_voltage(over_voltage),
        .under_voltage(under_voltage),
        .over_current(over_current),
        .over_power(over_power)
    );

    // 6. Sequential protection FSM
    protection_fsm u_protection_fsm (
        .clk(clk),
        .reset(rst),
        .over_voltage(over_voltage),
        .under_voltage(under_voltage),
        .over_current(over_current),
        .over_power(over_power),
        .warning(warning),
        .fault_active(fault_active),
        .trip(trip),
        .state(protection_state)
    );

endmodule

