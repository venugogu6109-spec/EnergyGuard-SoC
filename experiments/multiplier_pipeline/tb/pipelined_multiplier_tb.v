`timescale 1ns/1ps

module pipelined_multiplier_tb;

    reg clk = 0;
    reg rst = 1;
    reg [11:0] voltage_in = 0;
    reg [11:0] current_in = 0;

    wire [23:0] power_out;

    reg [23:0] expected_pipe [0:1];
    integer i;
    integer errors;

    power_calculator dut (
        .clk(clk),
        .rst(rst),
        .voltage_in(voltage_in),
        .current_in(current_in),
        .power_out(power_out)
    );

    always #5 clk = ~clk;

    initial begin
        errors = 0;
        expected_pipe[0] = 0;
        expected_pipe[1] = 0;

        repeat (2) @(negedge clk);
        rst = 0;

        for (i = 0; i < 10000; i = i + 1) begin
            // Deterministic changing input values, including boundary cases.
            case (i)
                0: begin voltage_in = 0;    current_in = 4095; end
                1: begin voltage_in = 4095; current_in = 4095; end
                2: begin voltage_in = 4095; current_in = 1;    end
                default: begin
                    voltage_in = (i * 137) % 4096;
                    current_in = (i * 251 + 17) % 4096;
                end
            endcase

            expected_pipe[1] = expected_pipe[0];
            expected_pipe[0] = voltage_in * current_in;

            @(posedge clk);
            #1;

            if (power_out !== expected_pipe[1]) begin
                $display(
                    "FAIL cycle=%0d expected=%0d actual=%0d",
                    i, expected_pipe[1], power_out
                );
                errors = errors + 1;
                $fatal(1, "Pipelined multiplier mismatch");
            end

            @(negedge clk);
        end

        if (errors == 0)
            $display("PASS: Pipelined multiplier latency and throughput test.");

        $finish;
    end

endmodule
