`timescale 1ns/1ps

// EnergyGuard - Input Register Testbench
// Verifies sequential sampling of voltage and current

module input_register_tb;

    reg clk;
    reg rst;

    reg [11:0] voltage_in;
    reg [11:0] current_in;

    wire [11:0] voltage_reg;
    wire [11:0] current_reg;

    // Instantiate the Design Under Test
    input_register uut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .voltage_reg(voltage_reg),
        .current_reg(current_reg)
    );

    // Clock generation: 10 ns period = 100 MHz
    always #5 clk = ~clk;

    initial begin

        // Enable waveform dumping
        $dumpfile("input_register.vcd");
        $dumpvars(0, input_register_tb);

        // Initial values
        clk = 1'b0;
        rst = 1'b1;
        voltage_in = 12'd0;
        current_in = 12'd0;

        // Hold reset for one clock cycle
        #10;

        rst = 1'b0;

        // Test 1
        voltage_in = 12'd2300;
        current_in = 12'd500;

        #10;

        // Test 2
        voltage_in = 12'd2400;
        current_in = 12'd600;

        #10;

        // Test 3
        voltage_in = 12'd2200;
        current_in = 12'd400;

        #10;

        $display("Input register verification completed.");
        $display("Final Voltage Register = %d", voltage_reg);
        $display("Final Current Register = %d", current_reg);

        $finish;
    end

endmodule
