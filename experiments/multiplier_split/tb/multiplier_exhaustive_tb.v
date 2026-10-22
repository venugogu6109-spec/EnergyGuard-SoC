`timescale 1ns/1ps

module multiplier_exhaustive_tb;

    reg clk = 0;
    reg rst = 1;
    reg [11:0] voltage_in = 0;
    reg [11:0] current_in = 0;
    wire [23:0] power_out;

    reg [23:0] expected;
    integer a, b;

    power_calculator dut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .power_out(power_out)
    );

    always #5 clk = ~clk;

    initial begin
        @(negedge clk);
        rst = 0;

        for (a = 0; a < 4096; a = a + 1) begin
            for (b = 0; b < 4096; b = b + 1) begin
                voltage_in = a;
                current_in = b;
                expected = a * b;

                @(posedge clk);
                #1;

                if (power_out !== expected) begin
                    $display(
                        "FAIL: voltage=%0d current=%0d expected=%0d actual=%0d",
                        a, b, expected, power_out
                    );
                    $fatal(1, "Multiplier mismatch");
                end

                @(negedge clk);
            end
        end

        $display("PASS: All 16,777,216 multiplier combinations verified.");
        $finish;
    end

endmodule
