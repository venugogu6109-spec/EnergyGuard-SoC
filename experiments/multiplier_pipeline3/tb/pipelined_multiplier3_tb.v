`timescale 1ns/1ps

module pipelined_multiplier3_tb;
    reg clk = 0;
    reg rst = 1;
    reg [11:0] voltage_in = 0;
    reg [11:0] current_in = 0;
    wire [23:0] power_out;

    reg [23:0] expected_pipe [0:1];
    reg [23:0] expected;
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
        expected_pipe[0] = 0;
        expected_pipe[1] = 0;

        repeat (2) @(negedge clk);
        rst = 0;

        for (i = 0; i < 10000; i = i + 1) begin
            voltage_in = (i * 73 + 19) & 12'hfff;
            current_in = (i * 151 + 7) & 12'hfff;
            expected = voltage_in * current_in;

            @(posedge clk);
            #1;

            if (power_out !== expected_pipe[1]) begin
                if (errors < 10)
                    $display("FAIL cycle=%0d expected=%0d actual=%0d",
                             i, expected_pipe[1], power_out);
                errors = errors + 1;
            end

            expected_pipe[1] = expected_pipe[0];
            expected_pipe[0] = expected;

            @(negedge clk);
        end

        voltage_in = 0;
        current_in = 0;

        repeat (2) begin
            @(posedge clk);
            #1;

            if (power_out !== expected_pipe[1]) begin
                if (errors < 10)
                    $display("FAIL drain expected=%0d actual=%0d",
                             expected_pipe[1], power_out);
                errors = errors + 1;
            end

            expected_pipe[1] = expected_pipe[0];
            expected_pipe[0] = 0;

            @(negedge clk);
        end

        if (errors == 0)
            $display("PASS: All 10000 multiplier tests passed.");
        else
            $display("FAIL: %0d multiplier mismatches.", errors);

        $finish;
    end
endmodule
