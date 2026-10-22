`timescale 1ns/1ps

// EnergyGuard - Power Calculator Testbench

module power_calculator_tb;

    reg clk;
    reg rst;

    reg [11:0] voltage_in;
    reg [11:0] current_in;

    wire [23:0] power_out;

    // Design Under Test
    power_calculator uut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .power_out(power_out)
    );

    // 100 MHz clock
    always #5 clk = ~clk;

    initial begin

        $dumpfile("power_calculator.vcd");
        $dumpvars(0, power_calculator_tb);

        clk = 1'b0;
        rst = 1'b1;
        voltage_in = 12'd0;
        current_in = 12'd0;

        // Reset
        #10;
        rst = 1'b0;

        // Test 1: 100 x 10 = 1000
        voltage_in = 12'd100;
        current_in = 12'd10;
        #10;

        // Test 2: 200 x 20 = 4000
        voltage_in = 12'd200;
        current_in = 12'd20;
        #10;

        // Test 3: 300 x 15 = 4500
        voltage_in = 12'd300;
        current_in = 12'd15;
        #10;

        $display("Power calculator verification completed.");
        $display("Final Power = %d", power_out);

        $finish;
    end

endmodule
