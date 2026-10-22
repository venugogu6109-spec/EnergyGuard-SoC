
`timescale 1ns/1ps

module energyguard_top_tb;

    reg clk;
    reg rst;

    reg [11:0] voltage_in;
    reg [11:0] current_in;

    reg [11:0] voltage_max_cfg;
    reg [11:0] voltage_min_cfg;
    reg [11:0] current_max_cfg;
    reg [23:0] power_max_cfg;

    wire [11:0] voltage_sample;
    wire [11:0] current_sample;
    wire [23:0] power_out;
    wire [31:0] energy_out;

    wire over_voltage;
    wire under_voltage;
    wire over_current;
    wire over_power;

    wire warning;
    wire fault_active;
    wire trip;
    wire [1:0] protection_state;

    localparam NORMAL  = 2'b00;
    localparam WARNING = 2'b01;
    localparam FAULT   = 2'b10;
    localparam TRIP    = 2'b11;

    energyguard_top dut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .voltage_max_cfg(voltage_max_cfg),
        .voltage_min_cfg(voltage_min_cfg),
        .current_max_cfg(current_max_cfg),
        .power_max_cfg(power_max_cfg),
        .voltage_sample(voltage_sample),
        .current_sample(current_sample),
        .power_out(power_out),
        .energy_out(energy_out),
        .over_voltage(over_voltage),
        .under_voltage(under_voltage),
        .over_current(over_current),
        .over_power(over_power),
        .warning(warning),
        .fault_active(fault_active),
        .trip(trip),
        .protection_state(protection_state)
    );

    always #5 clk = ~clk;

    task check_value;
        input [31:0] actual;
        input [31:0] expected;
        input [255:0] label_text;
        begin
            if (actual !== expected) begin
                $display(
                    "FAIL: %0s expected=%0d actual=%0d",
                    label_text, expected, actual
                );
                $fatal(1, "Integrated test failed");
            end else begin
                $display(
                    "PASS: %0s = %0d",
                    label_text, actual
                );
            end
        end
    endtask

    initial begin
        clk = 0;
        rst = 1;

        voltage_in = 0;
        current_in = 0;

        voltage_max_cfg = 2500;
        voltage_min_cfg = 50;
        current_max_cfg = 1000;
        power_max_cfg = 200000;

        // Reset the entire design
        repeat (2) @(negedge clk);
        rst = 0;

        // Allow threshold registers to capture configuration
        repeat (2) @(negedge clk);

        // Apply a normal voltage/current sample
        voltage_in = 100;
        current_in = 10;

        // Wait for input and power pipeline to settle
        repeat (6) @(negedge clk);

        check_value(voltage_sample, 100, "Voltage sample");
        check_value(current_sample, 10, "Current sample");
        check_value(power_out, 1000, "Power output");
        check_value(energy_out, 4000, "Energy accumulator");
        check_value(protection_state, NORMAL, "NORMAL state");

        // Apply overvoltage
        voltage_in = 2600;
        current_in = 10;

        // Wait for registered input and fault detector
        wait (over_voltage === 1'b1);
        @(negedge clk);

        check_value(over_voltage, 1, "Overvoltage flag");

        // Check each sequential protection state
        wait (protection_state == WARNING);
        @(negedge clk);
        check_value(protection_state, WARNING, "WARNING state");
        check_value(warning, 1, "Warning output");

        wait (protection_state == FAULT);
        @(negedge clk);
        check_value(protection_state, FAULT, "FAULT state");
        check_value(fault_active, 1, "Fault active output");

        wait (protection_state == TRIP);
        @(negedge clk);
        check_value(protection_state, TRIP, "TRIP state");
        check_value(trip, 1, "Trip output");

        // Clear input fault; TRIP should remain asserted
        voltage_in = 2200;
        repeat (5) @(negedge clk);

        check_value(trip, 1, "Trip retained after fault clears");

        $display("All integrated EnergyGuard tests passed.");
        $finish;
    end

    initial begin
        $dumpfile("energyguard_top.vcd");
        $dumpvars(0, energyguard_top_tb);
    end

    // Prevent a broken or unreachable state from hanging simulation
    initial begin
        #2000;
        $fatal(1, "TIMEOUT: Integrated test did not complete");
    end

endmodule

