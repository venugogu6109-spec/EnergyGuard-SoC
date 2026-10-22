`timescale 1ns/1ps

module pipelined_multiplier4_check_tb;
    reg clk = 0;
    reg rst = 1;
    reg [11:0] voltage_in = 0;
    reg [11:0] current_in = 0;
    wire [23:0] power_out;

    reg [23:0] expected0 = 0;
    reg [23:0] expected1 = 0;
    integer i;
    integer errors = 0;

    power_calculator dut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .power_out(power_out)
    );

    always #5 clk = ~clk;

    initial begin
        repeat (2) @(negedge clk);
        rst = 0;

        for (i = 0; i < 10000; i = i + 1) begin
            @(negedge clk);
            voltage_in = (i * 37 + 123) % 4096;
            current_in = (i * 91 + 456) % 4096;

            @(posedge clk);
            #1;

            if (power_out !== expected1) begin
                if (errors < 10)
                    $display("FAIL cycle=%0d expected=%0d actual=%0d",
                             i, expected1, power_out);
                errors = errors + 1;
            end

            expected1 = expected0;
            expected0 = voltage_in * current_in;
        end

        repeat (3) begin
            @(negedge clk);
            voltage_in = 0;
            current_in = 0;
            @(posedge clk);
            #1;

            if (power_out !== expected1) begin
                if (errors < 10)
                    $display("FAIL drain expected=%0d actual=%0d",
                             expected1, power_out);
                errors = errors + 1;
            end

            expected1 = expected0;
            expected0 = 0;
        end

        if (errors == 0)
            $display("PASS: All 10000 multiplier tests passed.");
        else
            $display("FAIL: %0d mismatches detected.", errors);

        $finish;
    end
endmodule
