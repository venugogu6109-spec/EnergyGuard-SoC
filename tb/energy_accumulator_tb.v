`timescale 1ns/1ps

// EnergyGuard - Energy Accumulator Testbench
// Verifies sequential accumulation of power values

module energy_accumulator_tb;

    reg clk;
    reg rst;

    reg [23:0] power_in;
    wire [31:0] energy_out;

    // Design Under Test
    energy_accumulator uut (
        .clk(clk),
        .rst(rst),
        .power_in(power_in),
        .energy_out(energy_out)
    );

    // 100 MHz clock
    always #5 clk = ~clk;

    initial begin

        $dumpfile("energy_accumulator.vcd");
        $dumpvars(0, energy_accumulator_tb);

        clk = 1'b0;
        rst = 1'b1;
        power_in = 24'd0;

        // Reset
        #10;
        rst = 1'b0;

        // Cycle 1: energy = 1000
        power_in = 24'd1000;
        #10;

        // Cycle 2: energy = 1000 + 2000 = 3000
        power_in = 24'd2000;
        #10;

        // Cycle 3: energy = 3000 + 500 = 3500
        power_in = 24'd500;
        #10;

        // Cycle 4: energy = 3500 + 1500 = 5000
        power_in = 24'd1500;
        #10;

        $display("Energy accumulator verification completed.");
        $display("Final Energy = %d", energy_out);

        $finish;
    end

endmodule
