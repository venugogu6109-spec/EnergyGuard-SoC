
`timescale 1ns/1ps

module fault_detector_tb;

reg clk;
reg reset;

reg [11:0] voltage_in;
reg [11:0] current_in;
reg [23:0] power_in;

reg [11:0] voltage_max;
reg [11:0] voltage_min;
reg [11:0] current_max;
reg [23:0] power_max;

wire over_voltage;
wire under_voltage;
wire over_current;
wire over_power;

fault_detector dut (
    .clk(clk),
    .reset(reset),
    .voltage_in(voltage_in),
    .current_in(current_in),
    .power_in(power_in),
    .voltage_max(voltage_max),
    .voltage_min(voltage_min),
    .current_max(current_max),
    .power_max(power_max),
    .over_voltage(over_voltage),
    .under_voltage(under_voltage),
    .over_current(over_current),
    .over_power(over_power)
);

always #5 clk = ~clk;

task check_flags;
    input exp_ov;
    input exp_uv;
    input exp_oc;
    input exp_op;
    begin
        @(posedge clk);
        #1;
        if ({over_voltage, under_voltage, over_current, over_power}
            !== {exp_ov, exp_uv, exp_oc, exp_op}) begin
            $display("FAIL: OV=%b UV=%b OC=%b OP=%b",
                     over_voltage, under_voltage,
                     over_current, over_power);
            $fatal(1, "Fault detector test failed");
        end else begin
            $display("PASS: OV=%b UV=%b OC=%b OP=%b",
                     over_voltage, under_voltage,
                     over_current, over_power);
        end
    end
endtask

initial begin
    clk = 0;
    reset = 1;

    voltage_in = 0;
    current_in = 0;
    power_in = 0;

    voltage_max = 2500;
    voltage_min = 1800;
    current_max = 1000;
    power_max = 200000;

    check_flags(0, 0, 0, 0);

    reset = 0;

    // Normal operating conditions
    voltage_in = 2200;
    current_in = 500;
    power_in = 100000;
    check_flags(0, 0, 0, 0);

    // Overvoltage
    voltage_in = 2600;
    current_in = 500;
    power_in = 100000;
    check_flags(1, 0, 0, 0);

    // Undervoltage
    voltage_in = 1700;
    current_in = 500;
    power_in = 100000;
    check_flags(0, 1, 0, 0);

    // Overcurrent
    voltage_in = 2200;
    current_in = 1100;
    power_in = 100000;
    check_flags(0, 0, 1, 0);

    // Overpower
    voltage_in = 2200;
    current_in = 500;
    power_in = 250000;
    check_flags(0, 0, 0, 1);

    // Multiple simultaneous faults
    voltage_in = 2600;
    current_in = 1100;
    power_in = 250000;
    check_flags(1, 0, 1, 1);

    $display("All fault detector tests passed.");
    $finish;
end

initial begin
    $dumpfile("fault_detector.vcd");
    $dumpvars(0, fault_detector_tb);
end

endmodule
