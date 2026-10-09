
`timescale 1ns/1ps

module protection_fsm_tb;

reg clk;
reg reset;
reg over_voltage;
reg under_voltage;
reg over_current;
reg over_power;

wire warning;
wire fault_active;
wire trip;
wire [1:0] state;

protection_fsm dut (
    .clk(clk),
    .reset(reset),
    .over_voltage(over_voltage),
    .under_voltage(under_voltage),
    .over_current(over_current),
    .over_power(over_power),
    .warning(warning),
    .fault_active(fault_active),
    .trip(trip),
    .state(state)
);

always #5 clk = ~clk;

task check_state;
    input [1:0] expected_state;
    begin
        @(posedge clk);
        #1;
        if (state !== expected_state) begin
            $display("FAIL: expected state=%b, actual state=%b",
                     expected_state, state);
            $fatal(1, "Protection FSM test failed");
        end else begin
            $display("PASS: state=%b warning=%b fault=%b trip=%b",
                     state, warning, fault_active, trip);
        end
    end
endtask

initial begin
    clk = 0;
    reset = 1;
    over_voltage = 0;
    under_voltage = 0;
    over_current = 0;
    over_power = 0;

    // Reset to NORMAL
    check_state(2'b00);
    reset = 0;

    // Fault appears: NORMAL -> WARNING
    over_voltage = 1;
    check_state(2'b01);

    // Fault persists: WARNING -> FAULT
    check_state(2'b10);

    // Fault persists: FAULT -> TRIP
    check_state(2'b11);

    // TRIP remains active even after fault clears
    over_voltage = 0;
    check_state(2'b11);

    // Reset clears the trip
    reset = 1;
    check_state(2'b00);
    reset = 0;

    // Test a different fault
    over_current = 1;
    check_state(2'b01);

    // Clear fault in WARNING: return to NORMAL
    over_current = 0;
    check_state(2'b00);

    $display("All protection FSM tests passed.");
    $finish;
end

initial begin
    $dumpfile("protection_fsm.vcd");
    $dumpvars(0, protection_fsm_tb);
end

endmodule
