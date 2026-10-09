`timescale 1ns/1ps

// EnergyGuard - Threshold Register Testbench

module threshold_register_tb;

    reg clk;
    reg rst;

    reg [11:0] voltage_max_in;
    reg [11:0] voltage_min_in;
    reg [11:0] current_max_in;
    reg [23:0] power_max_in;

    wire [11:0] voltage_max;
    wire [11:0] voltage_min;
    wire [11:0] current_max;
    wire [23:0] power_max;

    // Design Under Test
    threshold_register uut (
        .clk(clk),
        .rst(rst),
        .voltage_max_in(voltage_max_in),
        .voltage_min_in(voltage_min_in),
        .current_max_in(current_max_in),
        .power_max_in(power_max_in),
        .voltage_max(voltage_max),
        .voltage_min(voltage_min),
        .current_max(current_max),
        .power_max(power_max)
    );

    // 100 MHz clock
    always #5 clk = ~clk;

    initial begin

        $dumpfile("threshold_register.vcd");
        $dumpvars(0, threshold_register_tb);

        clk = 1'b0;
        rst = 1'b1;

        voltage_max_in = 12'd0;
        voltage_min_in = 12'd0;
        current_max_in = 12'd0;
        power_max_in   = 24'd0;

        // Reset
        #10;
        rst = 1'b0;

        // Set protection thresholds
        voltage_max_in = 12'd2500;
        voltage_min_in = 12'd1800;
        current_max_in = 12'd1000;
        power_max_in   = 24'd200000;

        #10;

        $display("Threshold register verification completed.");
        $display("Voltage MAX = %d", voltage_max);
        $display("Voltage MIN = %d", voltage_min);
        $display("Current MAX = %d", current_max);
        $display("Power MAX   = %d", power_max);

        $finish;
    end

endmodule

